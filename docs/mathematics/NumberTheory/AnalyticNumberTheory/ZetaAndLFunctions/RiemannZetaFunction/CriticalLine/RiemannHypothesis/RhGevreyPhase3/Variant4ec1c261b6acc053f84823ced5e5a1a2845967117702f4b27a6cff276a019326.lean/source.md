# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RhGevreyPhase3.Variant4ec1c261b6acc053f84823ced5e5a1a2845967117702f4b27a6cff276a019326

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4bf1d54d3f9c6c75fc693beef1db43412e2947d8` · SHA-256 `4ec1c261b6acc053f84823ced5e5a1a2845967117702f4b27a6cff276a019326`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.GevreyCorrelation
import FormalResearch.RiemannHypothesis.GevreyPolynomial
import FormalResearch.RiemannHypothesis.GevreyFourier
import FormalResearch.RiemannHypothesis.GevreyNormalization

open Filter MeasureTheory
open scoped Topology
open FormalResearch.RiemannHypothesis
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

-- Pin the same amplitude as the existing source, including the factor 1/sqrt(A).
example (A x : ℝ) :
    GevreyNormalization.scaledProfile SourcePairing.sourceBump A x =
      SourcePairing.scaledBump A x := rfl

example (h : ℝ → ℝ) (A x : ℝ) (hA : 0 < A) :
    h (x / A) / Real.sqrt A = A ^ (-(1 / 2 : ℝ)) * h (x / A) :=
  GevreyNormalization.scaledProfile_eq_rpow h hA x

-- Pin the actual differentiated dilation, with both inverse scale factors.
example (h : ℝ → ℝ) (hc : ContDiff ℝ 2 h) (A x : ℝ) :
    deriv (deriv (fun y : ℝ ↦ h (y / A) / Real.sqrt A)) x =
      deriv (deriv h) (x / A) / (A ^ 2 * Real.sqrt A) :=
  GevreyNormalization.second_scaledProfile hc A x

example (h : ℝ → ℝ) (hc : ContDiff ℝ 2 h) (A x : ℝ) (hA : 0 < A) :
    deriv (deriv (fun y : ℝ ↦ h (y / A) / Real.sqrt A)) x =
      A ^ (-(5 / 2 : ℝ)) * deriv (deriv h) (x / A) :=
  GevreyNormalization.second_scaledProfile_eq_rpow hc hA x

-- The two operator summands must keep different powers of A.
example (h : ℝ → ℝ) (hc : ContDiff ℝ 2 h) (A x : ℝ) (hA : 0 < A) :
    (deriv (deriv (fun y : ℝ ↦ h (y / A) / Real.sqrt A)) x -
      (h (x / A) / Real.sqrt A) / 4) =
      A ^ (-(5 / 2 : ℝ)) * deriv (deriv h) (x / A) -
      (1 / 4) * A ^ (-(1 / 2 : ℝ)) * h (x / A) :=
  GevreyNormalization.dilationOperator_eq_rpow hc hA x

-- Pin the negative mixed term before the separately proved integration by parts.
example (h : ℝ → ℝ) (hc : ContDiff ℝ 2 h) (hs : HasCompactSupport h)
    (A : ℝ) (hA : 0 < A) :
    (∫ x : ℝ,
      (deriv (deriv (fun y : ℝ ↦ h (y / A) / Real.sqrt A)) x -
        (h (x / A) / Real.sqrt A) / 4) ^ 2) =
      (A ^ 4)⁻¹ * (∫ x : ℝ, (deriv (deriv h) x) ^ 2) -
      (2 * A ^ 2)⁻¹ * (∫ x : ℝ, deriv (deriv h) x * h x) +
      (1 / 16) * (∫ x : ℝ, (h x) ^ 2) :=
  GevreyNormalization.normalization_expanded hc hs hA

example (h : ℝ → ℝ) (hc : ContDiff ℝ 2 h) (hs : HasCompactSupport h) :
    (∫ x : ℝ, deriv (deriv h) x * h x) = -∫ x : ℝ, (deriv h x) ^ 2 :=
  GevreyNormalization.integral_second_mul_profile hc hs

-- All three coefficients have positive signs; the square energies are nonnegative.
example (h : ℝ → ℝ) (hc : ContDiff ℝ 2 h) (hs : HasCompactSupport h)
    (A : ℝ) (hA : 0 < A) :
    (∫ x : ℝ,
      (deriv (deriv (fun y : ℝ ↦ h (y / A) / Real.sqrt A)) x -
        (h (x / A) / Real.sqrt A) / 4) ^ 2) =
      (A ^ 4)⁻¹ * (∫ x : ℝ, (deriv (deriv h) x) ^ 2) +
      (2 * A ^ 2)⁻¹ * (∫ x : ℝ, (deriv h x) ^ 2) +
      (1 / 16) * (∫ x : ℝ, (h x) ^ 2) :=
  GevreyNormalization.normalization_eq hc hs hA

-- The recovered constants are energies of the actual zero-extended polynomial source.
example : (∫ x : ℝ, (SourcePairing.sourceBump x) ^ 2) = (65536 / 109395 : ℝ) :=
  GevreyPolynomial.sourceBump_square_integral

example : (∫ x : ℝ, (deriv SourcePairing.sourceBump x) ^ 2) = (131072 / 45045 : ℝ) :=
  GevreyPolynomial.sourceBump_deriv_square_integral

example : (∫ x : ℝ, (deriv (deriv SourcePairing.sourceBump) x) ^ 2) =
    (196608 / 5005 : ℝ) :=
  GevreyPolynomial.sourceBump_second_square_integral

example : (∫ x : ℝ, deriv (deriv SourcePairing.sourceBump) x *
    SourcePairing.sourceBump x) = -(131072 / 45045 : ℝ) :=
  GevreyPolynomial.sourceBump_second_mul_integral

-- Recover the exact immutable source normalization and its literal all-plus polynomial.
example (A : ℝ) (hA : 0 < A) :
    GevreyNormalization.normalization SourcePairing.sourceBump A =
      SourcePairing.sourceNormalization A :=
  GevreyPolynomial.normalization_sourceBump_eq hA

example (A : ℝ) (hA : 0 < A) :
    GevreyNormalization.normalization SourcePairing.sourceBump A =
      (65536 / 109395 : ℝ) / 16 +
      (131072 / 45045 : ℝ) / (2 * A ^ 2) + (196608 / 5005 : ℝ) / A ^ 4 :=
  GevreyPolynomial.normalization_sourceBump_eq hA

-- A proved ordinary second derivative agrees with the existing realized source derivative.
example (A : ℝ) (hA : 0 < A) :
    deriv (deriv (SourcePairing.scaledBump A)) =
      explicitSecondDerivative A :=
  GevreyPolynomial.second_scaledBump hA

-- Freeze unit norm and the positive constant across every positive real scale.
example (A : ℝ) (hA : 0 < A) :
    (∫ x : ℝ, (GevreyNormalization.normalizedOperator GevreyProfile.profile A x) ^ 2) = 1 :=
  GevreyNormalization.profile_normalizedOperator_square_integral hA

example : ∃ z : ℝ, 0 < z ∧ ∀ A : ℝ, 0 < A →
    z ≤ GevreyNormalization.normalization GevreyProfile.profile A :=
  GevreyNormalization.profile_normalization_uniform_positive_lower_bound

-- Fourier variables are real angular frequencies. Dilation changes the frequency to A*xi.
example (h : ℝ → ℝ) (A ξ : ℝ) (hA : 0 < A) :
    SourcePairing.sourceFourier (fun x : ℝ ↦ h (x / A) / Real.sqrt A) ξ =
      (Real.sqrt A : ℂ) * SourcePairing.sourceFourier h (A * ξ) :=
  GevreyFourier.sourceFourier_scaledProfile h hA ξ

example (h : ℝ → ℝ) (hc : ContDiff ℝ 2 h) (hs : HasCompactSupport h)
    (A ξ : ℝ) (hA : 0 < A) :
    SourcePairing.sourceFourier (GevreyNormalization.dilationOperator h A) ξ =
      -((ξ ^ 2 + 1 / 4 : ℝ) : ℂ) * (Real.sqrt A : ℂ) *
        SourcePairing.sourceFourier h (A * ξ) :=
  GevreyFourier.sourceFourier_dilationOperator hc hs hA ξ

-- Pin the full A/Z multiplier, not merely the bare profile's Fourier square.
example (h : ℝ → ℝ) (hc : ContDiff ℝ 2 h) (hs : HasCompactSupport h)
    (A ξ : ℝ) (hA : 0 < A) :
    Complex.normSq (SourcePairing.sourceFourier
      (GevreyNormalization.normalizedOperator h A) ξ) =
      (A / GevreyNormalization.normalization h A) * (ξ ^ 2 + 1 / 4) ^ 2 *
        Complex.normSq (SourcePairing.sourceFourier h (A * ξ)) :=
  GevreyFourier.normSq_sourceFourier_normalizedOperator hc hs hA ξ

-- Pin the actual positive-exponent source convention and complete real-frequency correlation.
example (h : ℝ → ℝ) (hc : ContDiff ℝ 2 h) (hs : HasCompactSupport h)
    (A ξ : ℝ) (hA : 0 < A) :
    (∫ u : ℝ, ((∫ x : ℝ,
      GevreyNormalization.normalizedOperator h A x *
        GevreyNormalization.normalizedOperator h A (x - u) : ℝ) : ℂ) *
      Complex.exp (Complex.I * (ξ : ℂ) * (u : ℂ))) =
      (((A / GevreyNormalization.normalization h A) * (ξ ^ 2 + 1 / 4) ^ 2 *
        Complex.normSq (∫ y : ℝ, (h y : ℂ) *
          Complex.exp (Complex.I * ((A * ξ : ℝ) : ℂ) * (y : ℂ))) : ℝ) : ℂ) :=
  GevreyFourier.sourceFourier_normalized_autocorrelation hc hs hA ξ

-- The actual new normalization tends to the energy of h/4, with no new source premise.
example (h : ℝ → ℝ) (hc : ContDiff ℝ 2 h) (hs : HasCompactSupport h) :
    Tendsto (GevreyNormalization.normalization h) atTop
      (𝓝 ((1 / 16) * (∫ x : ℝ, (h x) ^ 2))) :=
  GevreyNormalization.tendsto_normalization hc hs

example : Tendsto (GevreyNormalization.normalization GevreyProfile.profile) atTop
    (𝓝 ((1 / 16) * (∫ x : ℝ, (GevreyProfile.profile x) ^ 2))) :=
  GevreyNormalization.tendsto_profile_normalization

-- The source radius is A, while autocorrelation is supported in displacement radius 2*A.
example (A : ℝ) (hA : 0 < A) :
    Function.support GevreyProfile.profile ⊆ Set.Icc (-1) 1 ∧
    Function.support (GevreyNormalization.scaledProfile GevreyProfile.profile A) ⊆
      Set.Icc (-A) A ∧
    Function.support (GevreyNormalization.dilationOperator GevreyProfile.profile A) ⊆
      Set.Icc (-A) A ∧
    Function.support (GevreyNormalization.normalizedOperator GevreyProfile.profile A) ⊆
      Set.Icc (-A) A ∧
    Function.support (GevreyCorrelation.correlation GevreyProfile.profile A) ⊆
      Set.Icc (-(2 * A)) (2 * A) :=
  GevreyCorrelation.profile_support_radii hA

-- The displacement endpoint is included, so no boundary overlap survives at |u| = 2*A.
example (h : ℝ → ℝ) (hc : ContDiff ℝ 2 h)
    (hs : Function.support h ⊆ Set.Icc (-1) 1)
    (A u : ℝ) (hA : 0 < A) (hu : 2 * A ≤ |u|) :
    GevreyCorrelation.correlation h A u = 0 :=
  GevreyCorrelation.correlation_zero_of_le_abs hc hs hA hu

example (A : ℝ) (hA : 0 < A) :
    GevreyCorrelation.correlation GevreyProfile.profile A 0 = 1 :=
  GevreyCorrelation.profile_correlation_zero hA

example (h : ℝ → ℝ) (hc : ContDiff ℝ 2 h)
    (hs : Function.support h ⊆ Set.Icc (-1) 1) (A : ℝ) (hA : 0 < A) :
    Continuous (GevreyCorrelation.correlation h A) :=
  GevreyCorrelation.correlation_continuous hc hs hA

example (h : ℝ → ℝ) (hc : ContDiff ℝ 2 h) (hs : HasCompactSupport h)
    (A : ℝ) (hA : 0 < A) : Integrable (GevreyCorrelation.correlation h A) :=
  GevreyCorrelation.correlation_integrable hc hs hA
```
