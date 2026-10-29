import FormalResearch.RiemannHypothesis.SourceComparison.MobiusPoleNumerator
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusReciprocalPole
import FormalResearch.RiemannHypothesis.SourceComparison.SmoothedPerronKernel
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusPrefixTilt

namespace MobiusPoleNumeratorLiteral
open Finset MeasureTheory Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open FiniteMobiusController MobiusPoleNumerator

example (X : ℕ) (z : ℂ) : dirichletNumerator X z =
    ∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
      Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ)) := rfl
example (X : ℕ) (z : ℂ) : correctedNumerator X z =
    dirichletNumerator X z - (mobiusReciprocalSum X : ℂ) *
      Complex.exp ((1 / 2 - z) * (Real.log (X : ℝ) : ℂ)) := rfl
example (X : ℕ) : logNormalization X =
    ∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℝ) / (n : ℝ) *
      Real.log ((X : ℝ) / (n : ℝ)) := rfl
example (n : ℕ) (hn : 1 ≤ n) :
    Complex.exp (-(1 / 2 + (1 / 2 : ℂ)) * (Real.log (n : ℝ) : ℂ)) =
      (n : ℂ)⁻¹ := exponential_at_half n hn
example (X : ℕ) : dirichletNumerator X (1 / 2) = (mobiusReciprocalSum X : ℂ) :=
  dirichletNumerator_half X
example (X : ℕ) : correctedNumerator X (1 / 2) = 0 := correctedNumerator_half X
example (X : ℕ) : Differentiable ℂ (correctedNumerator X) :=
  correctedNumerator_differentiable X
example (X : ℕ) (z : ℂ) : HasDerivAt (correctedNumerator X)
    ((∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
      (Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ)) *
        (-(Real.log (n : ℝ) : ℂ)))) +
      (mobiusReciprocalSum X : ℂ) *
        (Complex.exp ((1 / 2 - z) * (Real.log (X : ℝ) : ℂ)) *
          (Real.log (X : ℝ) : ℂ))) z := correctedNumerator_hasDerivAt X z
example (X : ℕ) (hX : 1 ≤ X) : (logNormalization X : ℂ) =
    (mobiusReciprocalSum X : ℂ) * (Real.log (X : ℝ) : ℂ) -
      ∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) / (n : ℂ) *
        (Real.log (n : ℝ) : ℂ) := logNormalization_eq X hX
example (X : ℕ) (hX : 1 ≤ X) :
    HasDerivAt (correctedNumerator X) (logNormalization X : ℂ) (1 / 2) :=
  correctedNumerator_hasDerivAt_half X hX
example (X : ℕ) : correctedQuotient X = dslope (correctedNumerator X) (1 / 2) := rfl
example (X : ℕ) (z : ℂ) (hz : z ≠ 1 / 2) :
    correctedQuotient X z = correctedNumerator X z / (z - 1 / 2) :=
  correctedQuotient_of_ne X z hz
example (X : ℕ) (z : ℂ) :
    correctedNumerator X z = (z - 1 / 2) * correctedQuotient X z :=
  correctedNumerator_factor X z
example (X : ℕ) : Differentiable ℂ (correctedQuotient X) := correctedQuotient_differentiable X
example (X : ℕ) (hX : 1 ≤ X) : correctedQuotient X (1 / 2) = (logNormalization X : ℂ) :=
  correctedQuotient_half X hX
example (X : ℕ) (hX : 1 ≤ X) :
    Tendsto (fun z : ℂ => correctedNumerator X z / (z - 1 / 2))
      (𝓝[≠] (1 / 2)) (𝓝 (logNormalization X : ℂ)) := correctedQuotient_tendsto_half X hX
example (X : ℕ) (hX : 1 ≤ X) : HasDerivAt
    (fun z : ℂ =>
      (∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
        Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ))) -
        ((∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℝ) / (n : ℝ)) : ℂ) *
          Complex.exp ((1 / 2 - z) * (Real.log (X : ℝ) : ℂ)))
    ((∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℝ) / (n : ℝ) *
      Real.log ((X : ℝ) / (n : ℝ))) : ℂ) (1 / 2) :=
  by
    convert! correctedNumerator_hasDerivAt_half X hX using 1
    · funext z
      unfold correctedNumerator dirichletNumerator mobiusReciprocalSum
      simp only [Complex.ofReal_sum, Complex.ofReal_div, Complex.ofReal_natCast,
        Complex.ofReal_intCast]
    · simp only [logNormalization, Complex.ofReal_sum, Complex.ofReal_mul,
        Complex.ofReal_div, Complex.ofReal_natCast, Complex.ofReal_intCast]
end MobiusPoleNumeratorLiteral

namespace MobiusReciprocalPoleLiteral
open Complex Filter Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison.MobiusReciprocalPole

example (s : ℂ) : zetaPoleFactor s =
    (if s = 0 then 1 else s * riemannZeta (1 + s)) := rfl

example : zetaPoleFactor 0 = 1 := zetaPoleFactor_zero

example : AnalyticAt ℂ zetaPoleFactor 0 := zetaPoleFactor_analyticAt_zero

example (s : ℂ) : reciprocalZeta s =
    (if s = 0 then 0 else (riemannZeta (1 + s))⁻¹) := rfl

example : reciprocalZeta 0 = 0 := reciprocalZeta_zero

example (s : ℂ) (hs : s ≠ 0) :
    reciprocalZeta s = (riemannZeta (1 + s))⁻¹ := reciprocalZeta_off s hs

example (s : ℂ) : reciprocalZeta s = s / zetaPoleFactor s :=
  reciprocalZeta_eq_div_factor s

example : AnalyticAt ℂ reciprocalZeta 0 := reciprocalZeta_analyticAt_zero

example : HasDerivAt reciprocalZeta 1 0 := reciprocalZeta_hasDerivAt_zero

example : ∀ᶠ s : ℂ in 𝓝[≠] 0,
    reciprocalZeta s ≠ 0 ∧ riemannZeta (1 + s) ≠ 0 := reciprocalZeta_eventually_ne_zero

example (x : ℝ) (s : ℂ) : smoothedPerronIntegrand x s =
    (x : ℂ) ^ s / (s ^ 2 * riemannZeta (1 + s)) := rfl

example (x : ℝ) (hx : 0 < x) : MeromorphicAt (smoothedPerronIntegrand x) 0 :=
  smoothedPerronIntegrand_meromorphicAt_zero x hx

example (x : ℝ) (hx : 0 < x) :
    meromorphicOrderAt (smoothedPerronIntegrand x) 0 = (-1 : ℤ) :=
  smoothedPerronIntegrand_order_zero x hx

example (x : ℝ) (hx : 0 < x) :
    Tendsto (fun s : ℂ => s * smoothedPerronIntegrand x s) (𝓝[≠] 0) (𝓝 1) :=
  smoothedPerronIntegrand_residue_limit x hx

example (x : ℝ) (hx : 0 < x) : residue (smoothedPerronIntegrand x) 0 = 1 :=
  smoothedPerronIntegrand_residue_one x hx

example : HasDerivAt
    (fun s : ℂ => if s = 0 then 0 else (riemannZeta (1 + s))⁻¹) 1 0 :=
  reciprocalZeta_hasDerivAt_zero

example (x : ℝ) (hx : 0 < x) :
    meromorphicOrderAt (fun s : ℂ => (x : ℂ) ^ s / (s ^ 2 * riemannZeta (1 + s))) 0 =
      (-1 : ℤ) := smoothedPerronIntegrand_order_zero x hx

example (x : ℝ) (hx : 0 < x) :
    Tendsto (fun s : ℂ => s * ((x : ℂ) ^ s / (s ^ 2 * riemannZeta (1 + s))))
      (𝓝[≠] 0) (𝓝 1) := smoothedPerronIntegrand_residue_limit x hx

end MobiusReciprocalPoleLiteral


namespace SmoothedPerronKernelLiteral
open MeasureTheory Set Filter
open scoped FourierTransform
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel
open FormalResearch.RiemannHypothesis.SourceComparison.SmoothedPerronKernel
noncomputable section
example (k : ℕ) (w : ℂ) (hw : 0 < w.re) :
    IntegrableOn (kernelIntegrand k w) (Ioi 0) := kernelIntegrand_integrable_Ioi_zero k w hw
example (w : ℂ) (hw : 0 < w.re) :
    (∫ t : ℝ in Ioi 0, (t : ℂ) * Complex.exp (-w * t)) = 1 / w ^ 2 :=
  integral_first_moment w hw
example (c t : ℝ) : dampedRamp c t =
    ((max t 0 : ℝ) : ℂ) * Complex.exp (-(c : ℂ) * (t : ℂ)) := rfl
example (c : ℝ) : Continuous (dampedRamp c) := dampedRamp_continuous c
example (c : ℝ) : dampedRamp c =
    (Ioi (0 : ℝ)).indicator (kernelIntegrand 1 (c : ℂ)) := dampedRamp_eq_indicator c
example (c : ℝ) (hc : 0 < c) : Integrable (dampedRamp c) := dampedRamp_integrable c hc
example (c : ℝ) (hc : 0 < c) (ξ : ℝ) :
    𝓕 (dampedRamp c) ξ = 1 / ((c : ℂ) + (2 * Real.pi * ξ : ℝ) * Complex.I) ^ 2 :=
  dampedRamp_fourier c hc ξ
example (c : ℝ) (hc : 0 < c) :
    Integrable (fun t : ℝ => 1 / ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2) :=
  reciprocal_square_integrable c hc
example (c : ℝ) (hc : 0 < c) : Integrable (𝓕 (dampedRamp c)) :=
  dampedRamp_fourier_integrable c hc
example (c x t : ℝ) : perronIntegrand c x t =
    (x : ℂ) ^ ((c : ℂ) + (t : ℂ) * Complex.I) /
      ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2 := rfl
example (c x : ℝ) (hc : 0 < c) (hx : 0 < x) :
    Integrable (perronIntegrand c x) := perronIntegrand_integrable c x hc hx
example (c L : ℝ) (hc : 0 < c) :
    (1 / (2 * Real.pi) : ℝ) •
      (∫ t : ℝ, Complex.exp ((t : ℂ) * (L : ℂ) * Complex.I) /
        ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2) = dampedRamp c L :=
  vertical_ramp_inversion c L hc
example (c x : ℝ) (hc : 0 < c) (hx : 0 < x) :
    (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ, perronIntegrand c x t) =
      ((max (Real.log x) 0 : ℝ) : ℂ) := elementary_perron_kernel c x hc hx
example (c : ℝ) (hc : 0 < c) :
    (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ, perronIntegrand c 1 t) = 0 :=
  elementary_perron_endpoint c hc
example (c x y : ℝ) (hc : 0 < c) (hx : 0 < x) (hy : 0 < y) :
    (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ, perronIntegrand c (x / y) t) =
      if y < x then ((Real.log (x / y) : ℝ) : ℂ) else 0 :=
  elementary_perron_ratio c x y hc hx hy
end
end SmoothedPerronKernelLiteral

namespace MobiusPrefixTiltLiteral
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController FormalResearch.RiemannHypothesis.SourceComparison.MobiusPoleNumerator FormalResearch.RiemannHypothesis.SourceComparison.MobiusPrefixTilt
example (X : ℕ) (z : ℂ) :
    IntegrableOn (fun x : ℝ => (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - z) * (Real.log x : ℂ)) / (x : ℂ)) (Set.Icc (1 : ℝ) X) := reciprocal_prefix_power_integrable X z


example (X : ℕ) (z : ℂ) :
    correctedNumerator X z = (z - 1 / 2) *
      ∫ x : ℝ in Set.Ioc 1 (X : ℝ), (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
        Complex.exp ((1 / 2 - z) * (Real.log x : ℂ)) / (x : ℂ) := correctedNumerator_eq_prefix_integral X z

end MobiusPrefixTiltLiteral
