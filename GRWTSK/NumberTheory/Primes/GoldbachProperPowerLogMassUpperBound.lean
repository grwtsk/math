/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentMassComposition
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogMassBound
import Mathlib.Tactic

/-!
# Binary-logarithmic finite nonunit proper-power mass bound

This improves the finite exponent-count factor from N to Nat.log2 N
for prime bases dividing q. No global prime-density, prime-counting
error or asymptotic statement follows from this finite inequality.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogMassUpperBound

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentMassComposition
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogMassBound

/-- The finite nonunit proper-power mass has a binary-logarithmic bound. -/
theorem nonunitProperPowerMass_le_log2_primeDivisorLogSum (q N : ℕ) :
    nonunitProperPowerMass q N ≤
      ∑ p ∈ Finset.range (N + 1),
        if Nat.Prime p ∧ p ∣ q then
          (Nat.log2 N : ℝ) * Real.log (p : ℝ)
        else 0 := by
  rw [nonunitProperPowerMass_eq_exponentLogMass_sum]
  apply Finset.sum_le_sum
  intro p hp
  by_cases h : Nat.Prime p ∧ p ∣ q
  · simp only [h, ite_true]
    exact properExponentLogMass_le_log2_log p N h.1
  · simp [h]

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogMassUpperBound
