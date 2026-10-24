/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLog
import Mathlib.Tactic

/-!
# Nonunit proper-power mass bound via truncated prime-divisor log weight

The finite prime-divisor logarithmic weight packages the exact sum
appearing in the logarithmic exponent-count bound. No asymptotic
prime-distribution consequence is claimed.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorMassBound

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerLogMassUpperBound
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLog

/-- Finite nonunit proper-power mass bounded by log2 N times D(q,N). -/
theorem nonunitProperPowerMass_le_log2_mul_primeDivisorLogMass (q N : ℕ) :
    nonunitProperPowerMass q N ≤
      (Nat.log2 N : ℝ) * primeDivisorLogMass q N := by
  calc
    nonunitProperPowerMass q N ≤
        ∑ p ∈ Finset.range (N + 1),
          if Nat.Prime p ∧ p ∣ q then
            (Nat.log2 N : ℝ) * Real.log (p : ℝ)
          else 0 :=
      nonunitProperPowerMass_le_log2_primeDivisorLogSum q N
    _ = (Nat.log2 N : ℝ) * primeDivisorLogMass q N := by
      unfold primeDivisorLogMass
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro p hp
      split_ifs <;> simp

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorMassBound
