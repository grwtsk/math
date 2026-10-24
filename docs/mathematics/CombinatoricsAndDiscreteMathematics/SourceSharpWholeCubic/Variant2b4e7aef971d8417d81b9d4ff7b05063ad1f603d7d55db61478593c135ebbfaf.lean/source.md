# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SourceSharpWholeCubic.Variant2b4e7aef971d8417d81b9d4ff7b05063ad1f603d7d55db61478593c135ebbfaf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbb5f61d97851d28c4b7c0d1a5c814e7aec50219` · SHA-256 `deda10da061dd87d683a69bff6e9fa718e3c1beacaff621e3cefa78810f26e87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FullJointBlockEqCorrectedPairingAddPlain.Variant576536936a1095582b1c655c9dc3d0328f1e1f1c24a7c8fa66953518ee664924","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"576536936a1095582b1c655c9dc3d0328f1e1f1c24a7c8fa66953518ee664924","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FullJointBlockEqCorrectedPairingAddPlain.Variant576536936a1095582b1c655c9dc3d0328f1e1f1c24a7c8fa66953518ee664924","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"576536936a1095582b1c655c9dc3d0328f1e1f1c24a7c8fa66953518ee664924","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/root-formal/sharp-whole-cubic/attempt01/SourceSharpWholeCubic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceWholeCubicSampling
import SourceUnconditionalCorrectedCalibration

/-!
The literal new whole-positive-axis error is the previously controlled complete
paired reconstruction error. Reuse its stable Peano and centered upper bounds;
do not count those earlier analytic proofs as new mathematics. The full signed
four-jet/complement witness remains supplied. Original main, baseline, cutoffs,
prime powers and receiving prefix are unchanged.
Direction and conceptual origin: grwtsk contributors.
Source consequence and formalization: OpenAI Codex.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FullJointBlockEqCorrectedPairingAddPlain.Variant576536936a1095582b1c655c9dc3d0328f1e1f1c24a7c8fa66953518ee664924

set_option autoImplicit false
noncomputable section
namespace RH16SharpWholeCubic
open MeasureTheory Set
open scoped BigOperators
open FormalResearch.RiemannHypothesis
open SourcePairing SourceFullDivisorLogInventory SourceFullPositiveKappa
open SourceCompleteCorrectedAbelPairing SourceCorrectedOmegaPeanoTaylor
open SourceUnconditionalCorrectedCalibration
open ContinuousResearch.ActualIntegerInventory ContinuousResearch.ActualArithmeticCalibration
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateMertensAbel EstimateSourceMobiusKernel
open EstimateMertensResidual RH16ResumeBudget RH16WholeCubic

/-- Literal full-axis short main and full complement recover the original corrected pairing. -/
theorem full_joint_block_eq_corrected_pairing_add_plain (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      wholeCubicMainTerm A (d : ℝ)) + literalOmegaComplementarySector A =
        completeCorrectedAbelPairing A + plainInventory A := by
  rw [← correctedCompleteOmega_eq_complete_pairing A hA,
    correctedCompleteOmega_eq_full_positive_kappa]
  have hs :
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        wholeCubicMainTerm A (d : ℝ)) =
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
        ∑ j ∈ Finset.range 4, fullPositiveKappa (j + 1) / (j.factorial : ℝ) *
          iteratedDeriv j (sourceCorrelation explicitSecondDerivative A) (Real.log (d : ℝ))) := by
    apply Finset.sum_congr rfl
    intro d _
    unfold wholeCubicMainTerm
    norm_num [Finset.sum_range_succ, iteratedDeriv_succ, iteratedDeriv_zero, Nat.factorial]
    ring
  rw [hs]
  ring

/-- The whole fractional carrier and the earlier two-error carrier coincide jointly. -/
theorem whole_short_error_eq_integerJ_sub_corrected_pairing (A : ℝ) (hA : 91 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      wholeCubicErrorRow A (d : ℝ)) = integerJ A - completeCorrectedAbelPairing A := by
  have hrec := actual_residual_eq_full_short_main_add_complement_add_error A hA
  rw [full_joint_block_eq_corrected_pairing_add_plain A (by linarith)] at hrec
  have hbase := residual_sub_integerJ_eq_plain (by linarith : 1 ≤ A)
  linarith

/-- Reused stable Peano plus centered upper costs sharpen this actual full-axis carrier. -/
theorem whole_short_error_abs_le_sharp (A : ℝ) (hA : 91 ≤ A) :
    |∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      wholeCubicErrorRow A (d : ℝ)| ≤ 64320 / A ^ 3 := by
  rw [whole_short_error_eq_integerJ_sub_corrected_pairing A hA]
  convert integerJ_sub_complete_pairing_abs_le A hA using 1 <;> norm_num

theorem residual_upper_of_joint_full_block_sharp (A D : ℝ) (hA : 91 ≤ A)
    (hjoint : (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      wholeCubicMainTerm A (d : ℝ)) + literalOmegaComplementarySector A ≤ D) :
    mertensResidual A ≤ D + 64320 / A ^ 3 := by
  rw [actual_residual_eq_full_short_main_add_complement_add_error A hA]
  have he := (abs_le.mp (whole_short_error_abs_le_sharp A hA)).2
  linarith

theorem residual_upper_of_joint_full_block_at_radius_sharp (Q A D : ℝ) (hQ : 91 ≤ Q)
    (hQA : Q ≤ A)
    (hjoint : (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      wholeCubicMainTerm A (d : ℝ)) + literalOmegaComplementarySector A ≤ D) :
    mertensResidual A ≤ D + 64320 / Q ^ 3 := by
  have hQ0 : 0 < Q := by linarith
  have hp : Q ^ 3 ≤ A ^ 3 := pow_le_pow_left₀ hQ0.le hQA 3
  have he : (64320 : ℝ) / A ^ 3 ≤ 64320 / Q ^ 3 :=
    div_le_div_of_nonneg_left (by norm_num) (pow_pos hQ0 3) hp
  exact (residual_upper_of_joint_full_block_sharp A D (hQ.trans hQA) hjoint).trans
    (by linarith only [he])

def sharpWholeResidualBudget (D Q : ℝ) : ℝ := max 0 (D + 64320 / Q ^ 3)

theorem sharpWholeResidualBudget_nonneg (D Q : ℝ) : 0 ≤ sharpWholeResidualBudget D Q :=
  le_max_left _ _

theorem residual_witness_of_joint_full_block_sharp (D Q : ℝ) (hQ : 91 ≤ Q)
    (hjoint : ∀ A : ℝ, Q ≤ A →
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        wholeCubicMainTerm A (d : ℝ)) + literalOmegaComplementarySector A ≤ D) :
    MertensResidualTailUpperBound := by
  refine ⟨sharpWholeResidualBudget D Q, sharpWholeResidualBudget_nonneg D Q,
    Q, by linarith, ?_⟩
  intro A hA
  exact (residual_upper_of_joint_full_block_at_radius_sharp Q A D hQ hA (hjoint A hA)).trans
    (le_max_right _ _)

theorem all_real_lower_of_joint_full_block_sharp (D Q : ℝ) (hQ : 91 ≤ Q)
    (hjoint : ∀ A : ℝ, Q ≤ A →
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        wholeCubicMainTerm A (d : ℝ)) + literalOmegaComplementarySector A ≤ D) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower Q) (archimedeanMultiplier 0 - 2 * sharpWholeResidualBudget D Q) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail (sharpWholeResidualBudget D Q) Q (by linarith)
  intro A hA
  exact (residual_upper_of_joint_full_block_at_radius_sharp Q A D hQ hA (hjoint A hA)).trans
    (le_max_right _ _)

theorem estimate_of_joint_full_block_sharp (D Q : ℝ) (hQ : 91 ≤ Q)
    (hjoint : ∀ A : ℝ, Q ≤ A →
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        wholeCubicMainTerm A (d : ℝ)) + literalOmegaComplementarySector A ≤ D) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail (residual_witness_of_joint_full_block_sharp D Q hQ hjoint)

theorem sharpWholeResidualBudget_le_original (D Q : ℝ) (hQ : 0 < Q) :
    sharpWholeResidualBudget D Q ≤ wholeCubicResidualBudget D Q := by
  unfold sharpWholeResidualBudget wholeCubicResidualBudget
  apply max_le_max le_rfl
  have he : (64320 : ℝ) / Q ^ 3 ≤ 85760 / Q ^ 3 :=
    div_le_div_of_nonneg_right (by norm_num) (pow_pos hQ 3).le
  linarith

end RH16SharpWholeCubic
```
