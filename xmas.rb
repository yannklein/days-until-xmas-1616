# 🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️
# ##########  DAYS BEFORE XMAS ###########
# 🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️


# Write a method which 
# returns the number of days until next Xmas
# using TDD (Test driven development)

# Opt1: return number of days for any date!
# Opt2: make it work after Dec 25th


#        ____________   
#  [IN] | (params)   |  [OUT]
# ----->|   method   |----------> 
#  args |____________| returned
#                       value 

# Method signature (params? returned value?):
# Method name: days_before_xmas
# params: none, or, for Opt1: the date selected (Date)
# returned: number of days (integer)
require "date"

# Code
def days_before_xmas(some_date = Date.today)
  # today = Date.today
  xmas = Date.new(2024, 12, 25)
  diff = xmas - some_date
  return diff.to_i
end

# def days_before_xmas(some_date = Date.today)
#   (Date.new(2024, 12, 25) - some_date).to_i
# end

# Tests
# consider that the method exists
puts "-- Test 1 ⛄️ -- "
puts "should return an Integer"
puts "Result:"
days = days_before_xmas
puts days.class == Integer

puts "-- Test 2 🎄 -- "
puts "should return 272 (for today's date)"
puts "Result:"
puts days_before_xmas == 272

puts "-- Test 3 🎅 -- "
puts "should return 1 for 2024/12/24"
puts "Result:"
puts days_before_xmas(Date.new(2024, 12, 24)) == 1

puts "-- Test 4 🎅 -- "
puts "should return 364 for 2024/12/26"
puts "Result:"
puts days_before_xmas(Date.new(2024, 12, 26)) == 364