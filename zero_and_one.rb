# frozen_string_literal: true

# Task
# You have a string of length n consisting of zeroes and ones.
# Consider the following operation: Choose any two adjacent
# positions in the string
# If one of them is 0, and the other one is 1,
# remove these two digits from the string.
# What's the smallest length string that you can get after
# applying this operation multiple times?
#
# Example
# For s = "01010", the result should be 1.
#
# "01010" -> " 010" -> " 0"
#
# For s = "110100", the result should be 2.
#
# "110100" -> "1 100" -> "1 0"
#
# Note that after the remove operation, the rest digits are not together ;-)
#
# Input/Output
# [input] string s
#
# The initial string.
#
# [output] an integer
#
# The minimum length of the string that may remain after applying the
# described operations several times.

def zero_and_one(str)
  str = str.gsub(/01/, '')
  str = str.gsub(/10/, '')
  str.length
end

puts 'TEST 1'
puts zero_and_one('01010') # should equal 1
puts 'TEST 2'
puts zero_and_one('11101111') # should qual 6
puts 'TEST 3'
puts zero_and_one('01') # should equal 0
puts 'TEST 4'
puts zero_and_one('10') # should equal 0
puts 'TEST 5'
puts zero_and_one('110110') # should equal 2
puts 'TEST 6'
puts zero_and_one('110100') # should equal 2
