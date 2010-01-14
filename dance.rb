#

class Ginger
  ARMS = [" /|\\ ", "--|--", " \\|/ ", " |/ ", "  \\|", "  // ", " \\\\ ", ]
  LEGS = [" / \\ ", "-- --", " | | "]

  def random_legs
    LEGS[rand(LEGS.size)]
  end

  def random_arms
    ARMS[rand(ARMS.size)]
  end

  def head
    "  O  "
  end

  def abdomen
    "  |  "
  end

  def dance!
    puts "\e[H\e[2J" # Clears console in linux. Windows users: You're on your own.
    puts head
    puts random_arms
    puts abdomen
    puts random_legs
  end
end


ginger = Ginger.new

100.times { ginger.dance!; sleep 0.5 }


# These were the original diagrams to try and architect this elegent
# solution in my mind. Other poses were developped because I mistakenly
# used single backslashes instead of doubles, and it looked kinda cool.

#   O
#  /|\
#   |
#  / \

#   O
# --|--
#   |
#  | |

#   O
#  \|/
#   |
# -- --


