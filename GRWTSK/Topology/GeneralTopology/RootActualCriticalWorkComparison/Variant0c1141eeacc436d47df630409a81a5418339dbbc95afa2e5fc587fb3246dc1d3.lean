import RootActualCriticalUpperColumnEstimate
import ActualSupportEdgeLowerTrace
import SourceJointWorkConsumer

/-!
The actual work differs from its full critical adjusted signed interior only
by the two proved vanishing boundary traces. The original baseline, lower
error head, deleted diagonal and independently fixed main remain literal.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualCriticalWorkComparison
open MeasureTheory Filter
open RootActualCriticalUpperColumnEstimate RootActualCriticalColumnTransfer
open ActualSupportEdgeLowerTrace SourceJointMangoldtWork SourceJointWorkConsumer
open SourceStrictColumnInterior SourceVaughanHankel SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensResidual
noncomputable section

/-- The fixed quantitative cost of the complete lower boundary. -/
def actualCriticalLowerColumnConstant : ℝ :=
  25728 * (Real.log 4 + 4 + Real.log 2)

/-- The remaining signed expression retains every original compensation term. -/
def actualCriticalRetainedRemainder (A : ℝ) : ℝ :=
  (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
    jointMangoldtTestProfile A t) -
  SourceMangoldtAbel.mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
    jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) +
  actualCriticalAdjustedInterior A - centeredDeletedDiagonal A - independentMainTerm A

/-- Both opposite traces remain in the exact original work identity. -/
theorem actualWork_add_adjustedInterior_eq {A : ℝ} (hA : 1 ≤ A) :
    jointMangoldtErrorWork A + actualCriticalAdjustedInterior A =
      -actualCriticalAdjustedLowerColumnTrace A - actualCriticalUpperColumnTrace A := by
  rw [jointMangoldtErrorWork_eq_critical_adjusted_adjoint hA]
  ring

/-- The complete original work correction decays at the actual real scales. -/
theorem actualWork_add_adjustedInterior_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |jointMangoldtErrorWork A + actualCriticalAdjustedInterior A| ≤
      actualCriticalLowerColumnConstant / A ^ 2 + actualCriticalUpperColumnConstant / A ^ 4 := by
  rw [actualWork_add_adjustedInterior_eq (by linarith : 1 ≤ A)]
  calc
    _ ≤ |actualCriticalAdjustedLowerColumnTrace A| + |actualCriticalUpperColumnTrace A| := by
      simpa only [abs_neg] using abs_sub (-actualCriticalAdjustedLowerColumnTrace A)
        (actualCriticalUpperColumnTrace A)
    _ ≤ _ := add_le_add (actualCriticalAdjustedLowerColumnTrace_abs_le_square hA)
      (actualCriticalUpperColumnTrace_abs_le hA)

/-- The true critical upper-column boundary tends to zero; it is not support-zero. -/
theorem actualCriticalUpperColumnTrace_tendsto_zero :
    Tendsto actualCriticalUpperColumnTrace atTop (𝓝 (0 : ℝ)) := by
  apply tendsto_zero_iff_norm_tendsto_zero.2
  simp only [Real.norm_eq_abs]
  have he : Tendsto (fun A : ℝ => actualCriticalUpperColumnConstant / A ^ 4)
      atTop (𝓝 (0 : ℝ)) := by
    have h := ((tendsto_inv_atTop_zero :
      Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 (0 : ℝ))).pow 4).const_mul
        actualCriticalUpperColumnConstant
    simpa only [inv_pow, div_eq_mul_inv, zero_pow (by norm_num : 4 ≠ 0), mul_zero] using h
  apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _ he
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  exact actualCriticalUpperColumnTrace_abs_le hA

/-- The full adjusted interior is asymptotic to negative original work. -/
theorem actualWork_add_adjustedInterior_tendsto_zero :
    Tendsto (fun A : ℝ => jointMangoldtErrorWork A + actualCriticalAdjustedInterior A)
      atTop (𝓝 (0 : ℝ)) := by
  have h := actualCriticalAdjustedLowerColumnTrace_tendsto_zero.neg.sub
    actualCriticalUpperColumnTrace_tendsto_zero
  simp only [neg_zero, sub_zero] at h
  apply h.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  exact (actualWork_add_adjustedInterior_eq hA).symm

/-- The original compensated work differs by exactly the retained two traces. -/
theorem actualCompensatedWork_sub_retained_eq {A : ℝ} (hA : 1 ≤ A) :
    compensatedJointWork A - actualCriticalRetainedRemainder A =
      actualCriticalAdjustedLowerColumnTrace A + actualCriticalUpperColumnTrace A := by
  unfold compensatedJointWork actualCriticalRetainedRemainder
  rw [jointMangoldtErrorWork_eq_critical_adjusted_adjoint hA]
  ring

/-- This quantitative comparison keeps all original compensation, with no signed budget premise. -/
theorem actualCompensatedWork_sub_retained_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |compensatedJointWork A - actualCriticalRetainedRemainder A| ≤
      actualCriticalLowerColumnConstant / A ^ 2 + actualCriticalUpperColumnConstant / A ^ 4 := by
  rw [actualCompensatedWork_sub_retained_eq (by linarith : 1 ≤ A)]
  exact (abs_add _ _).trans (add_le_add
    (actualCriticalAdjustedLowerColumnTrace_abs_le_square hA)
    (actualCriticalUpperColumnTrace_abs_le hA))

/-- A source-exact pointwise residual comparison exposes the remaining signed expression. -/
theorem actualResidual_le_retained_and_boundaries {A C_F : ℝ} (hA : 91 ≤ A)
    (hledger : |EstimateBetaSourceRecombination.betaMainLedger A + independentMainTerm A| ≤ C_F) :
    mertensResidual A ≤ actualCriticalRetainedRemainder A + 3 + C_F +
      actualCriticalLowerColumnConstant / A ^ 2 + actualCriticalUpperColumnConstant / A ^ 4 := by
  have hb := (abs_le.mp (actualCompensatedWork_sub_retained_abs_le hA)).2
  have hw : compensatedJointWork A ≤ actualCriticalRetainedRemainder A +
      actualCriticalLowerColumnConstant / A ^ 2 + actualCriticalUpperColumnConstant / A ^ 4 := by
    linarith
  have hr := residual_upper_of_compensatedJointWork_upper A
    (actualCriticalRetainedRemainder A + actualCriticalLowerColumnConstant / A ^ 2 +
      actualCriticalUpperColumnConstant / A ^ 4) C_F (by linarith) hw hledger
  linarith

/-- The original independent ledger error gives this comparison unconditionally. -/
theorem actualResidual_retained_pointwise_comparison :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 91 ≤ A →
      mertensResidual A ≤ actualCriticalRetainedRemainder A + 3 + C_F +
        actualCriticalLowerColumnConstant / A ^ 2 + actualCriticalUpperColumnConstant / A ^ 4 := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨C_F, hF0, ?_⟩
  intro A hA
  exact actualResidual_le_retained_and_boundaries hA (hF A (by linarith))

end
end FormalResearch.RiemannHypothesis.RootActualCriticalWorkComparison
