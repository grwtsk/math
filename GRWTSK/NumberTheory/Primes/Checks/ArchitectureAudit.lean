import GRWTSK.NumberTheory.Primes.LeastPrime

-- Exact types frozen independently in the implementation packet.
example : Nat.Prime 2 ∧ ∀ p : ℕ, Nat.Prime p → 2 ≤ p :=
  GRWTSK.NumberTheory.two_is_first_prime
example (q : ℕ) (hq : Nat.Prime q)
    (hmin : ∀ p : ℕ, Nat.Prime p → q ≤ p) : q = 2 :=
  GRWTSK.NumberTheory.Primes.least_prime_eq_two hq hmin
example : (2 : ℕ) = 2 :=
  GRWTSK.NumberTheory.Primes.least_prime_eq_two Nat.prime_two
    (fun p hp => GRWTSK.NumberTheory.two_is_first_prime.2 p hp)
example (h : ∀ p : ℕ, Nat.Prime p → 3 ≤ p) : False := by
  exact (by decide : ¬ (3 ≤ 2)) (h 2 Nat.prime_two)
#print axioms GRWTSK.NumberTheory.two_is_first_prime
#print axioms GRWTSK.NumberTheory.Primes.least_prime_eq_two
