import SourceActualCriticalZeroHead
import SourceActualSignedZeroHeadReduction

/-!
The original residual retains its exact critical/off-axis finite head split.
Dropping the genuine nonnegative critical contribution gives an explicit upper
bound and an eventual arbitrarily small upper correction. The actual off-axis
weights and multiplicities remain signed. No lower bound on that head is assumed
or supplied, and no Estimate witness is claimed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualOffAxisResidualUpper
open MeasureTheory Filter
open scoped Topology
open SourcePairing SourceActualCriticalZeroHead SourceActualSignedZeroHeadReduction
open SourceActualZeroTailBudget SourceActualZeroMovingTail SourceActualBumpMovingHeight
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual
noncomputable section

/-- The original residual's exact off-axis correction keeps the whole critical contribution. -/
theorem actualResidual_sub_offAxisHead_eq {A : ℝ} (hA : 1 ≤ A) (R : ℝ) :
    mertensResidual A - (archimedeanMultiplier 0 -
      (actualOffAxisZeroHeightHead A R).re) / 2 =
      (archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0) / 2 -
        (actualZeroHeightTail A R).re / 2 - (actualCriticalZeroHeightHead A R).re / 2 := by
  have hr := actualResidual_sub_signedHead_eq hA R
  rw [actualZeroHeightHead_re_eq_critical_add_offAxis] at hr
  linarith

/-- A quantitative upper bound for the original residual retains every actual off-axis zero. -/
theorem actualResidual_movingOffAxisHead_upper :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ c A : ℝ, 1 < c → actualZeroMovingRadius c ≤ A →
      mertensResidual A ≤
        (archimedeanMultiplier 0 -
          (actualOffAxisZeroHeightHead A (actualBumpMovingHeight A c)).re) / 2 +
        (18 * (162826 / 7623 : ℝ)) / (2 * A^2) +
        actualZeroMovingEnvelope A0 c A / 2 := by
  obtain ⟨A0,hA0,hbound⟩ := actualResidual_movingHead_two_sided
  refine ⟨A0,hA0,fun c A hc hA => ?_⟩
  have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
  have hh := (hbound c A hc hA).2
  have hp := actualOffAxisZeroHeightHead_re_le_full A (actualBumpMovingHeight A c) hA1
  linarith

/-- At every fixed c greater than one the actual off-axis upper correction is eventually small. -/
theorem actualResidual_movingOffAxisHead_eventual_upper (c : ℝ) (hc : 1 < c)
    (ε : ℝ) (hε : 0 < ε) :
    ∀ᶠ A : ℝ in atTop, mertensResidual A ≤
      (archimedeanMultiplier 0 -
        (actualOffAxisZeroHeightHead A (actualBumpMovingHeight A c)).re) / 2 + ε := by
  have he := (actualResidual_movingHead_signed_error_tendsto c hc).eventually
    (gt_mem_nhds hε)
  filter_upwards [he, eventually_ge_atTop (1 : ℝ)] with A hA hA1
  have hp := actualOffAxisZeroHeightHead_re_le_full A (actualBumpMovingHeight A c) hA1
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualOffAxisResidualUpper
