import scratch.common_mean_stieltjes_20261004.CountBudget
import scratch.common_mean_20261004.FiveModeFiniteExternal
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
Final finite literal-source theorem with only the two published external inputs
left explicit. Actual multiplicity counting, strict Stieltjes convergence,
endpoint subtraction, the corrected count-integral budget and source adapters
are proved; the literature inputs have no accepted Lean instances in this lane.
The result is finite, conditional, and does not supply an all-scale arithmetic
witness or an unconditional RH theorem.
Originating direction, theorem selection, corrections and evaluation:
grwtsk contributors. Lean construction assistance: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace CommonMeanStieltjes
open CommonMeanScratch
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- Complete-height and literal corrected counting inputs are named hypotheses;
all adapter and rational-bound premises of the finite source result are proved. -/
theorem actual_finite_bounds_with_external_literature_inputs
    (hverified : CompletePositiveVerifiedHeight 3000175332800)
    (hBW : CorrectedBellottiWongCount) :
    (∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      -(1/500000 : ℝ) ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) ∧
      EstimateMertensResidual.mertensResidual A ≤
        sourceA0/2 + 195/A^2 + (1/1000000 : ℝ)) ∧
    (∀ A : ℝ, 10 ≤ A → A ≤ 160 →
      EstimateMertensResidual.mertensResidual A < 0) := by
  apply actual_finite_bounds_of_verified_height_and_sixth_tail hverified
    (actual_positive_sixth_summable 3000000000000 (by norm_num))
  exact actual_positive_sixth_count_bound 3000000000000
    (Real.exp_one_lt_three.le.trans (by norm_num)) hBW

end CommonMeanStieltjes
