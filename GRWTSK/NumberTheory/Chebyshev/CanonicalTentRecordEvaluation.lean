/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.TentKernelEnclosure
import GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCriterion

set_option autoImplicit false

/-!
# Finite canonical records supply the head evaluation premise

Records are indexed by the SAME complete canonical finite head. Analytic
multiplicities are read from that source, not supplied record metadata. The
per-record kernel enclosures are derived from coordinate balls, real-log
input enclosures, finite polynomials and a positive center denominator.
This is not a zero enumerator, a serialized certificate checker, or a proof
of any strict margin. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalTentRecordEvaluation

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.TentKernelEnclosure
open TentSource CountedTentTail SignedTentCorrection CanonicalTentPrimeCriterion

noncomputable section

/-- The index is the complete head itself, with no arbitrary duplicate record keys. -/
def evaluatedHead (x h T : ℝ)
    (records : ∀ z : ↥(heightHead T), PointEvaluation x h z.1.1) : ℂ := by
  classical
  exact ∑ z : ↥(heightHead T), (multiplicity z.1 : ℂ) * (records z).value

/-- Each actual multiplicity scales its whole coordinate-plus-evaluation error. -/
def headError (x h T : ℝ)
    (records : ∀ z : ↥(heightHead T), PointEvaluation x h z.1.1) : ℝ := by
  classical
  exact ∑ z : ↥(heightHead T), (multiplicity z.1 : ℝ) * (records z).error

/-- Finite propagation is for the source-identical family, not a sampled surrogate. -/
theorem norm_head_sub_evaluated_le (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (records : ∀ z : ↥(heightHead T), PointEvaluation x h z.1.1) :
    ‖(∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) -
      evaluatedHead x h T records‖ ≤ headError x h T records := by
  classical
  have hs : (∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) =
      ∑ z : ↥(heightHead T), (multiplicity z.1 : ℂ) * tentKernel x h z.1.1 := by
    rw [Finset.sum_coe_sort]
  rw [hs, evaluatedHead, ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ z : ↥(heightHead T), ‖(multiplicity z.1 : ℂ) * tentKernel x h z.1.1 -
        (multiplicity z.1 : ℂ) * (records z).value‖ := norm_sum_le _ _
    _ ≤ _ := by
      unfold headError
      apply Finset.sum_le_sum
      intro z _
      rw [← mul_sub, norm_mul, Complex.norm_natCast]
      exact mul_le_mul_of_nonneg_left
        ((records z).sound hh ha (point_mem_strip z.1).2.le) (Nat.cast_nonneg _)

theorem headError_nonneg (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (records : ∀ z : ↥(heightHead T), PointEvaluation x h z.1.1) :
    0 ≤ headError x h T records :=
  (norm_nonneg _).trans (norm_head_sub_evaluated_le x h T hh ha records)

/-- A distinct accumulation or serialization rounding allowance is added once. -/
theorem norm_head_sub_rounded_le (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (records : ∀ z : ↥(heightHead T), PointEvaluation x h z.1.1)
    (rounded : ℂ) (roundingError : ℝ)
    (hround : ‖evaluatedHead x h T records - rounded‖ ≤ roundingError) :
    ‖(∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) - rounded‖ ≤
      headError x h T records + roundingError := by
  calc
    _ = ‖((∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) -
        evaluatedHead x h T records) + (evaluatedHead x h T records - rounded)‖ := by
      congr 1
      ring
    _ ≤ _ := (norm_add_le _ _).trans
      (add_le_add (norm_head_sub_evaluated_le x h T hh ha records) hround)

/-- Only a real upper enclosure is needed by the prime-margin consumer. -/
theorem head_re_upper (n : ℕ) (hn : 2 ≤ n) (T : ℝ)
    (records : ∀ z : ↥(heightHead T), PointEvaluation (squareCenter n) (squareRadius n) z.1.1) :
    (∑ z ∈ heightHead T, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1).re ≤
      (evaluatedHead (squareCenter n) (squareRadius n) T records).re +
        headError (squareCenter n) (squareRadius n) T records :=
  head_re_le_of_norm_enclosure n T _ _
    (norm_head_sub_evaluated_le _ _ T (squareRadius_pos n) (square_tent_domain n hn) records)

/-- The global finite-head norm enclosure is now DERIVED from primitive records.
Zero identity/completeness, primitive log enclosures and strict margin are not manufactured. -/
theorem prime_in_square_of_records (n : ℕ) (hn : 2 ≤ n) (T : ℝ) (hT : 2 ≤ T)
    (records : ∀ z : ↥(heightHead T), PointEvaluation (squareCenter n) (squareRadius n) z.1.1)
    (hmargin : 0 < canonicalPrimeMargin n T
      ((evaluatedHead (squareCenter n) (squareRadius n) T records).re +
        headError (squareCenter n) (squareRadius n) T records) (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 :=
  prime_in_square_of_canonical_tent n hn T hT _ _
    (norm_head_sub_evaluated_le _ _ T (squareRadius_pos n) (square_tent_domain n hn) records)
    hmargin

/-- Separate final accumulation error; the coefficient-kappa tail remains unchanged. -/
theorem prime_in_square_of_rounded_records (n : ℕ) (hn : 2 ≤ n) (T : ℝ) (hT : 2 ≤ T)
    (records : ∀ z : ↥(heightHead T), PointEvaluation (squareCenter n) (squareRadius n) z.1.1)
    (rounded : ℂ) (roundingError : ℝ)
    (hround : ‖evaluatedHead (squareCenter n) (squareRadius n) T records - rounded‖ ≤ roundingError)
    (hmargin : 0 < canonicalPrimeMargin n T
      (rounded.re + (headError (squareCenter n) (squareRadius n) T records + roundingError))
      (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 :=
  prime_in_square_of_canonical_tent n hn T hT _ _
    (norm_head_sub_rounded_le _ _ T (squareRadius_pos n) (square_tent_domain n hn)
      records rounded roundingError hround) hmargin

end
end GRWTSK.NumberTheory.Chebyshev.CanonicalTentRecordEvaluation
