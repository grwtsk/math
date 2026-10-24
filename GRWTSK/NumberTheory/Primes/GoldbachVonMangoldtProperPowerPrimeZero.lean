/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtProperPowerValue
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt

/-!
# Proper-prime-power prime-only weight vanishes

A natural power with exponent at least two is not prime.
The prime-only logarithmic weight therefore vanishes; the canonical
von Mangoldt weight remains log p for prime p.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtProperPowerPrimeZero

open GRWTSK.NumberTheory.Primes.GoldbachWeighted

/-- A proper power contributes zero to the prime-only weight. -/
theorem primeLogWeight_prime_pow_eq_zero (p k : ℕ)
    (hk : 2 ≤ k) :
    primeLogWeight (p ^ k) = 0 := by
  unfold primeLogWeight
  simp [Nat.Prime.not_prime_pow hk]

/-- Canonical von Mangoldt equals log p on a positive prime power. -/
theorem vonMangoldt_prime_pow_eq_log (p k : ℕ)
    (hp : Nat.Prime p) (hk : 2 ≤ k) :
    ArithmeticFunction.vonMangoldt (p ^ k) = Real.log (p : ℝ) := by
  rw [ArithmeticFunction.vonMangoldt_apply_pow (by omega)]
  exact ArithmeticFunction.vonMangoldt_apply_prime hp

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtProperPowerPrimeZero
