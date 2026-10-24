# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointMonotonicitySourceStatements.Variantce1656d7f8d94336e43d82f68e4c73d17bf183bc2d2c626707fd54334ba53d71

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3d9065582e4f3903928724c8fded4a12fb33236` · SHA-256 `4f87da91774d2ac61c46dd4f74b64905cad34a18f04357c8a24b5f46051a6fe4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointMonotonicity.Variant6a58a8b79de3970fd887d314a792b3471f4104e8673020f45af557dfcde9883e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a58a8b79de3970fd887d314a792b3471f4104e8673020f45af557dfcde9883e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.EndpointMonotonicity.Variant6a58a8b79de3970fd887d314a792b3471f4104e8673020f45af557dfcde9883e","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"6a58a8b79de3970fd887d314a792b3471f4104e8673020f45af557dfcde9883e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/EndpointMonotonicitySourceStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.EndpointMonotonicity

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointMonotonicity.Variant6a58a8b79de3970fd887d314a792b3471f4104e8673020f45af557dfcde9883e

set_option autoImplicit false
namespace EndpointMonotonicitySourceExactStatements
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity DerivativeEnergy
noncomputable section

example (A x : ℝ) (hA : 3 ≤ A)
    (hx : x ∈ Icc (A - 3 / 4) A) :
    3 / 4 ≤ x / A ∧ x / A ≤ 1 ∧ A ^ 2 * (1 - (x / A) ^ 2) ^ 2 ≤ 9 / 4 :=
  EndpointMonotonicity.endpoint_scaled_bounds A x hA hx

example (A x : ℝ) (hA : 1 ≤ A) :
    normalizedInterior A x =
      (1 - (x / A) ^ 2) ^ 2 / (A ^ 2 * Real.sqrt A * Real.sqrt (sourceNormalization A)) *
        (8 * (7 * (x / A) ^ 2 - 1) - A ^ 2 * (1 - (x / A) ^ 2) ^ 2 / 4) :=
  EndpointMonotonicity.normalizedInterior_factor A x hA

example (A x : ℝ) (hA : 1 ≤ A) :
    normalizedInteriorDerivative A x =
      (x / A) * (1 - (x / A) ^ 2) /
        (A ^ 3 * Real.sqrt A * Real.sqrt (sourceNormalization A)) *
        (48 * (3 - 7 * (x / A) ^ 2) + 2 * A ^ 2 * (1 - (x / A) ^ 2) ^ 2) :=
  EndpointMonotonicity.normalizedInteriorDerivative_factor A x hA

example (A x : ℝ) (hA : 3 ≤ A)
    (hx : x ∈ Icc (A - 3 / 4) A) :
    0 ≤ normalizedTest explicitSecondDerivative A x :=
  EndpointMonotonicity.normalizedTest_endpoint_nonneg A x hA hx

example (A x : ℝ) (hA : 3 ≤ A)
    (hx : x ∈ Icc (A - 3 / 4) A) :
    deriv (normalizedTest explicitSecondDerivative A) x ≤ 0 :=
  EndpointMonotonicity.normalizedTest_derivative_endpoint_nonpos A x hA hx

example (A t x : ℝ) (hA : 3 ≤ A) (ht : 2 * A - 3 / 4 ≤ t) :
    0 ≤ normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - t) ∧
    deriv (normalizedTest explicitSecondDerivative A) x *
      normalizedTest explicitSecondDerivative A (x - t) ≤ 0 :=
  EndpointMonotonicity.endpoint_product_signs A t x hA ht

example (A t : ℝ) (hA : 3 ≤ A)
    (ht : 2 * A - 3 / 4 ≤ t) :
    0 ≤ sourceCorrelation explicitSecondDerivative A t :=
  EndpointMonotonicity.sourceCorrelation_endpoint_nonneg A t hA ht

example (A t : ℝ) (hA : 3 ≤ A)
    (ht : 2 * A - 3 / 4 ≤ t) :
    deriv (sourceCorrelation explicitSecondDerivative A) t ≤ 0 :=
  EndpointMonotonicity.sourceCorrelation_derivative_endpoint_nonpos A t hA ht

example (A t : ℝ) (hA : 3 ≤ A)
    (ht : 2 * A - 3 / 4 ≤ t) :
    CorrelationDifferenceMoments.correlationDifference A t ≤ 0 :=
  EndpointMonotonicity.correlationDifference_endpoint_nonpos A t hA ht

example (A q : ℝ) (hA : 3 ≤ A)
    (hq : Real.exp (2 * A) / 4 ≤ q) :
    deriv (SourceSampling.sourceSamplingKernel A) q ≤ 0 :=
  EndpointMonotonicity.sourceSamplingKernel_derivative_upper_nonpos A q hA hq

end
end EndpointMonotonicitySourceExactStatements
```
