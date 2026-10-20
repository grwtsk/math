/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.ScaledLogPowerEvaluation
import GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCriterion

set_option autoImplicit false

/-!
# Canonical finite heads with range-reduced endpoint powers

Only the evaluation algorithm changes. The complete canonical head, actual
analytic multiplicities, scaled omitted tail, signed correction, proper-power
subtraction and strict prime margin are unchanged. The endpoint algorithm uses
EXACT squaring; the generic rounded-chain lemma does not silently certify
machine arithmetic here. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalTentScaledEvaluation

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.Analysis.Complex.ScaledLogPowerEvaluation
open TentSource CountedTentTail SignedTentCorrection CanonicalTentPrimeCriterion

noncomputable section

/-- New algorithmic values on the original source index, not a new zero family. -/
def scaledHead (x h T : ℝ)
    (inputs : ∀ z : ↥(heightHead T), PointInput x h z.1.1) : ℂ := by
  classical
  exact ∑ z : ↥(heightHead T), (multiplicity z.1 : ℂ) * (inputs z).value

def scaledHeadError (x h T : ℝ)
    (inputs : ∀ z : ↥(heightHead T), PointInput x h z.1.1) : ℝ := by
  classical
  exact ∑ z : ↥(heightHead T), (multiplicity z.1 : ℝ) * (inputs z).error

/-- Each multiplicity multiplies its WHOLE propagated endpoint and coordinate error. -/
theorem norm_head_sub_scaled_le (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (inputs : ∀ z : ↥(heightHead T), PointInput x h z.1.1) :
    ‖(∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) -
      scaledHead x h T inputs‖ ≤ scaledHeadError x h T inputs := by
  classical
  have hs : (∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) =
      ∑ z : ↥(heightHead T), (multiplicity z.1 : ℂ) * tentKernel x h z.1.1 := by
    rw [Finset.sum_coe_sort]
  rw [hs, scaledHead, ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ z : ↥(heightHead T), ‖(multiplicity z.1 : ℂ) * tentKernel x h z.1.1 -
        (multiplicity z.1 : ℂ) * (inputs z).value‖ := norm_sum_le _ _
    _ ≤ _ := by
      unfold scaledHeadError
      apply Finset.sum_le_sum
      intro z _
      rw [← mul_sub, norm_mul, Complex.norm_natCast]
      exact mul_le_mul_of_nonneg_left
        ((inputs z).sound hh ha (point_mem_strip z.1).2.le) (Nat.cast_nonneg _)

theorem scaledHeadError_nonneg (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (inputs : ∀ z : ↥(heightHead T), PointInput x h z.1.1) :
    0 ≤ scaledHeadError x h T inputs :=
  (norm_nonneg _).trans (norm_head_sub_scaled_le x h T hh ha inputs)

/-- Final accumulation error is separate from the squared seed error. -/
theorem norm_head_sub_rounded_le (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (inputs : ∀ z : ↥(heightHead T), PointInput x h z.1.1)
    (rounded : ℂ) (roundingError : ℝ)
    (hround : ‖scaledHead x h T inputs - rounded‖ ≤ roundingError) :
    ‖(∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) - rounded‖ ≤
      scaledHeadError x h T inputs + roundingError := by
  calc
    _ = ‖((∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) -
        scaledHead x h T inputs) + (scaledHead x h T inputs - rounded)‖ := by
      congr 1
      ring
    _ ≤ _ := (norm_add_le _ _).trans
      (add_le_add (norm_head_sub_scaled_le x h T hh ha inputs) hround)

/-- No supplied full-head enclosure; coordinate proofs and the strict margin remain. -/
theorem prime_in_square_of_scaled_inputs (n : ℕ) (hn : 2 ≤ n) (T : ℝ) (hT : 2 ≤ T)
    (inputs : ∀ z : ↥(heightHead T), PointInput (squareCenter n) (squareRadius n) z.1.1)
    (hmargin : 0 < canonicalPrimeMargin n T
      ((scaledHead (squareCenter n) (squareRadius n) T inputs).re +
        scaledHeadError (squareCenter n) (squareRadius n) T inputs) (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 :=
  prime_in_square_of_canonical_tent n hn T hT _ _
    (norm_head_sub_scaled_le _ _ T (squareRadius_pos n) (square_tent_domain n hn) inputs)
    hmargin

theorem prime_in_square_of_rounded_scaled_inputs (n : ℕ) (hn : 2 ≤ n)
    (T : ℝ) (hT : 2 ≤ T)
    (inputs : ∀ z : ↥(heightHead T), PointInput (squareCenter n) (squareRadius n) z.1.1)
    (rounded : ℂ) (roundingError : ℝ)
    (hround : ‖scaledHead (squareCenter n) (squareRadius n) T inputs - rounded‖ ≤ roundingError)
    (hmargin : 0 < canonicalPrimeMargin n T
      (rounded.re + (scaledHeadError (squareCenter n) (squareRadius n) T inputs + roundingError))
      (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 :=
  prime_in_square_of_canonical_tent n hn T hT _ _
    (norm_head_sub_rounded_le _ _ T (squareRadius_pos n) (square_tent_domain n hn)
      inputs rounded roundingError hround) hmargin

end
end GRWTSK.NumberTheory.Chebyshev.CanonicalTentScaledEvaluation
