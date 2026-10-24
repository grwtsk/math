# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SamplingSecondDerivativeExactStatements.Variant44526518db6bd37bc8143c1ceb1e9181527c32c4f8e1d35f34a8d2151afa1600

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1af8d9ba1a9bda3b75b1f3c3a0b96eaa188df7d` · SHA-256 `44526518db6bd37bc8143c1ceb1e9181527c32c4f8e1d35f34a8d2151afa1600`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.SamplingSecondDerivative

set_option autoImplicit false

open MeasureTheory Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationDifferenceMoments SourceSampling

example (A t : ℝ) : SamplingSecondDerivative.secondDifference A t =
    deriv (correlationDifference A) t - (3 / 2) * correlationDifference A t := rfl

example (A t : ℝ) (hA : 1 ≤ A) :
    SamplingSecondDerivative.secondDifference A t =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        2 * deriv (sourceCorrelation explicitSecondDerivative A) t +
        (3 / 4) * sourceCorrelation explicitSecondDerivative A t :=
  SamplingSecondDerivative.secondDifference_eq A t hA

example (A : ℝ) (hA : 1 ≤ A) : Continuous (SamplingSecondDerivative.secondDifference A) :=
  SamplingSecondDerivative.secondDifference_continuous A hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |SamplingSecondDerivative.secondDifference A t| ≤
      65 / (3 * A ^ 2) + 2 * Real.sqrt (65 / 3) / A + 3 / 4 :=
  SamplingSecondDerivative.secondDifference_abs_le A t hA

example (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ t) :
    SamplingSecondDerivative.secondDifference A t = 0 :=
  SamplingSecondDerivative.secondDifference_zero_right A t hA ht

example (A x k : ℝ) (hA : 1 ≤ A) (hx : 0 < x) (hk : 0 < k) :
    HasDerivAt (fun y : ℝ ↦ 1 / y * (Real.log k / Real.sqrt (y * k) *
      correlationDifference A (Real.log (y * k))))
      (1 / x ^ 2 * (Real.log k / Real.sqrt (x * k) *
        SamplingSecondDerivative.secondDifference A (Real.log (x * k)))) x :=
  SamplingSecondDerivative.derivative_sampling_term_hasDerivAt A x k hA hx hk

example (A x : ℝ) (N : ℕ) (hA : 1 ≤ A) (hx : 0 < x)
    (hN : Real.exp (2 * A) / x ≤ (N : ℝ)) :
    (∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      SamplingSecondDerivative.secondDifference A (Real.log (x * (k : ℝ)))) =
      ∑ k ∈ Finset.Icc 1 N, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
        SamplingSecondDerivative.secondDifference A (Real.log (x * (k : ℝ))) :=
  SamplingSecondDerivative.second_difference_sum_eq_fixed_sum A x N hA hx hN

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    HasDerivAt (deriv (sourceSamplingKernel A))
      (1 / x ^ 2 * ∑ k ∈ samplingIndices A x,
        Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
          SamplingSecondDerivative.secondDifference A (Real.log (x * (k : ℝ)))) x :=
  SamplingSecondDerivative.sourceSamplingKernel_derivative_hasDerivAt A x hA hx

example (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) (hs : HasCompactSupport F) :
    (∫ t : ℝ, t ^ 2 * Real.exp (t / 2) * deriv F t) =
      -(2 * (∫ t : ℝ, t * Real.exp (t / 2) * F t) +
        (1 / 2) * ∫ t : ℝ, t ^ 2 * Real.exp (t / 2) * F t) :=
  SamplingSecondDerivative.derivative_secondMoment F hF hs

example (A : ℝ) (hA : 1 ≤ A) :
    (1 / 2 : ℝ) * (∫ t : ℝ, t ^ 2 * Real.exp (t / 2) * correlationDifference A t) =
      -CorrelationSecondMoment.sourceRankOneCoefficient A :=
  SamplingSecondDerivative.correlationDifference_secondMoment A hA
```
