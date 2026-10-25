/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogMassUpperBound
import Mathlib.Tactic

/-!
# Truncated prime-divisor logarithmic weight

A finite arithmetic function with explicit modulus and cutoff.
For q=0 every prime up to N contributes; for q=1 none contributes.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLog

open scoped BigOperators

/-- Logarithmic weight of prime divisors of q up to N. -/
noncomputable def primeDivisorLogMass (q N : ℕ) : ℝ :=
  ∑ p ∈ Finset.range (N + 1),
    if Nat.Prime p ∧ p ∣ q then Real.log (p : ℝ) else 0

/-- The truncated prime-divisor logarithmic weight of one vanishes. -/
theorem primeDivisorLogMass_one (N : ℕ) :
    primeDivisorLogMass 1 N = 0 := by
  classical
  unfold primeDivisorLogMass
  apply Finset.sum_eq_zero
  intro p hp
  by_cases hprime : Nat.Prime p
  · have hnot : ¬ p ∣ 1 := by
      intro h
      have hp1 : p = 1 := Nat.dvd_one.mp h
      exact hprime.ne_one hp1
    simp [hnot]
  · simp [hprime]

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLog
