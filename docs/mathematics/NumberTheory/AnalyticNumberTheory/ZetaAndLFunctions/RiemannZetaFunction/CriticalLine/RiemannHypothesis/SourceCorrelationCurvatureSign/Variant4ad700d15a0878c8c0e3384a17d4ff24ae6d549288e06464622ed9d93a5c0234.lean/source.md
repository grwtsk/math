# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCorrelationCurvatureSign.Variant4ad700d15a0878c8c0e3384a17d4ff24ae6d549288e06464622ed9d93a5c0234

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a6f011d09b5ed0481e18520e44d0fc87862a581` · SHA-256 `2dd1fd10811e246b69e8ea8d41b2629c4d8505e72dbb446d33dacbd289fe274f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualDerivativeEnergyPos.Variant46ad9ccff9776031f0b0c8be0e5b44ae1ab74b02ca46748424e05845cd2acc2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46ad9ccff9776031f0b0c8be0e5b44ae1ab74b02ca46748424e05845cd2acc2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualDerivativeEnergyPos.Variant46ad9ccff9776031f0b0c8be0e5b44ae1ab74b02ca46748424e05845cd2acc2d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"46ad9ccff9776031f0b0c8be0e5b44ae1ab74b02ca46748424e05845cd2acc2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/SourceCorrelationCurvatureSign.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualDerivativeEnergyPos.Variant46ad9ccff9776031f0b0c8be0e5b44ae1ab74b02ca46748424e05845cd2acc2d

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureSign

open MeasureTheory
open SourcePairing SourceDerivativeEnergy SourceCorrelationCurvature
open SourceDerivativeCoefficientBound
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

theorem actual_derivative_energy_pos {A : ℝ} (hA : 0 < A) :
    0 < ∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2 := by
  have hr : 0 ≤ (A ^ 2)⁻¹ := by positivity
  have hn : 0 < derivativePolynomial ((A ^ 2)⁻¹) := by
    unfold derivativePolynomial
    positivity
  have hd := normPolynomial_pos ((A ^ 2)⁻¹) hr
  have he := actual_derivative_energy_eq hA
  have hp : 0 < A ^ 2 *
      (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) := by
    rw [he]
    exact div_pos hn hd
  exact (mul_pos_iff_of_pos_left (by positivity : 0 < A ^ 2)).mp hp

theorem sourceCorrelation_curvature_at_zero {A : ℝ} (hA : 0 < A) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 =
      -(∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) := by
  simpa only [sub_zero, ← pow_two] using sourceCorrelation_second_deriv_eq_integral hA 0

theorem sourceCorrelation_curvature_at_zero_neg {A : ℝ} (hA : 0 < A) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 < 0 := by
  rw [sourceCorrelation_curvature_at_zero hA]
  exact neg_neg_of_pos (actual_derivative_energy_pos hA)

theorem positive_autocorrelation_formula_false {A : ℝ} (hA : 0 < A) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 ≠
      ∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2 := by
  have hn := sourceCorrelation_curvature_at_zero_neg hA
  have hp := actual_derivative_energy_pos hA
  exact ne_of_lt (hn.trans hp)

end FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureSign
```
