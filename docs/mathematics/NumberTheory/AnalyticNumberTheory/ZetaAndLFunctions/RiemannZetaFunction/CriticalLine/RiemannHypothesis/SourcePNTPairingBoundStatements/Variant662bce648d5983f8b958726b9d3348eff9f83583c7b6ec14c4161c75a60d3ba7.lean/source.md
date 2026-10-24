# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePNTPairingBoundStatements.Variant662bce648d5983f8b958726b9d3348eff9f83583c7b6ec14c4161c75a60d3ba7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89c874de5825284847f4795b20eda7a0d1f80532` · SHA-256 `07946be82f5587ce844a2ec1811a7bd71f7b1630fa0dc390891f54cd6193e92d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePNTPairingBound.Variant0c89f4d64c9de1465a75efc7e1c3fbc0edcee29e22b6f52fba697b541aeb0824","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c89f4d64c9de1465a75efc7e1c3fbc0edcee29e22b6f52fba697b541aeb0824","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourcePNTPairingBound.Variant0c89f4d64c9de1465a75efc7e1c3fbc0edcee29e22b6f52fba697b541aeb0824","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0c89f4d64c9de1465a75efc7e1c3fbc0edcee29e22b6f52fba697b541aeb0824","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/pnt-rate-one/SourcePNTPairingBoundStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTPairingBound


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePNTPairingBound.Variant0c89f4d64c9de1465a75efc7e1c3fbc0edcee29e22b6f52fba697b541aeb0824

noncomputable section

open FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTPairingBound
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.RiemannHypothesis.SourceComparison.CorrelationDifferenceMoments
open MeasureTheory Set Filter

example : correlationBudget = Real.sqrt (65 / 3) + 1 / 2 := rfl
example : 0 ≤ correlationBudget := correlationBudget_nonneg
example (A t : ℝ) (hA : 1 ≤ A) :
    |correlationDifference A t| ≤ correlationBudget := correlationDifference_uniform A t hA
example (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ errorProfile t * sourceWeight explicitSecondDerivative A t)
      volume lowerEndpoint (2 * A) := sourcePairing_intervalIntegrable A hA
example (a b : ℝ) :
    (∫ t in a..b, Real.exp (t / 2)) = 2 * Real.exp (b / 2) - 2 * Real.exp (a / 2) :=
  exp_half_intervalIntegral a b
example (A t D : ℝ) (hA : 1 ≤ A) (hD : 0 ≤ D)
    (he : |errorProfile t| ≤ D * Real.exp t) :
    |errorProfile t * sourceWeight explicitSecondDerivative A t| ≤
      D * correlationBudget * Real.exp (t / 2) := source_integrand_bound A t D hA hD he
example (A a b D : ℝ) (hA : 1 ≤ A) (hab : a ≤ b)
    (hD : 0 ≤ D) (he : ∀ t ∈ Icc a b, |errorProfile t| ≤ D * Real.exp t) :
    |∫ t in a..b, errorProfile t * sourceWeight explicitSecondDerivative A t| ≤
      2 * D * correlationBudget * Real.exp (b / 2) := source_interval_bound A a b D hA hab hD he
example (A C c : ℝ) (hA : 1 ≤ A) (hstart : lowerEndpoint ≤ A)
    (hC : 0 ≤ C)
    (hglobal : ∀ t ∈ Icc lowerEndpoint A, |errorProfile t| ≤ C * Real.exp t)
    (hpnt : ∀ t ∈ Icc A (2 * A),
      |errorProfile t| ≤ C * Real.exp t * Real.exp (-c * A ^ ((1 : ℝ) / 10))) :
    |signedPairing explicitSecondDerivative A| ≤
      2 * C * correlationBudget * (Real.exp (A / 2) +
        Real.exp A * Real.exp (-c * A ^ ((1 : ℝ) / 10))) :=
  signedPairing_bound A C c hA hstart hC hglobal hpnt
example : ∃ C ≥ 0, ∃ c > 0, ∀ᶠ A : ℝ in atTop,
      |signedPairing explicitSecondDerivative A| ≤
        C * (Real.exp (A / 2) + Real.exp A * Real.exp (-c * A ^ ((1 : ℝ) / 10))) :=
  signedPairing_eventual_bound
```
