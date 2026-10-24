# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SharedCoefficientDefinition.Variant326e7b306461d637ddc26ffc5a1f8325c68ebbeb9fa33cf115c116f7d18b85fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77a4148685afdfdcde75eea0743e238116bec38a` · SHA-256 `b6502c4febae982d03a46a248f6d32e5011962c23e4df399df3cb85dbb966231`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DampedDivisorCoefficient.Variant5d1d8430d4ec1401de8fc4ee7ce3570a7eb0f4b1af50c5c66deca06c158de6bb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d1d8430d4ec1401de8fc4ee7ce3570a7eb0f4b1af50c5c66deca06c158de6bb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.DampedDivisorCoefficient.Variant5d1d8430d4ec1401de8fc4ee7ce3570a7eb0f4b1af50c5c66deca06c158de6bb","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"5d1d8430d4ec1401de8fc4ee7ce3570a7eb0f4b1af50c5c66deca06c158de6bb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/damped-divisor-core/shared-coefficient-definition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DampedDivisorCoefficient.Variant5d1d8430d4ec1401de8fc4ee7ce3570a7eb0f4b1af50c5c66deca06c158de6bb

namespace FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorCoefficient
open Finset
noncomputable section
/-- The original finite Möbius divisor sum with its exact exponential damping. -/
def dampedDivisorCoefficient (ε : ℝ) (n : ℕ) : ℝ :=
  ∑ d ∈ n.divisors, (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ))

end
end FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorCoefficient
```
