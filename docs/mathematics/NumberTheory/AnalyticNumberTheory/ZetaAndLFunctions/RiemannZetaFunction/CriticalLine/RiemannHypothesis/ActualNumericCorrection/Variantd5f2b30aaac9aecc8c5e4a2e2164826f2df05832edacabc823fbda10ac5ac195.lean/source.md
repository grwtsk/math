# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualNumericCorrection.Variantd5f2b30aaac9aecc8c5e4a2e2164826f2df05832edacabc823fbda10ac5ac195

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65a375b4e70ac8e62e01e830462c91b574fc932f` · SHA-256 `3b44c67401a10c6a6e724faca49e94cd66dd7a6086ea347f40de5d55fb2dd27a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualNegativeMeanGt.Variantd2d1ef23d340a5b4b3809cc210c612c30bd053c313ec0df3e3d16c348335b1f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d2d1ef23d340a5b4b3809cc210c612c30bd053c313ec0df3e3d16c348335b1f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualNegativeMeanGt.Variantd2d1ef23d340a5b4b3809cc210c612c30bd053c313ec0df3e3d16c348335b1f5","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d2d1ef23d340a5b4b3809cc210c612c30bd053c313ec0df3e3d16c348335b1f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass13/higher_power/ActualNumericCorrection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import HigherPowerNumeric
import ActualPrimeError
import ActualNumericMeanTransfer

/-! Unconditional numeric bound for the independently defined actual F_square.
Direction grwtsk contributors; scratch source assembly OpenAI Codex.
The complete ordinary-square zero budget is still explicit wherever consumed. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualNegativeMeanGt.Variantd2d1ef23d340a5b4b3809cc210c612c30bd053c313ec0df3e3d16c348335b1f5

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualNumericCorrection
open FormalResearch.RiemannHypothesis
open SourcePrimeSquareTailWork SourcePairedPrimeAverages SourcePrimePowerPartition
open ActualCommonMeanNormalization ActualCommonMeanZeroSide ActualCommonMeanCalibration ActualNumericMeanTransfer

theorem actual_negative_mean_gt {A : ℝ} (hA : 1≤A) :
    -(133/40:ℝ)<negativeErrorMean A := by
  have hh := ActualPrimeError.actual_negativeErrorMean_lower hA
  linarith [Real.log_two_lt_d9]

theorem actual_square_remainder_gt {A : ℝ} (hA : 1≤A) :
    -(621/40:ℝ)<squareRemovedRemainder A := by
  have hH := (abs_le.mp (SourceFirstPrimeAbel.criticalContinuousMoment_abs_le_two A hA)).1
  have hP := (abs_le.mp (HigherPowerNumeric.actual_higherPrimePowerMoment_abs_le hA)).1
  have hB := squareTailNegativeMean_le_baseline hA
  have hE := actual_negative_mean_gt hA
  unfold squareRemovedRemainder
  linarith

theorem actual_square_remainder_paper_budget {A : ℝ} (hA : 1≤A) :
    -(1889/100:ℝ)≤squareRemovedRemainder A := by
  linarith [actual_square_remainder_gt hA]

theorem actual_mean_offset_gt {A : ℝ} (hA : 1≤A) :
    -(59/5:ℝ)-206/A^2<sourceMeanOffset A := by
  have hF := actual_square_remainder_gt hA
  have hE := normalizationError_lt hA
  unfold normalizationError at hE
  linarith [commonMeanCenter_gt]

theorem actual_mean_gt {A : ℝ} (hA : 1≤A) :
    -(59/5:ℝ)-206/A^2+(normalizedZeroSquare A).re/2<sourceMean A := by
  rw [sourceMean_eq_offset_zero hA]
  linarith [actual_mean_offset_gt hA]

theorem actual_mean_gt_of_zero_budget {A N : ℝ} (hA : 1≤A)
    (hS : -N≤(normalizedZeroSquare A).re) :
    -(59/5:ℝ)-206/A^2-N/2<sourceMean A := by
  linarith [actual_mean_gt hA]

/-- Only the ordinary-square sign remains; it is not supplied by this packet. -/
theorem actual_mean_gt_neg_eighteen {A : ℝ} (hA : 10≤A)
    (hS : 0≤(normalizedZeroSquare A).re) : -18<sourceMean A :=
  sourceMean_gt_neg_eighteen hA
    (actual_square_remainder_paper_budget (by linarith)) hS

#print axioms actual_negative_mean_gt
#print axioms actual_square_remainder_gt
#print axioms actual_square_remainder_paper_budget
#print axioms actual_mean_offset_gt
#print axioms actual_mean_gt
#print axioms actual_mean_gt_of_zero_budget
#print axioms actual_mean_gt_neg_eighteen
end ContinuousResearch.ActualNumericCorrection
```
