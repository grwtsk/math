/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPairFilter
import Mathlib.Tactic

/-!
# Fixed-n nested prime-power sum to filtered pair sum

The proof uses finite product summation and a support filter.
No uniqueness of prime-power representations is assumed.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPairSum

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPairFilter

noncomputable section

/-- Exact fixed-n finite sum normalization, retaining the nonunit
condition and every represented (p,k) pair. -/
theorem nested_eq_pairSupport_sum (q n : ℕ) :
    (∑ p ∈ Finset.range (n + 1),
      ∑ k ∈ Finset.Icc 2 n,
        if ¬ IsUnit (n : ZMod q) ∧ Nat.Prime p ∧ p ^ k = n then
          Real.log (p : ℝ) else 0) =
    ∑ t ∈ pairSupportAt n,
      if ¬ IsUnit (n : ZMod q) then
        Real.log (t.1 : ℝ) else 0 := by
  classical
  unfold pairSupportAt
  rw [Finset.sum_filter]
  rw [Finset.sum_product]
  apply Finset.sum_congr rfl
  intro p hp
  apply Finset.sum_congr rfl
  intro k hk
  by_cases hsupport : Nat.Prime p ∧ p ^ k = n
  · simp [hsupport]
  · simp [hsupport]

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPairSum
