require 'pry'

class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  # your code here
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if self.status != "complete"
      if self.sender.balance >= amount
        self.sender.balance -= amount
        self.receiver.balance += amount
        self.status = "complete"
      else
        "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
  end

end
