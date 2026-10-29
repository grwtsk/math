-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CompleteXiHead.Variant79967ee367f19af087c4986e369eb416d05fcc3d8c2c2ee4c87b9a862f99bbd3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"79967ee367f19af087c4986e369eb416d05fcc3d8c2c2ee4c87b9a862f99bbd3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CompleteXiHead.Variant79967ee367f19af087c4986e369eb416d05fcc3d8c2c2ee4c87b9a862f99bbd3","mathematical_subject":"Analysis.Integration","original_sha256":"79967ee367f19af087c4986e369eb416d05fcc3d8c2c2ee4c87b9a862f99bbd3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/root/late-owner-delta/source-captures/SourceCompleteOverlapXiTail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCompleteOverlapPrimeRow
import SourceCompleteXiTailConsumer

/-!
Exact return of the complete signed overlap to the complete physical Xi tail.
No arithmetic bound is assumed for either jointly signed object.
Direction, selection, corrections and evaluation: grwtsk contributors.
Formal construction and focused replay: OpenAI Codex assistance.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.CompleteXiHead.Variant79967ee367f19af087c4986e369eb416d05fcc3d8c2c2ee4c87b9a862f99bbd3

set_option autoImplicit false
noncomputable section
namespace RH16CompleteOverlapXiTail

open MeasureTheory Set
open RH16CompleteOverlapPrimeRow RH16CompleteXiComplement RH16CompleteXiTail
open RH16ActualXiPositiveBlock RH16ShiftedXiAdapter
open FormalResearch.RiemannHypothesis
open SourceRestrictedLowTimeWork SourceMangoldtAbel SourceFirstPrimeAbel SourceFirstAtomSignedWork
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

/-- The whole closed finite head, including the favorable block and prime-seven atom. -/
def completeXiHead (A : ℝ) : ℝ := ∫ y in 2..7, actualTransformedXiBlockDensity A y

theorem remaining_work_eq_gamma_head_tail (A : ℝ) (hA : 40 ≤ A) :
    remainingAtomWork A =
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) +
        completeXiHead A + completeXiTail A := by
  have hX : (7 : ℝ) ≤ Real.exp (2 * A) := by
    have hL : Real.log (7 : ℝ) ≤ 2 * A := by
      linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr hL
  have hw := actual_transformed_whole_intervalIntegrable A hA
  have h2X : (2 : ℝ) ≤ Real.exp (2 * A) := by linarith
  have h27 : IntervalIntegrable (actualTransformedXiBlockDensity A) volume 2 7 := by
    apply hw.mono_set
    rw [uIcc_of_le (by norm_num : (2 : ℝ) ≤ 7), uIcc_of_le h2X]
    exact Icc_subset_Icc le_rfl hX
  have h7X : IntervalIntegrable (actualTransformedXiBlockDensity A) volume 7
      (Real.exp (2 * A)) := by
    apply hw.mono_set
    rw [uIcc_of_le hX, uIcc_of_le h2X]
    exact Icc_subset_Icc (by norm_num) le_rfl
  have he := remainingAtomWork_eq_explicit_shiftedXi A (by linarith : 1 ≤ A)
  change remainingAtomWork A =
    Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) +
      (∫ y in 2..Real.exp (2 * A), actualTransformedXiBlockDensity A y) at he
  rw [← intervalIntegral.integral_add_adjacent_intervals h27 h7X] at he
  unfold completeXiHead completeXiTail
  linarith only [he]

/-- The full joint block is collapsed before the finite correction is estimated. -/
theorem complete_tail_eq_joint_overlap_corrections (A : ℝ) (hA : 40 ≤ A) :
    completeXiTail A = criticalContinuousMoment A - remainingOverlapBalance A -
      finiteLedgerCorrection A + retainedSpatialStrip A - firstAtomHeadWork A -
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) - completeXiHead A := by
  have hA1 : 1 ≤ A := by linarith
  have hr := complete_overlap_eq_actual_residual_row A hA1
  have hm := mertensResidual_eq_continuous_sub_Mangoldt_work A hA1
  have hh := criticalMangoldtWork_eq_head_add_remaining A hA1
  have hx := remaining_work_eq_gamma_head_tail A hA
  linarith only [hr, hm, hh, hx]

/-- A completely explicit finite-correction comparison; no uniform D or K is supplied. -/
theorem complete_tail_lower_of_joint_inputs (A D C_F S H G : ℝ) (hA : 40 ≤ A)
    (hD : remainingOverlapBalance A ≤ D)
    (hF : finiteLedgerCorrection A ≤ C_F)
    (hS : -S ≤ retainedSpatialStrip A)
    (hH : completeXiHead A ≤ H)
    (hG : Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ G) :
    -(D + C_F + S + 2 + G + H) ≤ completeXiTail A := by
  have hc := (abs_le.mp (criticalContinuousMoment_abs_le_two A (by linarith : 1 ≤ A))).1
  have hh := firstAtomHeadWork_nonpositive A hA
  rw [complete_tail_eq_joint_overlap_corrections A hA]
  linarith only [hc, hh, hD, hF, hS, hH, hG]

end RH16CompleteOverlapXiTail
