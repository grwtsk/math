# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualNumericMeanTransfer.Variantbe8623b0bfcaef196c971e4186015d76bdbce6bcab78ccdcdf2a92c8b2b14352

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0360985e54f48126881a527aa1d3d2affb664aca` · SHA-256 `8294e6de830943d15d3676fdcf7ae3be47eb6dba19d9b5750f7465071961f629`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CommonMeanCenterGt.Variant1cb1f72d66f9279867858cd7d4cb0c39c8da0ad8cb3e7868f47d4fb6c4f1eb57","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1cb1f72d66f9279867858cd7d4cb0c39c8da0ad8cb3e7868f47d4fb6c4f1eb57","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CommonMeanCenterGt.Variant1cb1f72d66f9279867858cd7d4cb0c39c8da0ad8cb3e7868f47d4fb6c4f1eb57","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1cb1f72d66f9279867858cd7d4cb0c39c8da0ad8cb3e7868f47d4fb6c4f1eb57","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass12/common_mean_review/ActualNumericMeanTransfer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCommonMeanNormalization
import NumericMeanBounds

/-! Exact actual J_mean numerical transfer. The independent F_square lower
budget remains the sole correction-budget hypothesis; zero-side sign or lower
budgets, where used, are additional explicit premises, never RH witnesses.
Direction: grwtsk contributors. Scratch assembly: OpenAI Codex. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CommonMeanCenterGt.Variant1cb1f72d66f9279867858cd7d4cb0c39c8da0ad8cb3e7868f47d4fb6c4f1eb57

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualNumericMeanTransfer
open FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork
open ActualCommonMeanCalibration ActualCommonMeanZeroSide ActualCommonMeanNormalization

theorem commonMeanCenter_gt : (149/40:ℝ) < commonMeanCenter := by
  unfold commonMeanCenter
  linarith [NumericMeanBounds.fixed_prime_sum_gt, NumericMeanBounds.actual_endpoint_lt]

theorem normalizationBudget_lt : normalizationBudget < (206:ℝ) := by
  unfold normalizationBudget
  linarith [NumericMeanBounds.actual_sharp_calibration_lt]

theorem normalizationError_lt {A : ℝ} (hA : 1 ≤ A) :
    normalizationError A < 206/A^2 := by
  exact (normalizationError_bounds hA).2.trans_lt
    (div_lt_div_of_pos_right normalizationBudget_lt (by positivity : 0<A^2))

/-- Actual J_mean; no assumed gamma identity or generic scalar surrogate. -/
theorem sourceMeanOffset_gt_paper_bound {A : ℝ} (hA : 1 ≤ A)
    (hF : -(1889/100:ℝ) ≤ squareRemovedRemainder A) :
    -(3033/200:ℝ)-206/A^2 < sourceMeanOffset A := by
  have h := normalizationError_lt hA
  unfold normalizationError at h
  linarith [commonMeanCenter_gt]

theorem sourceMean_gt_paper_bound {A : ℝ} (hA : 1 ≤ A)
    (hF : -(1889/100:ℝ) ≤ squareRemovedRemainder A) :
    -(3033/200:ℝ)-206/A^2+(normalizedZeroSquare A).re/2 < sourceMean A := by
  rw [sourceMean_eq_offset_zero hA]
  linarith [sourceMeanOffset_gt_paper_bound hA hF]

/-- A supplied lower budget for the literal ordinary-square zero sum is explicit. -/
theorem sourceMean_gt_of_zero_budget {A N : ℝ} (hA : 1 ≤ A)
    (hF : -(1889/100:ℝ) ≤ squareRemovedRemainder A)
    (hS : -N ≤ (normalizedZeroSquare A).re) :
    -(3033/200:ℝ)-206/A^2-N/2 < sourceMean A := by
  linarith [sourceMean_gt_paper_bound hA hF]

/-- Conditional finite mean consequence; neither explicit premise is discharged here. -/
theorem sourceMean_gt_neg_eighteen {A : ℝ} (hA : 10 ≤ A)
    (hF : -(1889/100:ℝ) ≤ squareRemovedRemainder A)
    (hS : 0 ≤ (normalizedZeroSquare A).re) : -18 < sourceMean A := by
  have hA1 : 1 ≤ A := by linarith
  have h := sourceMean_gt_paper_bound hA1 hF
  have hb : (206:ℝ)/A^2 ≤ 206/100 := by
    apply div_le_div_of_nonneg_left (by norm_num) (by norm_num : (0:ℝ)<100)
    nlinarith
  linarith

#print axioms commonMeanCenter_gt
#print axioms normalizationBudget_lt
#print axioms normalizationError_lt
#print axioms sourceMeanOffset_gt_paper_bound
#print axioms sourceMean_gt_paper_bound
#print axioms sourceMean_gt_of_zero_budget
#print axioms sourceMean_gt_neg_eighteen
end ContinuousResearch.ActualNumericMeanTransfer
```
