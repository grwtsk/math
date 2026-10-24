# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ArithmeticLaurentAttempt01.Variantc2755126b0c35a65cb3d8ff4fb21706ec5d5daa95e6fec297dd90e738c801b53

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9de41b2cf8c0a55e7fbf7fed2d96c1305ce7748e` · SHA-256 `e0c91a262b4061f759fadec7b6c9e1e8fc97c8c7313a26da63d011e6e008b6f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ActualRegularNegativeDerivative.Variant931e2f38cfe3d6ef59e622b97ee50465f93ebe66f8740d7612f8cd2696fb1416","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"931e2f38cfe3d6ef59e622b97ee50465f93ebe66f8740d7612f8cd2696fb1416","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.ActualRegularNegativeDerivative.Variant931e2f38cfe3d6ef59e622b97ee50465f93ebe66f8740d7612f8cd2696fb1416","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"931e2f38cfe3d6ef59e622b97ee50465f93ebe66f8740d7612f8cd2696fb1416","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass22/arithmetic_laurent/ArithmeticLaurent-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualLaurentSlope
import ActualFirstStieltjesDerivative

/-! Actual von Mangoldt Laurent coefficient using the independently constructed
first Stieltjes sequence limit. No supplied coefficient or arithmetic intercept.
Research direction grwtsk contributors; focused scratch construction OpenAI Codex. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ActualRegularNegativeDerivative.Variant931e2f38cfe3d6ef59e622b97ee50465f93ebe66f8740d7612f8cd2696fb1416

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ArithmeticLaurent
open Filter Topology
open ActualLaurentSlope ActualFirstStieltjes ActualFirstStieltjesDerivative

/-- Genuine derivative of the actual regular negative logarithmic derivative. -/
theorem actual_regular_negative_derivative :
    HasDerivAt regularNegativeLogDerivative
      ((Real.eulerMascheroniConstant : ℂ)^2 + 2*(firstStieltjesConstant : ℂ)) 1 := by
  simpa only [actual_firstStieltjes_deriv,mul_neg,sub_neg_eq_add] using
    ActualLaurentSlope.actual_regular_negative_derivative

/-- Full punctured-complex slope, with the actual independent sequence coefficient. -/
theorem actual_regular_negative_slope :
    Tendsto (fun u : ℂ =>
      (regularNegativeLogDerivative (1+u)+(Real.eulerMascheroniConstant : ℂ))/u)
      (𝓝[≠] 0) (𝓝 ((Real.eulerMascheroniConstant : ℂ)^2 + 2*(firstStieltjesConstant : ℂ))) := by
  simpa only [actual_firstStieltjes_deriv,mul_neg,sub_neg_eq_add] using
    ActualLaurentSlope.actual_regular_negative_slope

/-- The actual zeta logarithmic derivative, with pole and constant subtracted. -/
theorem actual_negative_log_laurent_slope :
    Tendsto (fun u : ℂ =>
      (-deriv riemannZeta (1+u)/riemannZeta (1+u)-u⁻¹+
        (Real.eulerMascheroniConstant : ℂ))/u)
      (𝓝[≠] 0) (𝓝 ((Real.eulerMascheroniConstant : ℂ)^2 + 2*(firstStieltjesConstant : ℂ))) := by
  simpa only [actual_firstStieltjes_deriv,mul_neg,sub_neg_eq_add] using
    ActualLaurentSlope.actual_negative_log_laurent_slope

/-- Genuine actual von Mangoldt LSeries slope, restricted to its convergence half-plane. -/
theorem actual_vonMangoldt_series_laurent_slope :
    Tendsto (fun u : ℂ =>
      (LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) (1+u)-u⁻¹+
        (Real.eulerMascheroniConstant : ℂ))/u)
      (𝓝[{u : ℂ | 0 < u.re}] 0)
      (𝓝 ((Real.eulerMascheroniConstant : ℂ)^2 + 2*(firstStieltjesConstant : ℂ))) := by
  simpa only [actual_firstStieltjes_deriv,mul_neg,sub_neg_eq_add] using
    ActualLaurentSlope.actual_vonMangoldt_series_laurent_slope

end ContinuousResearch.ArithmeticLaurent

#print ContinuousResearch.ArithmeticLaurent.actual_regular_negative_derivative
#print axioms ContinuousResearch.ArithmeticLaurent.actual_regular_negative_derivative
#print ContinuousResearch.ArithmeticLaurent.actual_regular_negative_slope
#print axioms ContinuousResearch.ArithmeticLaurent.actual_regular_negative_slope
#print ContinuousResearch.ArithmeticLaurent.actual_negative_log_laurent_slope
#print axioms ContinuousResearch.ArithmeticLaurent.actual_negative_log_laurent_slope
#print ContinuousResearch.ArithmeticLaurent.actual_vonMangoldt_series_laurent_slope
#print axioms ContinuousResearch.ArithmeticLaurent.actual_vonMangoldt_series_laurent_slope
```
