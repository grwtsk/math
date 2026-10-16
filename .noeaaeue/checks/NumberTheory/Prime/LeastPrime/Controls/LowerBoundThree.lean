import GRWTSK.NumberTheory.FirstPrime
example : ∀ p : ℕ, Nat.Prime p → 3 ≤ p := by
  intro p hp
  exact GRWTSK.NumberTheory.two_is_first_prime.2 p hp
