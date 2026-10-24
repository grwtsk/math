/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentMassComposition
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentLogBound
import Mathlib.Tactic

/-!
# Finite upper bound for nonunit proper-power logarithmic mass

This combines the exact finite prime-base aggregation with the
per-prime exponent logarithmic mass bound. No prime-density or
asymptotic estimate is asserted.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerMassUpperBound

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentMassComposition
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentLogBound

/-- The nonunit proper-power mass is bounded by N times the
logarithmic mass of eligible prime divisors. -/
theorem nonunitProperPowerMass_le_primeDivisorLogSum (q N : ℕ) :
    nonunitProperPowerMass q N ≤
      ∑ p ∈ Finset.range (N + 1),
        if Nat.Prime p ∧ p ∣ q then
          (N : ℝ) * Real.log (p : ℝ)
        else 0 := by
  rw [nonunitProperPowerMass_eq_exponentLogMass_sum]
  apply Finset.sum_le_sum
  intro p hp
  by_cases h : Nat.Prime p ∧ p ∣ q
  · simp only [h, ite_true]
    exact properExponentLogMass_le_N_log p N h.1
  · simp [h]

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerMassUpperBound
