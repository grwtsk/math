# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HomogeneityDefectSourceStatements.Variant41aa74c7a42ca38739b2369f81e5c5f0546992e62f3bfe1499e18eac9cdc70ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78901c7ae8ad45684c934c2ebe2a282156d4fa7e` · SHA-256 `41aa74c7a42ca38739b2369f81e5c5f0546992e62f3bfe1499e18eac9cdc70ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.HomogeneityDefect
set_option autoImplicit false
section SourceHomogeneityDefectStatements
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization SourceSampling SourceSamplingDerivative CorrelationDifferenceMoments
open CorrelationSecondMoment CorrelationPrimitive CorrelationPrimitiveMoments
open RealThetaKernel RealThetaDerivative CorrelationSecondDerivative CorrelationThirdDerivative
open CorrelationRegularity CorrelationMoment CorrelationFirstMoment SourcePrimitiveSampling
open FormalResearch.RiemannHypothesis.SourceComparison.HomogeneityDefect

example (A x : ℝ) : correlationPrimeSample A x =
    ∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      deriv (sourceCorrelation explicitSecondDerivative A) (Real.log (x * (k : ℝ))) := rfl

example (A q : ℝ) : correlationPrimeTheta A q =
    ∑ k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊, correlationPrimeSample A (q * (k : ℝ)) := rfl

example (A t : ℝ) : negativePrimePrimitive A t =
    correlationPrimitive A t / 2 - sourceCorrelation explicitSecondDerivative A t := rfl

example (A x : ℝ) : primePrimitiveSample A x =
    ∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      negativePrimePrimitive A (Real.log (x * (k : ℝ))) := rfl

example (A x : ℝ) :
    correlationPrimeSample A x = differenceSamplingKernel A x + sourceSamplingKernel A x / 2 :=
  correlationPrimeSample_eq A x

example (A q : ℝ) :
    correlationPrimeTheta A q = realThetaDifferenceKernel A q + realThetaKernel A q / 2 :=
  correlationPrimeTheta_eq A q

example (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    q * deriv (realThetaRemainder A) q + realThetaRemainder A q / 2 =
      correlationPrimeTheta A q + sourceRankOneCoefficient A / (2 * q) :=
  homogeneity_defect_eq A q hA hq

example (A t : ℝ) (hA : 1 ≤ A) :
    negativePrimePrimitive A t = -deriv (correlationPrimitive A) t :=
  negativePrimePrimitive_eq A t hA

example (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (negativePrimePrimitive A) :=
  negativePrimePrimitive_contDiff A hA

example (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (negativePrimePrimitive A) :=
  negativePrimePrimitive_compact A hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |negativePrimePrimitive A t| ≤ 2 * Real.sqrt (65 / 3) / A :=
  negativePrimePrimitive_abs_le A t hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (negativePrimePrimitive A) t| ≤ 2 * Real.sqrt (65 / 3) / A :=
  negativePrimePrimitive_derivative_abs_le A t hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, Real.exp (t / 2) * negativePrimePrimitive A t) = 0 ∧
      (∫ t : ℝ, t * Real.exp (t / 2) * negativePrimePrimitive A t) =
        -sourceRankOneCoefficient A / 2 :=
  negativePrimePrimitive_moments A hA

example (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ t) :
    negativePrimePrimitive A t = 0 :=
  negativePrimePrimitive_zero_right A t hA ht

example (A x : ℝ) :
    primePrimitiveSample A x = -sourcePrimitiveSamplingKernel A x / 2 - sourceSamplingKernel A x :=
  primePrimitiveSample_eq A x

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    IntegrableOn (fun x ↦ correlationPrimeSample A (q * x)) (Set.Ioi 1) :=
  primeSample_rescaled_integrable A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    (∫ x in Set.Ioi (1 : ℝ), correlationPrimeSample A (q * x)) = primePrimitiveSample A q :=
  primeSample_integral_eq_primitive A q hA hq

example (A x u : ℝ) (F : ℝ → ℝ) (hx : 0 < x) (hu : 0 < u)
    (hzero : ∀ t, 2 * A ≤ t → F t = 0) (hcut : Real.exp (2 * A) ≤ x * u) :
    TwoMomentSampling.samplingIntegrand F x u = 0 :=
  sampling_zero A x u F hx hu hzero hcut

example (A x : ℝ) (F : ℝ → ℝ) (hx : 0 < x)
    (hzero : ∀ t, 2 * A ≤ t → F t = 0) :
    (∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      F (Real.log (x * (k : ℝ)))) =
      ∑ k ∈ Icc 1 (⌊Real.exp (2 * A) / x⌋₊ + 1), TwoMomentSampling.samplingIntegrand F x k :=
  strict_sample_eq_padded A x F hx hzero

example (A x : ℝ) (F : ℝ → ℝ) (hx : 0 < x)
    (hzero : ∀ t, 2 * A ≤ t → F t = 0)
    (u : ℝ) (hu : (⌊Real.exp (2 * A) / x⌋₊ + 1 : ℕ) ≤ u) :
    TwoMomentSampling.samplingIntegrand F x u = 0 :=
  sampling_padded_endpoint_zero A x F hx hzero u hu

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |primePrimitiveSample A x + sourceRankOneCoefficient A / (2 * x)| ≤
      (24 * Real.sqrt (65 / 3) / A) / Real.sqrt x :=
  primePrimitiveSample_add_rankOne_abs_le A x hA hx

example (A t : ℝ) (hA : 1 ≤ A) :
    deriv (correlationDifference A) t =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2 :=
  difference_derivative_eq A t hA

example (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (deriv (correlationDifference A)) :=
  difference_derivative_contDiff A hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (deriv (correlationDifference A)) t| ≤
      Real.sqrt (325325 / 18) / A ^ 3 + 65 / (6 * A ^ 2) :=
  difference_second_derivative_abs_le A t hA

example (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ t) :
    deriv (correlationDifference A) t = 0 :=
  difference_derivative_zero_right A t hA ht

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      deriv (correlationDifference A) (Real.log (x * (k : ℝ)))| ≤
      (4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt x :=
  difference_derivative_sampling_abs_le A x hA hx

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    HasDerivAt (correlationPrimeSample A)
      (1 / x * ∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
        deriv (correlationDifference A) (Real.log (x * (k : ℝ)))) x :=
  primeSample_hasDerivAt A x hA hx

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |deriv (correlationPrimeSample A) x| ≤
      (4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / (x * Real.sqrt x) :=
  primeSample_derivative_abs_le A x hA hx

example (A q x : ℝ) (hA : 1 ≤ A) (hq : 0 < q) (hx : 0 < x) :
    HasDerivAt (fun t : ℝ ↦ correlationPrimeSample A (q * t))
      (q * deriv (correlationPrimeSample A) (q * x)) x :=
  scaledPrimeSample_hasDerivAt A q x hA hq hx

example (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    IntegrableOn (deriv (fun t : ℝ ↦ correlationPrimeSample A (q * t))) (Set.Ioi 1) :=
  scaledPrimeSample_derivative_integrable A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    (∫ t in Set.Ioi (1 : ℝ), |deriv (fun t : ℝ ↦ correlationPrimeSample A (q * t)) t|) ≤
      2 * (4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q :=
  scaledPrimeSample_variation_le A q hA hq

example (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2 * A) ≤ x) : correlationPrimeSample A x = 0 :=
  primeSample_zero_of_exp_le A x hx hcut

example (A q : ℝ) (hq : 1 ≤ q) :
    correlationPrimeTheta A q =
      ∑ k ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1), correlationPrimeSample A (q * (k : ℝ)) :=
  primeTheta_eq_padded_sum A q hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |correlationPrimeTheta A q -
      (∫ t in Set.Ioi (1 : ℝ), correlationPrimeSample A (q * t))| ≤
      2 * (4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q :=
  primeTheta_sub_integral_abs_le A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |correlationPrimeTheta A q + sourceRankOneCoefficient A / (2 * q)| ≤
      (32 * Real.sqrt (65 / 3) / A + 20 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q :=
  primeTheta_add_rankOne_abs_le A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |q * deriv (realThetaRemainder A) q + realThetaRemainder A q / 2| ≤
      (32 * Real.sqrt (65 / 3) / A + 20 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q :=
  homogeneity_defect_abs_le A q hA hq

end SourceHomogeneityDefectStatements
```
