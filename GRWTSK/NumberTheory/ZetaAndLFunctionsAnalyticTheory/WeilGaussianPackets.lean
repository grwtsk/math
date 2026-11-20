/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Gaussian.FourierTransform
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic

/-!
# Gaussian packets, normalized correlations, and full-strip envelopes

The integrals below are actual Lebesgue integrals. The packet parameter is the
positive coefficient `a` in `exp (-a*x^2)`. A separate spectral multiplier uses
the width convention of the proposed Weil waveform: `exp (2*σ²*z² - τ*z)`.
The estimate is uniform for `|re z| ≤ 1/2`; it does not replace `z` by `i*im z`.

The explicit formula, its complete zero divisor, and summability over that
divisor are separate arithmetic obligations. These packet identities alone do
not identify a prime response with a zero sum or establish Weil positivity.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilGaussianPackets

def packet (a x : ℝ) : ℝ := Real.exp (-a * x ^ 2)

def correlation (a x : ℝ) : ℝ :=
  ∫ t : ℝ, packet a t * packet a (t + x)

theorem packet_product_eq (a x t : ℝ) : packet a t * packet a (t + x) =
    Real.exp (-(2 * a) * (t + x / 2) ^ 2) * Real.exp (-a * x ^ 2 / 2) := by
  rw [packet, packet, ← Real.exp_add, ← Real.exp_add]
  congr 1
  ring

/-- Positive width makes the correlation an integrable waveform, independently
of the totalized integral convention used by the library. -/
theorem correlation_integrable (a : ℝ) (ha : 0 < a) (x : ℝ) :
    Integrable (fun t : ℝ => packet a t * packet a (t + x)) := by
  simp_rw [packet_product_eq]
  exact ((integrable_exp_neg_mul_sq (mul_pos (by norm_num : (0 : ℝ) < 2) ha)).comp_add_right
    (x / 2)).mul_const _

/-- Completing the square gives the full correlation, including its amplitude. -/
theorem correlation_eq (a : ℝ) (_ha : 0 < a) (x : ℝ) :
    correlation a x = Real.sqrt (Real.pi / (2 * a)) *
      Real.exp (-a * x ^ 2 / 2) := by
  unfold correlation
  simp_rw [packet_product_eq]
  rw [integral_mul_const,
    integral_add_right_eq_self (fun t : ℝ => Real.exp (-(2 * a) * t ^ 2)) (x / 2),
    integral_gaussian]

theorem correlation_zero_pos (a : ℝ) (ha : 0 < a) :
    0 < correlation a 0 := by
  rw [correlation_eq a ha]
  simp only [zero_pow (by decide : 2 ≠ 0), mul_zero, zero_div, Real.exp_zero, mul_one]
  exact Real.sqrt_pos.2 (div_pos Real.pi_pos (mul_pos (by norm_num) ha))

/-- Normalize by the actual zero-shift integral, not by a guessed factor. -/
def normalizedCorrelation (a x : ℝ) : ℝ := correlation a x / correlation a 0

theorem normalizedCorrelation_eq (a : ℝ) (ha : 0 < a) (x : ℝ) :
    normalizedCorrelation a x = Real.exp (-a * x ^ 2 / 2) := by
  have hp : Real.sqrt (Real.pi / (2 * a)) ≠ 0 :=
    ne_of_gt (Real.sqrt_pos.2 (div_pos Real.pi_pos (mul_pos (by norm_num) ha)))
  simp [normalizedCorrelation, correlation_eq a ha, hp]

def laplace (a : ℝ) (z : ℂ) : ℂ :=
  ∫ x : ℝ, Complex.exp (-(a : ℂ) * (x : ℂ) ^ 2 + z * (x : ℂ))

theorem laplace_integrable (a : ℝ) (ha : 0 < a) (z : ℂ) :
    Integrable (fun x : ℝ =>
      Complex.exp (-(a : ℂ) * (x : ℂ) ^ 2 + z * (x : ℂ))) := by
  simpa only [add_zero] using
    integrable_cexp_quadratic (b := (a : ℂ)) (by simpa using ha) z 0

/-- The bilateral Laplace transform is valid at every complex argument. -/
theorem laplace_eq (a : ℝ) (ha : 0 < a) (z : ℂ) :
    laplace a z = ((Real.pi : ℂ) / (a : ℂ)) ^ (1 / 2 : ℂ) *
      Complex.exp (z ^ 2 / (4 * (a : ℂ))) := by
  have hb : (-(a : ℂ)).re < 0 := by simp; linarith
  simpa [laplace, neg_mul, div_neg] using integral_cexp_quadratic hb z 0

/-- Normalized zeroth correlation; `a = 1/(8*σ²)` gives the width-σ convention. -/
def gaussianKernel (a x : ℝ) : ℝ := Real.exp (-a * x ^ 2)

/-- Polynomial-Gaussian profile for the first odd correlation. Identification
with a normalized odd-packet integral is a separate moment calculation. -/
def oddCorrelationKernel (a x : ℝ) : ℝ :=
  (1 - 2 * a * x ^ 2) * gaussianKernel a x

theorem gaussianKernel_hasDerivAt (a x : ℝ) :
    HasDerivAt (gaussianKernel a) (-2 * a * x * gaussianKernel a x) x := by
  convert (((hasDerivAt_id x).pow 2).const_mul (-a)).exp using 1
  · funext y
    simp [gaussianKernel]
  · simp [gaussianKernel]
    ring

theorem gaussianKernel_firstDerivative_hasDerivAt (a x : ℝ) :
    HasDerivAt (fun y => -2 * a * y * gaussianKernel a y)
      ((4 * a ^ 2 * x ^ 2 - 2 * a) * gaussianKernel a x) x := by
  convert (((hasDerivAt_id x).const_mul (-2 * a)).mul
    (gaussianKernel_hasDerivAt a x)) using 1
  · funext y
    rfl
  · simp
    ring

theorem gaussianKernel_secondDerivative (a x : ℝ) :
    deriv (deriv (gaussianKernel a)) x =
      (4 * a ^ 2 * x ^ 2 - 2 * a) * gaussianKernel a x := by
  have h : deriv (gaussianKernel a) = fun y => -2 * a * y * gaussianKernel a y :=
    funext fun y => (gaussianKernel_hasDerivAt a y).deriv
  rw [h]
  exact (gaussianKernel_firstDerivative_hasDerivAt a x).deriv

/-- The proposed odd-correlation profile has this exact second-derivative identity. -/
theorem oddCorrelationKernel_eq_secondDerivative (a x : ℝ) (ha : a ≠ 0) :
    oddCorrelationKernel a x = -(1 / (2 * a)) * deriv (deriv (gaussianKernel a)) x := by
  rw [gaussianKernel_secondDerivative]
  unfold oddCorrelationKernel
  field_simp
  ring

def spectralPacket (σ τ : ℝ) (z : ℂ) : ℂ :=
  Complex.exp (2 * (σ : ℂ) ^ 2 * z ^ 2 - (τ : ℂ) * z)

theorem norm_spectralPacket (σ τ : ℝ) (z : ℂ) :
    ‖spectralPacket σ τ z‖ =
      Real.exp (2 * σ ^ 2 * (z.re ^ 2 - z.im ^ 2) - τ * z.re) := by
  rw [spectralPacket, Complex.norm_exp]
  congr 1
  simp [pow_two, Complex.mul_re, Complex.mul_im]

/-- Uniform over the entire centered closed strip, with no RH premise. -/
theorem norm_spectralPacket_le_full_strip (σ τ : ℝ) (z : ℂ)
    (hstrip : |z.re| ≤ 1 / 2) :
    ‖spectralPacket σ τ z‖ ≤
      Real.exp (σ ^ 2 / 2 + |τ| / 2) * Real.exp (-2 * σ ^ 2 * z.im ^ 2) := by
  have hre := abs_le.mp hstrip
  have hsq : z.re ^ 2 ≤ 1 / 4 := by nlinarith [sq_nonneg (z.re - 1 / 2)]
  have habs : |τ * z.re| ≤ |τ| / 2 := by
    rw [abs_mul]
    nlinarith [mul_le_mul_of_nonneg_left hstrip (abs_nonneg τ)]
  have hlin : -(τ * z.re) ≤ |τ| / 2 := (neg_le_abs _).trans habs
  rw [norm_spectralPacket, ← Real.exp_add]
  apply Real.exp_le_exp.mpr
  nlinarith [mul_le_mul_of_nonneg_left hsq (sq_nonneg σ)]

theorem norm_spectralPacket_on_line (σ τ γ : ℝ) :
    ‖spectralPacket σ τ ((γ : ℂ) * Complex.I)‖ =
      Real.exp (-2 * σ ^ 2 * γ ^ 2) := by
  rw [norm_spectralPacket]
  simp

/-- Under an on-line substitution the odd multiplier is nonnegative, not negative. -/
theorem odd_multiplier_on_line (σ γ : ℝ) :
    -4 * (σ : ℂ) ^ 2 * ((γ : ℂ) * Complex.I) ^ 2 =
      ((4 * σ ^ 2 * γ ^ 2 : ℝ) : ℂ) := by
  push_cast
  calc
    _ = -4 * (σ : ℂ) ^ 2 * (γ : ℂ) ^ 2 * Complex.I ^ 2 := by ring
    _ = _ := by rw [Complex.I_sq]; ring

theorem odd_multiplier_nonneg (σ γ : ℝ) : 0 ≤ 4 * σ ^ 2 * γ ^ 2 := by positivity

end GRWTSK.NumberTheory.WeilGaussianPackets
