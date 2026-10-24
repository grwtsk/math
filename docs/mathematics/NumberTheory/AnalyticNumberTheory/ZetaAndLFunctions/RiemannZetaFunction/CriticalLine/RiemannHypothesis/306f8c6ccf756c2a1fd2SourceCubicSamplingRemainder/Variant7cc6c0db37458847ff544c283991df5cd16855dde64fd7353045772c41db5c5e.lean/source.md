# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.306f8c6ccf756c2a1fd2SourceCubicSamplingRemainder.Variant7cc6c0db37458847ff544c283991df5cd16855dde64fd7353045772c41db5c5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab27c33e6d70b9aeb49fe628825b5268dad45141` · SHA-256 `5ae45b8441c274a9f93919eeafd30af482dd95c7ccb785326ee491786a9ce216`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CubicLogModelDerivative.Variant306f8c6ccf756c2a1fd26c143311f4f1b0532a86ef823613a1f86b3af4d92c51","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"306f8c6ccf756c2a1fd26c143311f4f1b0532a86ef823613a1f86b3af4d92c51","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CubicLogModelDerivative.Variant306f8c6ccf756c2a1fd26c143311f4f1b0532a86ef823613a1f86b3af4d92c51","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"306f8c6ccf756c2a1fd26c143311f4f1b0532a86ef823613a1f86b3af4d92c51","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/306f8c6ccf756c2a1fd2-SourceCubicSamplingRemainder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCubicCorrelationTaylor
import FormalResearch.RiemannHypothesis.SourceSamplingRemainder

/-!
Actual cubic logarithmic sampling derivative error on the upper positive axis.
Every cubic jet is retained independently. This is a row estimate, not a
quadrature or complete compensated Omega reconstruction.
Research direction: grwtsk contributors. Proof construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CubicLogModelDerivative.Variant306f8c6ccf756c2a1fd26c143311f4f1b0532a86ef823613a1f86b3af4d92c51

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCubicSamplingRemainder

open SourcePairing SourcePositiveSampling SourceSamplingRemainder SourceCubicCorrelationTaylor
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

noncomputable section

/-- The cubic logarithmic derivative model keeps all four signed Taylor jets. -/
def cubicLogModelDerivative (A k u : ℝ) : ℝ :=
  1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) *
    ((1 - Real.log u / 2) * cubicCorrelationJet A (Real.log k) (Real.log u) +
      Real.log u * deriv (cubicCorrelationJet A (Real.log k)) (Real.log u))

/-- The exact derivative difference is the actual cubic remainder and its derivative. -/
theorem cubic_log_derivative_difference {A k u : ℝ} (hA : 0 < A) (hk : 0 < k)
    (hu : 0 < u) :
    deriv (logProfile A k) u - cubicLogModelDerivative A k u =
      1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) *
        ((1 - Real.log u / 2) * cubicCorrelationRemainder A (Real.log k) (Real.log u) +
          Real.log u * deriv (cubicCorrelationRemainder A (Real.log k)) (Real.log u)) := by
  rw [(logProfile_hasDerivAt hA k hu).deriv, samplingDerivative_prefactor hk hu,
    (cubicCorrelationRemainder_hasDerivAt A (Real.log k) (Real.log u) hA).deriv]
  unfold cubicLogModelDerivative cubicCorrelationRemainder
  rw [(cubicCorrelationJet_hasDerivAt A (Real.log k) (Real.log u)).deriv]
  ring

/-- The actual upper-row error has the exact 5/24 and 1/48 logarithmic coefficients. -/
theorem cubic_log_derivative_difference_abs_le {A k u : ℝ} (hA : 91 ≤ A)
    (hk : 0 < k) (hu : 1 ≤ u) :
    |deriv (logProfile A k) u - cubicLogModelDerivative A k u| ≤
      67 / (A ^ 4 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
        ((5 / 24 : ℝ) * (Real.log u) ^ 4 + (1 / 48 : ℝ) * (Real.log u) ^ 5) := by
  have hup : 0 < u := by linarith
  have hl : 0 ≤ Real.log u := Real.log_nonneg hu
  have hweight : 0 ≤ 1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) := by positivity
  have hR := cubicCorrelationRemainder_abs_le A (Real.log k) (Real.log u) hA
  have hd := cubicCorrelationRemainder_deriv_abs_le A (Real.log k) (Real.log u) hA
  rw [abs_of_nonneg hl] at hd
  have hc : |1 - Real.log u / 2| ≤ 1 + Real.log u / 2 := by
    simpa only [abs_one, abs_div, abs_of_nonneg hl,
      abs_of_pos (by norm_num : (0 : ℝ) < 2)] using abs_sub (1 : ℝ) (Real.log u / 2)
  rw [cubic_log_derivative_difference (by linarith) hk hup, abs_mul,
    abs_of_nonneg hweight]
  calc
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        (|1 - Real.log u / 2| * |cubicCorrelationRemainder A (Real.log k) (Real.log u)| +
          Real.log u * |deriv (cubicCorrelationRemainder A (Real.log k)) (Real.log u)|) := by
      apply mul_le_mul_of_nonneg_left _ hweight
      simpa only [abs_mul, abs_of_nonneg hl] using abs_add_le
        ((1 - Real.log u / 2) * cubicCorrelationRemainder A (Real.log k) (Real.log u))
        (Real.log u * deriv (cubicCorrelationRemainder A (Real.log k)) (Real.log u))
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        ((1 + Real.log u / 2) * (67 / A ^ 4 * (Real.log u) ^ 4 / 24) +
          Real.log u * (67 / A ^ 4 * (Real.log u) ^ 3 / 6)) := by
      gcongr
    _ = _ := by ring

end
end FormalResearch.RiemannHypothesis.SourceCubicSamplingRemainder
```
