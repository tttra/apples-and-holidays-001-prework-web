require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |occasion, things|
    things<<supply
  end
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
    holiday_hash[:spring][:memorial_day]<<supply
    holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
     holiday_hash[:"#{season}"][:"#{holiday_name}"] = supply_array
     holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

#def all_supplies_in_holidays(holiday_hash)
#  holiday_hash.each do |season, holiday|
#    puts "#{season.capitalize}:"
#    holiday.each do |name, items|
#      word_by_word = name.to_s.split("_")
#      word_by_word.collect {|word| word.capitalize!}
#      holiday_name = word_by_word.join(" ")
#      puts "  #{holiday_name}: #{items.join(", ")}"
#    end
#  end 
#end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |name, items|
      puts "  #{name.to_s.split("_").collect {|word| word.capitalize!}.join(" ")}: #{items.join(", ")}"
    end
  end 
end

def all_holidays_with_bbq(holiday_hash)
s_more = Array.new
  holiday_hash.each do |season, holiday_name|
    holiday_name.each do |name, item|
      if item.include?("BBQ")
        s_more<<name
      end
    end
  end
  s_more
end

#def all_holidays_with_bbq(holiday_hash)
#  holiday_hash.collect do |season, holiday_name|
#    holiday_name.collect do |name, item|
#      if item.include?("BBQ")
#        name
#      end
#    end
#  end.flatten.compact
#end






