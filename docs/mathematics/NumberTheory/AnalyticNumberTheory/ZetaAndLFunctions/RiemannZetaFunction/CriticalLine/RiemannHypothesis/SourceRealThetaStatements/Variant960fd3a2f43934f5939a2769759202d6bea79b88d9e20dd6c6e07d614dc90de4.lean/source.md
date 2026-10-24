# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceRealThetaStatements.Variant960fd3a2f43934f5939a2769759202d6bea79b88d9e20dd6c6e07d614dc90de4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3781a6205a914e74381ef1f18d4f3450765ca087` · SHA-256 `960fd3a2f43934f5939a2769759202d6bea79b88d9e20dd6c6e07d614dc90de4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.SourceClassVariation

namespace SourceRealThetaIntegrationStatements
open FormalResearch.RiemannHypothesis.SourceComparison.RealThetaKernel
open FormalResearch.RiemannHypothesis.SourceComparison.RealThetaDerivative
open FormalResearch.RiemannHypothesis.SourceComparison.KernelVariation
open FormalResearch.RiemannHypothesis.SourceComparison.SourceClassVariation
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization SourceSampling SourceSamplingDerivative CorrelationDifferenceMoments
open CorrelationSecondMoment CorrelationPrimitive CorrelationPrimitiveMoments
open InnerPrimitiveTransport
open CorrelationSecondDerivative CorrelationThirdDerivative SamplingSecondDerivative
noncomputable section
example (A q : ℝ) :
    RealThetaKernel.realThetaKernel A q =
  ∑ k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊, sourceSamplingKernel A (q * (k : ℝ)) := rfl

example (A x : ℝ) :
    RealThetaKernel.differenceSamplingKernel A x =
  ∑ l ∈ samplingIndices A x, Real.log (l : ℝ) / Real.sqrt (x * (l : ℝ)) *
    correlationDifference A (Real.log (x * (l : ℝ))) := rfl

example (A q : ℝ) :
    RealThetaKernel.realThetaDifferenceKernel A q =
  ∑ k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊, differenceSamplingKernel A (q * (k : ℝ)) := rfl

example (A q : ℝ) :
    RealThetaKernel.realThetaRemainder A q =
  realThetaKernel A q - sourceRankOneCoefficient A / q := rfl

example (A x : ℝ) :
    RealThetaKernel.differencePrimitiveSamplingKernel A x =
  ∑ l ∈ samplingIndices A x, Real.log (l : ℝ) / Real.sqrt (x * (l : ℝ)) *
    (correlationPrimitive A (Real.log (x * (l : ℝ))) -
      sourceCorrelation explicitSecondDerivative A (Real.log (x * (l : ℝ)))) := rfl

example (A q : ℝ) (l : ℕ) (x : ℝ) :
    RealThetaKernel.differenceInnerTerm A q l x =
  Real.log (l : ℝ) / Real.sqrt ((q * x) * (l : ℝ)) *
    correlationDifference A (Real.log ((q * x) * (l : ℝ))) := rfl

example (A t : ℝ) :
    RealThetaDerivative.iteratedDifference A t =
  deriv (correlationDifference A) t - correlationDifference A t / 2 := rfl

example (E : ℝ → ℝ) (h : ℝ) (G : ℕ) :
    KernelVariation.composedVariation E h G =
  Real.sqrt (G : ℝ) * |E (h * (G : ℝ) ^ 2)| +
    ∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
      |E (h * (j : ℝ) ^ 2) - E (h * ((j + 1 : ℕ) : ℝ) ^ 2)| := rfl

example (A x : ℝ) (hx : 1 ≤ x) :
    samplingIndices A x = (Icc 1 ⌊Real.exp (2 * A)⌋₊).filter
      (fun l : ℕ ↦ x * (l : ℝ) < Real.exp (2 * A)) :=
  RealThetaKernel.samplingIndices_eq_fixed_filter A x hx

example (A q : ℝ) (hq : 1 ≤ q) :
    realThetaKernel A q = ∑ k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊,
      ∑ l ∈ (Icc 1 ⌊Real.exp (2 * A)⌋₊).filter
        (fun l : ℕ ↦ (q * (k : ℝ)) * (l : ℝ) < Real.exp (2 * A)),
        Real.log (l : ℝ) / Real.sqrt ((q * (k : ℝ)) * (l : ℝ)) *
          sourceCorrelation explicitSecondDerivative A
            (Real.log ((q * (k : ℝ)) * (l : ℝ))) :=
  RealThetaKernel.realThetaKernel_eq_strict_sum A q hq

example (A : ℝ) (q : ℕ) (hq : 1 ≤ q) :
    realThetaKernel A (q : ℝ) = ThetaKernelTransport.thetaKernel A q :=
  RealThetaKernel.realThetaKernel_eq_nat A q hq

example (A : ℝ) (q : ℕ) (hq : 1 ≤ q) :
    realThetaRemainder A (q : ℝ) = ThetaRemainder.thetaRemainder A q :=
  RealThetaKernel.realThetaRemainder_eq_nat A q hq

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    differenceSamplingKernel A x = x * deriv (sourceSamplingKernel A) x :=
  RealThetaKernel.differenceSamplingKernel_eq_mul_deriv A x hA hx

example (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    HasDerivAt (realThetaKernel A)
      (1 / q * realThetaDifferenceKernel A q) q :=
  RealThetaKernel.realThetaKernel_hasDerivAt A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    deriv (realThetaKernel A) q = 1 / q * realThetaDifferenceKernel A q :=
  RealThetaKernel.realThetaKernel_deriv A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    HasDerivAt (realThetaRemainder A)
      (1 / q * (realThetaDifferenceKernel A q + sourceRankOneCoefficient A / q)) q :=
  RealThetaKernel.realThetaRemainder_hasDerivAt A q hA hq

example (A : ℝ) (hA : 1 ≤ A) :
    DifferentiableOn ℝ (realThetaRemainder A) (Set.Ioi 0) :=
  RealThetaKernel.realThetaRemainder_differentiableOn A hA

example (A s : ℝ) (hA : 1 ≤ A) :
    Real.exp (-s / 2) * (∫ t in (-2 * A)..s,
      Real.exp (t / 2) * correlationDifference A t) =
      sourceCorrelation explicitSecondDerivative A s - correlationPrimitive A s :=
  RealThetaKernel.difference_primitive_eq A s hA

example (A x : ℝ) :
    differencePrimitiveSamplingKernel A x =
      -SourcePrimitiveSampling.sourcePrimitiveSamplingKernel A x - sourceSamplingKernel A x :=
  RealThetaKernel.differencePrimitiveSamplingKernel_eq A x

example (A x : ℝ)
    (hA : 1 ≤ A) (hx : 0 < x) :
    |differencePrimitiveSamplingKernel A x + sourceRankOneCoefficient A / x| ≤
      (24 + 12 * Real.sqrt (65 / 3) / A) / Real.sqrt x :=
  RealThetaKernel.differencePrimitiveSamplingKernel_add_rankOne_abs_le A x hA hx

example (A x : ℝ)
    (hA : 1 ≤ A) (hx : 1 ≤ x) :
    differencePrimitiveSamplingKernel A x =
      ∑ l ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1),
        Real.log (l : ℝ) / Real.sqrt (x * (l : ℝ)) *
          (correlationPrimitive A (Real.log (x * (l : ℝ))) -
            sourceCorrelation explicitSecondDerivative A (Real.log (x * (l : ℝ)))) :=
  RealThetaKernel.differencePrimitiveSamplingKernel_eq_fixed_sum A x hA hx

example (A s : ℝ) (hA : 1 ≤ A) :
    (∫ r in Set.Ioi (0 : ℝ), Real.exp (r / 2) * correlationDifference A (s + r)) =
      correlationPrimitive A s - sourceCorrelation explicitSecondDerivative A s :=
  RealThetaKernel.difference_tail_eq_primitive A s hA

example (A y : ℝ) (hA : 1 ≤ A) (hy : 0 < y) :
    (∫ x in Set.Ioi (1 : ℝ), rootWeight (correlationDifference A) y x) =
      (1 / Real.sqrt y) * (correlationPrimitive A (Real.log y) -
        sourceCorrelation explicitSecondDerivative A (Real.log y)) :=
  RealThetaKernel.rootWeight_difference_integral A y hA hy

example (A q x : ℝ) (l : ℕ)
    (hq : 0 < q) (hx : 0 < x) (hl : 1 ≤ l) :
    differenceInnerTerm A q l x = Real.log (l : ℝ) *
      rootWeight (correlationDifference A) (q * (l : ℝ)) x :=
  RealThetaKernel.differenceInnerTerm_eq A q x l hq hx hl

example (A q : ℝ) (l : ℕ)
    (hA : 1 ≤ A) (hq : 0 < q) (hl : 1 ≤ l) :
    IntegrableOn (differenceInnerTerm A q l) (Set.Ioi 1) :=
  RealThetaKernel.differenceInnerTerm_integrable A q l hA hq hl

example (A q : ℝ) (l : ℕ)
    (hA : 1 ≤ A) (hq : 0 < q) (hl : 1 ≤ l) :
    (∫ x in Set.Ioi (1 : ℝ), differenceInnerTerm A q l x) =
      Real.log (l : ℝ) / Real.sqrt (q * (l : ℝ)) *
        (correlationPrimitive A (Real.log (q * (l : ℝ))) -
          sourceCorrelation explicitSecondDerivative A (Real.log (q * (l : ℝ)))) :=
  RealThetaKernel.differenceInnerTerm_integral A q l hA hq hl

example (A q x : ℝ)
    (hA : 1 ≤ A) (hq : 1 ≤ q) (hx : 1 ≤ x) :
    differenceSamplingKernel A (q * x) =
      ∑ l ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1), differenceInnerTerm A q l x :=
  RealThetaKernel.differenceKernel_eq_inner_sum A q x hA hq hx

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    IntegrableOn (fun x ↦ differenceSamplingKernel A (q * x)) (Set.Ioi 1) :=
  RealThetaKernel.differenceKernel_rescaled_integrable A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    (∫ x in Set.Ioi (1 : ℝ), differenceSamplingKernel A (q * x)) =
      differencePrimitiveSamplingKernel A q :=
  RealThetaKernel.differenceKernel_integral_eq_primitive A q hA hq

example (A q : ℝ)
    (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |(∫ x in Set.Ioi (1 : ℝ), differenceSamplingKernel A (q * x)) +
      sourceRankOneCoefficient A / q| ≤
      (24 + 12 * Real.sqrt (65 / 3) / A) / Real.sqrt q :=
  RealThetaKernel.differenceKernel_integral_add_rankOne_abs_le A q hA hq

example (A t : ℝ) (hA : 1 ≤ A) :
    iteratedDifference A t = deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
      deriv (sourceCorrelation explicitSecondDerivative A) t +
      sourceCorrelation explicitSecondDerivative A t / 4 :=
  RealThetaDerivative.iteratedDifference_eq A t hA

example (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (iteratedDifference A) :=
  RealThetaDerivative.iteratedDifference_contDiff A hA

example (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (iteratedDifference A) :=
  RealThetaDerivative.iteratedDifference_hasCompactSupport A hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |iteratedDifference A t| ≤
      65 / (3 * A ^ 2) + Real.sqrt (65 / 3) / A + 1 / 4 :=
  RealThetaDerivative.iteratedDifference_abs_le A t hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (iteratedDifference A) t| ≤
      Real.sqrt (325325 / 18) / A ^ 3 + 65 / (3 * A ^ 2) + Real.sqrt (65 / 3) / (4 * A) :=
  RealThetaDerivative.iteratedDifference_derivative_abs_le A t hA

example (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F)
    (hs : HasCompactSupport F)
    (hz0 : (∫ t : ℝ, Real.exp (t / 2) * F t) = 0)
    (hz1 : (∫ t : ℝ, t * Real.exp (t / 2) * F t) = 0) :
    (∫ t : ℝ, Real.exp (t / 2) * deriv F t) = 0 ∧
      (∫ t : ℝ, t * Real.exp (t / 2) * deriv F t) = 0 :=
  RealThetaDerivative.compact_derivative_two_moments_zero F hF hs hz0 hz1

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, Real.exp (t / 2) * iteratedDifference A t) = 0 ∧
      (∫ t : ℝ, t * Real.exp (t / 2) * iteratedDifference A t) = 0 :=
  RealThetaDerivative.iteratedDifference_two_moments_zero A hA

example (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ t) :
    iteratedDifference A t = 0 :=
  RealThetaDerivative.iteratedDifference_zero_right A t hA ht

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    HasDerivAt (differenceSamplingKernel A)
      (1 / x * ∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
        iteratedDifference A (Real.log (x * (k : ℝ)))) x :=
  RealThetaDerivative.differenceSamplingKernel_hasDerivAt A x hA hx

example (A x u : ℝ) (hA : 1 ≤ A)
    (hx : 0 < x) (hu : 0 < u) (hcut : Real.exp (2 * A) ≤ x * u) :
    TwoMomentSampling.samplingIntegrand (iteratedDifference A) x u = 0 :=
  RealThetaDerivative.iteratedDifference_sampling_zero A x u hA hx hu hcut

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      iteratedDifference A (Real.log (x * (k : ℝ)))| ≤
      (2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt x :=
  RealThetaDerivative.iteratedDifference_sampling_sum_abs_le A x hA hx

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |deriv (differenceSamplingKernel A) x| ≤
      (2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / (x * Real.sqrt x) :=
  RealThetaDerivative.differenceSamplingKernel_derivative_abs_le A x hA hx

example (q C t : ℝ) (hq : 0 < q) (ht : 0 < t) :
    q * (C / (q * t * Real.sqrt (q * t))) =
      (C / Real.sqrt q) * t ^ (-(3 / 2 : ℝ)) :=
  RealThetaDerivative.inverse_root_majorant_eq q C t hq ht

example (q C : ℝ) (hq : 0 < q) :
    IntegrableOn (fun t : ℝ ↦ q * (C / (q * t * Real.sqrt (q * t)))) (Set.Ioi 1) :=
  RealThetaDerivative.inverse_root_majorant_integrable q C hq

example (q C : ℝ) (hq : 0 < q) :
    (∫ t in Set.Ioi (1 : ℝ), q * (C / (q * t * Real.sqrt (q * t)))) =
      2 * C / Real.sqrt q :=
  RealThetaDerivative.inverse_root_majorant_integral q C hq

example (A q x : ℝ) (hA : 1 ≤ A) (hq : 0 < q) (hx : 0 < x) :
    HasDerivAt (fun t : ℝ ↦ differenceSamplingKernel A (q * t))
      (q * deriv (differenceSamplingKernel A) (q * x)) x :=
  RealThetaDerivative.scaledDifference_hasDerivAt A q x hA hq hx

example (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    IntegrableOn (deriv (fun t : ℝ ↦ differenceSamplingKernel A (q * t))) (Set.Ioi 1) :=
  RealThetaDerivative.scaledDifference_derivative_integrable A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    (∫ t in Set.Ioi (1 : ℝ), |deriv (fun t : ℝ ↦ differenceSamplingKernel A (q * t)) t|) ≤
      2 * (2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q :=
  RealThetaDerivative.scaledDifference_variation_le A q hA hq

example (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2 * A) ≤ x) : differenceSamplingKernel A x = 0 :=
  RealThetaDerivative.differenceSamplingKernel_zero_of_exp_le A x hx hcut

example (A q : ℝ) (hq : 1 ≤ q) :
    realThetaDifferenceKernel A q =
      ∑ k ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1), differenceSamplingKernel A (q * (k : ℝ)) :=
  RealThetaDerivative.realThetaDifferenceKernel_eq_padded_sum A q hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |realThetaDifferenceKernel A q -
      (∫ t in Set.Ioi (1 : ℝ), differenceSamplingKernel A (q * t))| ≤
      2 * (2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q :=
  RealThetaDerivative.realThetaDifferenceKernel_sub_integral_abs_le A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |realThetaDifferenceKernel A q + sourceRankOneCoefficient A / q| ≤
      (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q :=
  RealThetaDerivative.realThetaDifferenceKernel_add_rankOne_abs_le A q hA hq

example (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |deriv (realThetaRemainder A) q| ≤
      (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / (q * Real.sqrt q) :=
  RealThetaDerivative.realThetaRemainder_derivative_abs_le A q hA hq

example (f f' : ℝ → ℝ) (B x y : ℝ)
    (hx : 1 ≤ x) (hxy : x ≤ y) (hc : ContinuousOn f (Set.Ici 1))
    (hd : ∀ t : ℝ, 1 < t → HasDerivAt f (f' t) t)
    (hb : ∀ t : ℝ, 1 < t → |f' t| ≤ B / t ^ 2) :
    |f x - f y| ≤ B * (1 / x - 1 / y) :=
  KernelVariation.abs_sub_le_reciprocal f f' B x y hx hxy hc hd hb

example (j : ℕ) (hj : 1 ≤ j) :
    Real.sqrt (j : ℝ) * (1 / (j : ℝ) - 1 / ((j : ℝ) + 1)) ≤
      2 * (1 / Real.sqrt (j : ℝ) - 1 / Real.sqrt ((j : ℝ) + 1)) :=
  KernelVariation.sqrt_reciprocal_step_le j hj

example (G : ℕ) :
    (∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
      (1 / (j : ℝ) - 1 / ((j : ℝ) + 1))) ≤ 2 :=
  KernelVariation.sqrt_reciprocal_variation_le G

example (E : ℝ → ℝ) (h K' x y : ℝ)
    (hh : 1 ≤ h) (hx : 1 ≤ x) (hxy : x ≤ y)
    (hc : ContinuousOn E (Set.Ici 1))
    (hd : ∀ q : ℝ, 1 < q → DifferentiableAt ℝ E q)
    (hb : ∀ q : ℝ, 1 < q → |deriv E q| ≤ K' / (q * Real.sqrt q)) :
    |E (h * x ^ 2) - E (h * y ^ 2)| ≤
      (2 * K' / Real.sqrt h) * (1 / x - 1 / y) :=
  KernelVariation.composed_abs_sub_le E h K' x y hh hx hxy hc hd hb

example (E : ℝ → ℝ) (h : ℝ) : composedVariation E h 0 = 0 :=
  KernelVariation.composedVariation_zero E h

example (E : ℝ → ℝ) (h K K' : ℝ) (G : ℕ)
    (hh : 1 ≤ h) (hc : ContinuousOn E (Set.Ici 1))
    (hd : ∀ q : ℝ, 1 < q → DifferentiableAt ℝ E q)
    (hv : ∀ q : ℝ, 1 ≤ q → |E q| ≤ K / Real.sqrt q)
    (hb : ∀ q : ℝ, 1 < q → |deriv E q| ≤ K' / (q * Real.sqrt q)) :
    composedVariation E h G ≤ (K + 4 * K') / Real.sqrt h :=
  KernelVariation.composedVariation_le E h K K' G hh hc hd hv hb

example (E : ℝ → ℝ) (h G : ℕ) (K K' : ℝ)
    (hh : 1 ≤ h) (hc : ContinuousOn E (Set.Ici 1))
    (hd : ∀ q : ℝ, 1 < q → DifferentiableAt ℝ E q)
    (hv : ∀ q : ℝ, 1 ≤ q → |E q| ≤ K / Real.sqrt q)
    (hb : ∀ q : ℝ, 1 < q → |deriv E q| ≤ K' / (q * Real.sqrt q)) :
    Real.sqrt (G : ℝ) * |E ((h * G ^ 2 : ℕ) : ℝ)| +
      (∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
        |E ((h * j ^ 2 : ℕ) : ℝ) - E ((h * (j + 1) ^ 2 : ℕ) : ℝ)|) ≤
      (K + 4 * K') / Real.sqrt (h : ℝ) :=
  KernelVariation.composedVariation_nat_le E h G K K' hh hc hd hv hb

example (q : ℝ) (hq : 0 < q) :
    q ^ (3 / 2 : ℝ) = q * Real.sqrt q :=
  KernelVariation.rpow_three_halves q hq

example (E : ℝ → ℝ) (h G : ℕ) (K K' : ℝ)
    (hh : 1 ≤ h) (hc : ContinuousOn E (Set.Ici 1))
    (hd : ∀ q : ℝ, 1 < q → DifferentiableAt ℝ E q)
    (hv : ∀ q : ℝ, 1 ≤ q → |E q| ≤ K / Real.sqrt q)
    (hb : ∀ q : ℝ, 1 < q → |deriv E q| ≤ K' / q ^ (3 / 2 : ℝ)) :
    Real.sqrt (G : ℝ) * |E ((h * G ^ 2 : ℕ) : ℝ)| +
      (∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
        |E ((h * j ^ 2 : ℕ) : ℝ) - E ((h * (j + 1) ^ 2 : ℕ) : ℝ)|) ≤
      (K + 4 * K') / Real.sqrt (h : ℝ) :=
  KernelVariation.composedVariation_nat_le_rpow E h G K K' hh hc hd hv hb

example (E : ℝ → ℝ) (h K K' : ℝ) (G : ℕ)
    (hh : 1 ≤ h) (hc : ContinuousOn E (Set.Ici 1))
    (hd : ∀ q : ℝ, 1 < q → DifferentiableAt ℝ E q)
    (hK : 0 ≤ K)
    (hv : 1 ≤ G → |E (h * (G : ℝ) ^ 2)| ≤ K / Real.sqrt (h * (G : ℝ) ^ 2))
    (hb : ∀ q : ℝ, 1 < q → |deriv E q| ≤ K' / (q * Real.sqrt q)) :
    composedVariation E h G ≤ (K + 4 * K') / Real.sqrt h :=
  KernelVariation.composedVariation_endpoint_le E h K K' G hh hc hd hK hv hb

example (A : ℝ) (h G : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) :
    Real.sqrt (G : ℝ) * |ThetaRemainder.thetaRemainder A (h * G ^ 2)| +
      (∑ j ∈ Icc 1 (G - 1), Real.sqrt (j : ℝ) *
        |ThetaRemainder.thetaRemainder A (h * j ^ 2) -
          ThetaRemainder.thetaRemainder A (h * (j + 1) ^ 2)|) ≤
      (ThetaKernelEstimate.kernelBound A +
        4 * (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
          8 * Real.sqrt (325325 / 18) / A ^ 3)) / Real.sqrt (h : ℝ) :=
  SourceClassVariation.source_composedVariation_abs_le A h G hA hh

example (A : ℝ) (u v : ℕ) (hA : 1 ≤ A) (hu : 1 ≤ u) (hv : 1 ≤ v) :
    RatioClassVariation.classVariation A u v ≤
      (ThetaKernelEstimate.kernelBound A +
        4 * (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
          8 * Real.sqrt (325325 / 18) / A ^ 3)) / Real.sqrt ((u * v : ℕ) : ℝ) :=
  SourceClassVariation.classVariation_abs_le A u v hA hu hv

example (A : ℝ) (u v : ℕ)
    (hA : 1 ≤ A) (hu : 1 ≤ u) (hv : 1 ≤ v) :
    |PrimeSupportedBlock.ratioClassContribution A u v - RatioClassVariation.classMean A u v| ≤
      |(ArithmeticFunction.moebius (u * v) : ℝ)| * (((u * v).divisors.card : ℝ) + 2) *
        ((ThetaKernelEstimate.kernelBound A +
          4 * (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
            8 * Real.sqrt (325325 / 18) / A ^ 3)) / Real.sqrt ((u * v : ℕ) : ℝ)) :=
  SourceClassVariation.ratioClass_sub_mean_abs_le_explicit A u v hA hu hv

end
end SourceRealThetaIntegrationStatements
```
