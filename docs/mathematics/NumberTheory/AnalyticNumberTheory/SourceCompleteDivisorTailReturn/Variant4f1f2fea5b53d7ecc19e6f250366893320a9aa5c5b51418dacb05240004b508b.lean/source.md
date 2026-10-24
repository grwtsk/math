# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceCompleteDivisorTailReturn.Variant4f1f2fea5b53d7ecc19e6f250366893320a9aa5c5b51418dacb05240004b508b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf1a1d4edcea037aeff46d249c29dee0b8395b87` · SHA-256 `4f83bf683aee3e8910c7122e4ac54c9f940f53de2fca7bb4cbe931a15c1d49d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.CompleteXiHead.Variantfbbc77175a6ba26c484362f6055da54541d4a5c731e584b478cf011f8c988a61","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fbbc77175a6ba26c484362f6055da54541d4a5c731e584b478cf011f8c988a61","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.CompleteXiHead.Variantfbbc77175a6ba26c484362f6055da54541d4a5c731e584b478cf011f8c988a61","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"fbbc77175a6ba26c484362f6055da54541d4a5c731e584b478cf011f8c988a61","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-joint/tail-return/base-attempt01/SourceCompleteDivisorTailReturn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCompleteXiTailConsumer

/-!
Return a complete signed divisor-block bound through the original physical Xi tail.
The original F7 closure, closed finite head, PLUS gamma boundary, independent
main and original prefix are retained. No restricted-work or spatial-strip import
is needed. No uniform arithmetic block witness is supplied.
Direction, selection, corrections and evaluation: grwtsk contributors.
Formal construction and focused replay: OpenAI Codex assistance.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.CompleteXiHead.Variantfbbc77175a6ba26c484362f6055da54541d4a5c731e584b478cf011f8c988a61

set_option autoImplicit false
noncomputable section
namespace RH16CompleteDivisorTailReturn

open MeasureTheory Set
open RH16CompleteXiComplement RH16CompleteXiTail
open RH16ActualXiPositiveBlock RH16ShiftedXiAdapter
open FormalResearch.RiemannHypothesis
open SourceMangoldtAbel SourceFirstPrimeAbel SourceFirstAtomSignedWork
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

/-- The complete finite physical head, including every prime power through seven. -/
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

/-- Exact residual-to-tail identity in the original source closure. -/
theorem complete_tail_eq_residual_corrections (A : ℝ) (hA : 40 ≤ A) :
    completeXiTail A = criticalContinuousMoment A - mertensResidual A -
      firstAtomHeadWork A -
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) - completeXiHead A := by
  have hA1 : 1 ≤ A := by linarith
  have hm := mertensResidual_eq_continuous_sub_Mangoldt_work A hA1
  have hh := criticalMangoldtWork_eq_head_add_remaining A hA1
  have hx := remaining_work_eq_gamma_head_tail A hA
  linarith only [hm, hh, hx]

/-- Only the whole-head upper cost and PLUS gamma cost are charged in the reverse direction. -/
theorem residual_upper_implies_complete_tail_lower (A B H G : ℝ) (hA : 40 ≤ A)
    (hr : mertensResidual A ≤ B) (hH : completeXiHead A ≤ H)
    (hG : Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ G) :
    -(B + 2 + G + H) ≤ completeXiTail A := by
  have hc := (abs_le.mp (criticalContinuousMoment_abs_le_two A (by linarith : 1 ≤ A))).1
  have hh := firstAtomHeadWork_nonpositive A hA
  rw [complete_tail_eq_residual_corrections A hA]
  linarith only [hc, hh, hr, hH, hG]

end RH16CompleteDivisorTailReturn
```
