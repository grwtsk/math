/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.LogDerivedPowerEvaluation
import GRWTSK.NumberTheory.Chebyshev.CanonicalTentRecordEvaluation

set_option autoImplicit false

/-!
# Canonical head evaluation with internally derived endpoint logarithms

This is an adapter into the maintained record evaluator and prime criterion.
It does not introduce another head, multiplicity or tail normalization. Input
coordinate proofs still refer to actual canonical points. No arbitrary external
zero list, byte checker, positive margin or universal coverage is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalTentLogEvaluation

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.LogDerivedPowerEvaluation
open TentSource CountedTentTail SignedTentCorrection CanonicalTentPrimeCriterion
open CanonicalTentRecordEvaluation

noncomputable section

/-- Preserve the dependent canonical index and every actual multiplicity. -/
theorem norm_head_sub_log_evaluated_le (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (inputs : ∀ z : ↥(heightHead T), PointInput x h z.1.1) :
    ‖(∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) -
      evaluatedHead x h T (fun z => (inputs z).toPointEvaluation)‖ ≤
      headError x h T (fun z => (inputs z).toPointEvaluation) :=
  norm_head_sub_evaluated_le x h T hh ha (fun z => (inputs z).toPointEvaluation)

/-- Whole-head evaluation and each endpoint log bound are now supplied internally.
Actual coordinate enclosure, exact membership and strict margin remain. -/
theorem prime_in_square_of_log_inputs (n : ℕ) (hn : 2 ≤ n) (T : ℝ) (hT : 2 ≤ T)
    (inputs : ∀ z : ↥(heightHead T), PointInput (squareCenter n) (squareRadius n) z.1.1)
    (hmargin : 0 < canonicalPrimeMargin n T
      ((evaluatedHead (squareCenter n) (squareRadius n) T
          (fun z => (inputs z).toPointEvaluation)).re +
        headError (squareCenter n) (squareRadius n) T (fun z => (inputs z).toPointEvaluation))
      (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 :=
  prime_in_square_of_records n hn T hT (fun z => (inputs z).toPointEvaluation) hmargin

/-- Accumulation rounding is not made zero by exact rational log generation. -/
theorem prime_in_square_of_rounded_log_inputs (n : ℕ) (hn : 2 ≤ n)
    (T : ℝ) (hT : 2 ≤ T)
    (inputs : ∀ z : ↥(heightHead T), PointInput (squareCenter n) (squareRadius n) z.1.1)
    (rounded : ℂ) (roundingError : ℝ)
    (hround : ‖evaluatedHead (squareCenter n) (squareRadius n) T
      (fun z => (inputs z).toPointEvaluation) - rounded‖ ≤ roundingError)
    (hmargin : 0 < canonicalPrimeMargin n T
      (rounded.re + (headError (squareCenter n) (squareRadius n) T
        (fun z => (inputs z).toPointEvaluation) + roundingError)) (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 :=
  prime_in_square_of_rounded_records n hn T hT
    (fun z => (inputs z).toPointEvaluation) rounded roundingError hround hmargin

end
end GRWTSK.NumberTheory.Chebyshev.CanonicalTentLogEvaluation
