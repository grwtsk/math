# Complete source: GRWTSK.Topology.GeneralTopology.RootActualCriticalWorkComparison.Variantf9715f91395e5aac5bf66b0f5bfb927b975b99128aa10c9688f51870dbd91600

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe24d3e4b609900df6a37539e1f65aa8dcaf5276` · SHA-256 `1c831d8bdab434a4392c976b9c628964697a761298c6e80e83a076de3600a96c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualCriticalLowerColumnConstant.Variant3f264944819a63711a749efc824f1c373aa2afee0f330501a974c8cdae5c15c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f264944819a63711a749efc824f1c373aa2afee0f330501a974c8cdae5c15c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualCriticalLowerColumnConstant.Variant3f264944819a63711a749efc824f1c373aa2afee0f330501a974c8cdae5c15c6","mathematical_subject":"Topology.GeneralTopology","original_sha256":"3f264944819a63711a749efc824f1c373aa2afee0f330501a974c8cdae5c15c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T223808Z-1791326288770268000/RootActualCriticalWorkComparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import RootActualCriticalUpperColumnEstimate
import ActualSupportEdgeLowerTrace
import SourceJointWorkConsumer

/-!
The actual work differs from its full critical adjusted signed interior only
by the two proved vanishing boundary traces. The original baseline, lower
error head, deleted diagonal and independently fixed main remain literal.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Topology.GeneralTopology.ActualCriticalLowerColumnConstant.Variant3f264944819a63711a749efc824f1c373aa2afee0f330501a974c8cdae5c15c6

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualCriticalWorkComparison
open MeasureTheory Filter
open scoped Topology
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
  exact (abs_add_le _ _).trans (add_le_add
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
```
