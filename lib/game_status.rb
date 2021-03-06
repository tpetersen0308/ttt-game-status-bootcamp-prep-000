# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
                      [0, 1, 2],
                      [3, 4, 5],
                      [6, 7, 8],
                      [0, 3, 6],
                      [1, 4, 7],
                      [2, 5, 8],
                      [0, 4, 8],
                      [2, 4, 6]
                    ]
def won?(board)
  WIN_COMBINATIONS.detect do |combination|
    combination.all? do |position|
      board[position] == "X"
    end ||
    combination.all? do |position|
      board[position] == "O"
    end
  end
end

def full?(board)
  board.all? do |position|
    position == "X" || position == "O"
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  elsif (!full?(board) && won?(board) == false) || won?(board)
    return false
  end
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if won?(board)
    winner = board[won?(board)[0]]
  else won?(board)
  end
end
