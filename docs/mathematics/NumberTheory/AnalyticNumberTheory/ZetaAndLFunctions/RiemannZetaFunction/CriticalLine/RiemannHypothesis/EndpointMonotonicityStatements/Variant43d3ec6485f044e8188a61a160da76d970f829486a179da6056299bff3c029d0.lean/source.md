# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointMonotonicityStatements.Variant43d3ec6485f044e8188a61a160da76d970f829486a179da6056299bff3c029d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b685a22800aff050adfba1b1e5f454ba3bebb61` · SHA-256 `43d3ec6485f044e8188a61a160da76d970f829486a179da6056299bff3c029d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.mertens.EndpointMonotonicity
set_option autoImplicit false
namespace EndpointMonotonicityExactStatements
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity DerivativeEnergy
noncomputable section

example (A x : ℝ) (hA : 3 ≤ A)
    (hx : x ∈ Icc (A - 3 / 4) A) :
    3 / 4 ≤ x / A ∧ x / A ≤ 1 ∧ A ^ 2 * (1 - (x / A) ^ 2) ^ 2 ≤ 9 / 4 :=
  EndpointMonotonicityScratch.endpoint_scaled_bounds A x hA hx

example (A x : ℝ) (hA : 1 ≤ A) :
    normalizedInterior A x =
      (1 - (x / A) ^ 2) ^ 2 / (A ^ 2 * Real.sqrt A * Real.sqrt (sourceNormalization A)) *
        (8 * (7 * (x / A) ^ 2 - 1) - A ^ 2 * (1 - (x / A) ^ 2) ^ 2 / 4) :=
  EndpointMonotonicityScratch.normalizedInterior_factor A x hA

example (A x : ℝ) (hA : 1 ≤ A) :
    normalizedInteriorDerivative A x =
      (x / A) * (1 - (x / A) ^ 2) /
        (A ^ 3 * Real.sqrt A * Real.sqrt (sourceNormalization A)) *
        (48 * (3 - 7 * (x / A) ^ 2) + 2 * A ^ 2 * (1 - (x / A) ^ 2) ^ 2) :=
  EndpointMonotonicityScratch.normalizedInteriorDerivative_factor A x hA

example (A x : ℝ) (hA : 3 ≤ A)
    (hx : x ∈ Icc (A - 3 / 4) A) :
    0 ≤ normalizedTest explicitSecondDerivative A x :=
  EndpointMonotonicityScratch.normalizedTest_endpoint_nonneg A x hA hx

example (A x : ℝ) (hA : 3 ≤ A)
    (hx : x ∈ Icc (A - 3 / 4) A) :
    deriv (normalizedTest explicitSecondDerivative A) x ≤ 0 :=
  EndpointMonotonicityScratch.normalizedTest_derivative_endpoint_nonpos A x hA hx

example (A t x : ℝ) (hA : 3 ≤ A) (ht : 2 * A - 3 / 4 ≤ t) :
    0 ≤ normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - t) ∧
    deriv (normalizedTest explicitSecondDerivative A) x *
      normalizedTest explicitSecondDerivative A (x - t) ≤ 0 :=
  EndpointMonotonicityScratch.endpoint_product_signs A t x hA ht

example (A t : ℝ) (hA : 3 ≤ A)
    (ht : 2 * A - 3 / 4 ≤ t) :
    0 ≤ sourceCorrelation explicitSecondDerivative A t :=
  EndpointMonotonicityScratch.sourceCorrelation_endpoint_nonneg A t hA ht

example (A t : ℝ) (hA : 3 ≤ A)
    (ht : 2 * A - 3 / 4 ≤ t) :
    deriv (sourceCorrelation explicitSecondDerivative A) t ≤ 0 :=
  EndpointMonotonicityScratch.sourceCorrelation_derivative_endpoint_nonpos A t hA ht

example (A t : ℝ) (hA : 3 ≤ A)
    (ht : 2 * A - 3 / 4 ≤ t) :
    CorrelationDifferenceMoments.correlationDifference A t ≤ 0 :=
  EndpointMonotonicityScratch.correlationDifference_endpoint_nonpos A t hA ht

example (A q : ℝ) (hA : 3 ≤ A)
    (hq : Real.exp (2 * A) / 4 ≤ q) :
    deriv (SourceSampling.sourceSamplingKernel A) q ≤ 0 :=
  EndpointMonotonicityScratch.sourceSamplingKernel_derivative_upper_nonpos A q hA hq

end
end EndpointMonotonicityExactStatements
```
