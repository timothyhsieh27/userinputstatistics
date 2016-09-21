def get_numbers
  @numbers = []
  loop do
    puts "Please enter a number: "
    input = gets.chomp
    if input == ""
        break
    elsif input.to_s == "0"
      puts "You entered 0, please enter another number. If finished, press enter."
      count_array << input.to_f
    elsif input.to_f == 0
      puts "That is not a number! Program terminating."
      break
    else
      puts "You entered #{input}, please enter another number. If finished, press enter."
      @numbers << input.to_f
    end
  end
end

def get_strings
  @strings = []
  loop do
    puts "Please enter a word: "
    input = gets.chomp
    if input == ""
        break
    elsif input.to_s == "0"
      puts "You entered a non-word. Program terminating."
      break
    elsif input.to_f > 0 || input.to_f < 0
      puts "You entered a non-word. Program terminating."
      break
    else
      puts "You entered #{input}, please enter another word. If finished, press enter."
      @strings << input
    end
  end
  puts @strings.join("")
end

def number_results
  @sum = 0
  @numbers.each do |x| @sum += x end
  puts "The sum of your answers is #{@sum}."
  puts "The number of answers you put is #{@numbers.count}."
  puts "The average of your answers is #{@sum / @numbers.count}."
end

def main
  mode_select
end

def mode_select
  loop do
    puts "Please enter 'word' or 'number'. Every subsequent answer MUST match the selected data type (word or number) of your first answer: "
    input = gets.chomp.downcase
    if input == "number"
      get_numbers
      number_results
      break
    elsif input == "word"
      get_strings
      break
    else
      puts "Invalid input: please select either 'word' or 'number'."
    end
  end
end

class Stats
  def initialize
    @numbers = numbers
    @sum = sum
    @strings = strings
  end
end

main if __FILE__ == $PROGRAM_NAME
