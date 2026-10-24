import FormalResearch.RiemannHypothesis.SourceComparison.EndpointMonotonicity
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
