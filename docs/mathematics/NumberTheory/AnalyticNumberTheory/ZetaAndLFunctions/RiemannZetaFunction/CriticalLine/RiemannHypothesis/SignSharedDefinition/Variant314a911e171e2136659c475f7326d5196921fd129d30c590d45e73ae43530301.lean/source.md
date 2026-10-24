# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SignSharedDefinition.Variant314a911e171e2136659c475f7326d5196921fd129d30c590d45e73ae43530301

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58dd5fe0c7bf6b009ef342aa284502367874bc23` · SHA-256 `8298908714923d3a4a120b553c7551e02d63d73b3a820e2c2dd7fd54884d58cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TruncatedDivisorCoefficient.Variantbca2c2f48ad7dfe2a09afd1dae14e53cb19a88c84518c98b50c7d28403f07b32","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bca2c2f48ad7dfe2a09afd1dae14e53cb19a88c84518c98b50c7d28403f07b32","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.TruncatedDivisorCoefficient.Variantbca2c2f48ad7dfe2a09afd1dae14e53cb19a88c84518c98b50c7d28403f07b32","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"bca2c2f48ad7dfe2a09afd1dae14e53cb19a88c84518c98b50c7d28403f07b32","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/damped-divisor-core/sign-shared-definition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TruncatedDivisorCoefficient.Variantbca2c2f48ad7dfe2a09afd1dae14e53cb19a88c84518c98b50c7d28403f07b32

namespace FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual
noncomputable section
def truncatedDivisorCoefficient (X : ℕ) (ε : ℝ) (n : ℕ) : ℝ :=
  ∑ d ∈ n.divisors.filter (fun d => d ≤ X),
    (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ))
end
end FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual
```
