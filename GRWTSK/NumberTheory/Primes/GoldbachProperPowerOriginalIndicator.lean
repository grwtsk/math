/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalFilter
import Mathlib.Tactic

/-!
# Distribute the nonunit indicator into the original finite packet

This removes the outer conditional from the dependent sum. The
subsequent finite triple-product reindexing remains an obligation.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalIndicator

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalFilter
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPacket

noncomputable section

/-- Distribute the nonunit indicator through the original dependent
prime-base and exponent sums without changing their index ranges. -/
theorem originalPacketMass_eq_inner_indicator (q N : ℕ) :
    originalPacketMass q N =
      ∑ n ∈ Finset.range (N + 1),
        ∑ p ∈ Finset.range (n + 1),
          ∑ k ∈ Finset.Icc 2 n,
            if ¬ IsUnit (n : ZMod q) ∧ Nat.Prime p ∧ p ^ k = n then
              Real.log (p : ℝ)
            else 0 := by
  rw [originalPacketMass_eq_indicator_sum]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hunit : ¬ IsUnit (n : ZMod q)
  · simp [hunit]
  · simp [hunit]

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalIndicator
