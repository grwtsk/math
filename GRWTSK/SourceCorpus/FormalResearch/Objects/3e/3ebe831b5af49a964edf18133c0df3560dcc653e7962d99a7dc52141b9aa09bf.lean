import Folder.Rebuild.NumberTheory.DivisorSum
import Mathlib.NumberTheory.Divisors

/-!
# Folder.Rebuild.NumberTheory.SigmaTau

Divisor-counting and divisor-sum functions for the rebuild branch.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

open scoped BigOperators

def tau : ArithFn Nat :=
  fun n => (Nat.divisors n).card

def sigma : ArithFn Nat :=
  fun n => ∑ d ∈ Nat.divisors n, d

theorem tau_one : tau 1 = 1 := by
  simp [tau]

theorem sigma_one : sigma 1 = 1 := by
  simp [sigma]

theorem tau_prime
    {p : Nat}
    (hp : Nat.Prime p) :
    tau p = 2 := by
  rw [tau, hp.divisors]
  exact Finset.card_pair (Ne.symm hp.ne_one)

theorem sigma_prime
    {p : Nat}
    (hp : Nat.Prime p) :
    sigma p = p + 1 := by
  rw [sigma, hp.divisors, Finset.sum_pair (Ne.symm hp.ne_one)]
  rw [add_comm]

theorem tau_prime_power
    {p k : Nat}
    (hp : Nat.Prime p) :
    tau (p ^ k) = k + 1 := by
  simp [tau, Nat.divisors_prime_pow hp]

theorem sigma_prime_power
    {p k : Nat}
    (hp : Nat.Prime p) :
    sigma (p ^ k) = ∑ j ∈ Finset.range (k + 1), p ^ j := by
  simp [sigma, Nat.sum_divisors_prime_pow hp]

end NumberTheory
end Rebuild
end Folder
