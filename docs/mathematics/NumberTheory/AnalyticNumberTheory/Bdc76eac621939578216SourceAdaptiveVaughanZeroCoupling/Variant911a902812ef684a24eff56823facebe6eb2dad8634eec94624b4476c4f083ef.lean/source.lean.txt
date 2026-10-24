import SourceAdaptiveVaughanSignedMain
import SourceActualSignedZeroHeadReduction

/-!
Actual arithmetic/zero coupling for the prescribed source family. The arithmetic
main and its signed error stay joint, and all actual zeros, multiplicities and
closed tail-height atoms stay in the zero carrier. The small coupling defect
does not supply a lower head witness or an upper arithmetic witness.
Direction, selection, corrections and evaluation: grwtsk contributors.
Quantitative source matching and focused scratch proof: OpenAI Codex assistance.
-/
set_option autoImplicit false
noncomputable section
namespace RH16AdaptiveVaughanZeroCoupling
open RH16AdaptiveVaughan
open FormalResearch.RiemannHypothesis
open SourcePairing SourceActualSignedZeroHeadReduction SourceActualFullZeroContour
open SourceActualZeroTailBudget SourceActualZeroMovingTail SourceActualBumpMovingHeight
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

/-- A centered joint arithmetic block defined from the independent main and signed error. -/
def adaptiveCenteredJoint (A : ℝ) : ℝ :=
  adaptiveIndependentMain A + adaptiveSignedSamplingError A - archimedeanMultiplier 0 / 2

theorem adaptiveCenteredJoint_eq_residual (A : ℝ) (hA : 1 ≤ A) :
    adaptiveCenteredJoint A = mertensResidual A - archimedeanMultiplier 0 / 2 := by
  unfold adaptiveCenteredJoint
  rw [actual_residual_eq_adaptiveIndependentMain_add_signedError A hA]

/-- Exact original arithmetic/zero comparison; neither side has been estimated separately. -/
theorem actual_signed_head_add_twice_joint_eq (A : ℝ) (hA : 1 ≤ A) (T : ℝ) :
    (actualZeroHeightHead A T).re + 2 * adaptiveCenteredJoint A =
      archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0 -
        (actualZeroHeightTail A T).re := by
  have h := actualResidual_sub_signedHead_eq hA T
  rw [adaptiveCenteredJoint_eq_residual A hA]
  linarith

/-- A controlled defect between the true growing zero head and the joint arithmetic row. -/
theorem actual_moving_head_joint_two_sided :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ c A : ℝ, 1 < c → actualZeroMovingRadius c ≤ A →
      -actualZeroMovingEnvelope A0 c A ≤
        (actualZeroHeightHead A (actualBumpMovingHeight A c)).re +
          2 * adaptiveCenteredJoint A ∧
      (actualZeroHeightHead A (actualBumpMovingHeight A c)).re +
          2 * adaptiveCenteredJoint A ≤
        (18 * (162826 / 7623 : ℝ)) / A^2 + actualZeroMovingEnvelope A0 c A := by
  obtain ⟨A0, hA0, hb⟩ := actualResidual_movingHead_two_sided
  refine ⟨A0, hA0, fun c A hc hA => ?_⟩
  have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
  have hh := hb c A hc hA
  rw [adaptiveCenteredJoint_eq_residual A hA1]
  have he : (18 * (162826 / 7623 : ℝ)) / (2*A^2) =
      ((18 * (162826 / 7623 : ℝ)) / A^2) / 2 := by ring
  rw [he] at hh
  constructor <;> linarith [hh.1, hh.2]

#print axioms adaptiveCenteredJoint
#print axioms adaptiveCenteredJoint_eq_residual
#print axioms actual_signed_head_add_twice_joint_eq
#print axioms actual_moving_head_joint_two_sided
end RH16AdaptiveVaughanZeroCoupling
