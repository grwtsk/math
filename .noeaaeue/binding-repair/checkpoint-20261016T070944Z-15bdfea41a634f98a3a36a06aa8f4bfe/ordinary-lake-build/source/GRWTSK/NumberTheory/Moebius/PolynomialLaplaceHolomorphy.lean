/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.WeightedIntegralContinuity
import Mathlib.MeasureTheory.Integral.ExpDecay
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.SpecialFunctions.ExpDeriv

/-!
# CCC original pickup Laplace transform under the actual open growth premise

The integrand is the original pickup multiplied by the literal complex
exponential. Actual pickup continuity gives measurability. The original
`WholePickupPoly` premise gives an integrable polynomial-exponential majorant
on every positive real half-plane. No growth witness, cancellation, zeta
identity, or Riemann-hypothesis result is supplied.

Research direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupLaplaceGrowth

open MeasureTheory Set Filter Topology Asymptotics
open ArithmeticPickupSource ArithmeticPickupContinuity

noncomputable section

def polynomialExponential (σ p t : ℝ) : ℝ := Real.exp (-σ * t) * (1 + t) ^ p

theorem polynomial_exponential_continuousOn (σ p : ℝ) :
    ContinuousOn (polynomialExponential σ p) (Ici 0) := by
  have exponential : Continuous (fun t : ℝ ↦ Real.exp (-σ * t)) :=
    Real.continuous_exp.comp (continuous_const.mul continuous_id)
  have polynomial : ContinuousOn (fun t : ℝ ↦ (1 + t) ^ p) (Ici 0) :=
    (continuous_const.add continuous_id).continuousOn.rpow_const (fun t ht ↦
      Or.inl (by change 1 + t ≠ 0; have : 0 ≤ t := ht; linarith))
  exact exponential.continuousOn.mul polynomial

/-- Every shifted nonnegative polynomial allowance is integrable against positive decay. -/
theorem polynomial_exponential_integrable {σ p : ℝ} (hσ : 0 < σ) (hp : 0 ≤ p) :
    IntegrableOn (polynomialExponential σ p) (Ioi 0) := by
  have half : 0 < σ / 2 := by linarith
  have bare : IntegrableOn (fun t : ℝ ↦ Real.exp (-σ * t) * t ^ p) (Ioi 1) := by
    apply integrable_of_isBigO_exp_neg half
    · apply ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).continuousOn).mul
      exact continuousOn_id.rpow_const (fun t ht ↦
        Or.inl (by change t ≠ 0; have : (1 : ℝ) ≤ t := ht; linarith))
    · exact (isLittleO_exp_mul_rpow_of_lt p (by linarith : -σ < -(σ / 2))).isBigO
  rw [← Ioc_union_Ioi_eq_Ioi (zero_le_one : (0 : ℝ) ≤ 1), integrableOn_union]
  constructor
  · exact ((polynomial_exponential_continuousOn σ p).mono
      (by intro t ht; exact ht.1)).integrableOn_Icc.mono_set Ioc_subset_Icc_self
  · refine (bare.const_mul (2 ^ p)).mono' ?_ ?_
    · exact ((polynomial_exponential_continuousOn σ p).mono
        (by intro t ht; exact zero_le_one.trans (show 1 < t from ht).le)).aestronglyMeasurable
          measurableSet_Ioi
    · filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      change 1 < t at ht
      have tNonnegative : 0 ≤ t := zero_le_one.trans ht.le
      have base : 1 + t ≤ 2 * t := by linarith
      have polynomialBound := Real.rpow_le_rpow (by linarith : 0 ≤ 1 + t) base hp
      rw [Real.mul_rpow (by norm_num : (0 : ℝ) ≤ 2) tNonnegative] at polynomialBound
      have nonnegative : 0 ≤ polynomialExponential σ p t :=
        mul_nonneg (Real.exp_pos _).le (Real.rpow_nonneg (by linarith) p)
      calc
        ‖polynomialExponential σ p t‖ = Real.exp (-σ * t) * (1 + t) ^ p :=
          abs_of_nonneg nonnegative
        _ ≤ Real.exp (-σ * t) * (2 ^ p * t ^ p) :=
          mul_le_mul_of_nonneg_left polynomialBound (Real.exp_pos _).le
        _ = 2 ^ p * (Real.exp (-σ * t) * t ^ p) := by ring

def pickupLaplaceIntegrand (z : ℂ) (t : ℝ) : ℂ :=
  Complex.exp (-(z * (t : ℂ))) * (pickup t : ℂ)

/-- The literal original causal pickup Laplace integral. -/
def pickupLaplace (z : ℂ) : ℂ := ∫ t : ℝ in Ioi 0, pickupLaplaceIntegrand z t

theorem pickup_laplace_integrand_continuous (z : ℂ) :
    Continuous (pickupLaplaceIntegrand z) := by
  exact (Complex.continuous_exp.comp
    (continuous_const.mul Complex.continuous_ofReal).neg).mul
    (Complex.continuous_ofReal.comp pickup_continuous)

theorem norm_pickup_laplace_integrand (z : ℂ) (t : ℝ) :
    ‖pickupLaplaceIntegrand z t‖ = Real.exp (-z.re * t) * |pickup t| := by
  simp only [pickupLaplaceIntegrand, norm_mul, Complex.norm_exp, Complex.neg_re,
    Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero,
    neg_mul, Complex.norm_real, Real.norm_eq_abs]

theorem pickup_laplace_integrand_bound {C p σ : ℝ} (hC : 0 ≤ C)
    (bound : ∀ t : ℝ, 0 ≤ t → |pickup t| ≤ C * (1 + t) ^ p)
    {z : ℂ} (hz : σ ≤ z.re) {t : ℝ} (ht : 0 ≤ t) :
    ‖pickupLaplaceIntegrand z t‖ ≤ C * polynomialExponential σ p t := by
  rw [norm_pickup_laplace_integrand]
  have decay : Real.exp (-z.re * t) ≤ Real.exp (-σ * t) :=
    Real.exp_le_exp.mpr (by nlinarith)
  have allowance : 0 ≤ C * (1 + t) ^ p :=
    mul_nonneg hC (Real.rpow_nonneg (by linarith) p)
  calc
    _ ≤ Real.exp (-z.re * t) * (C * (1 + t) ^ p) :=
      mul_le_mul_of_nonneg_left (bound t ht) (Real.exp_pos _).le
    _ ≤ Real.exp (-σ * t) * (C * (1 + t) ^ p) :=
      mul_le_mul_of_nonneg_right decay allowance
    _ = C * polynomialExponential σ p t := by unfold polynomialExponential; ring

theorem pickup_laplace_integrable_of_bound {C p : ℝ} (hC : 0 ≤ C) (hp : 0 ≤ p)
    (bound : ∀ t : ℝ, 0 ≤ t → |pickup t| ≤ C * (1 + t) ^ p)
    {z : ℂ} (hz : 0 < z.re) : IntegrableOn (pickupLaplaceIntegrand z) (Ioi 0) := by
  refine ((polynomial_exponential_integrable hz hp).const_mul C).mono'
    (pickup_laplace_integrand_continuous z).aestronglyMeasurable ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact pickup_laplace_integrand_bound hC bound le_rfl ht.le

/-- Conditional existence of the original transform on the open positive half-plane. -/
theorem whole_pickup_poly_laplace_integrable (growth : WholePickupPoly)
    {z : ℂ} (hz : 0 < z.re) : IntegrableOn (pickupLaplaceIntegrand z) (Ioi 0) := by
  rcases growth with ⟨C, p, hC, hp, bound⟩
  exact pickup_laplace_integrable_of_bound hC hp bound hz

def pickupLaplaceDerivativeIntegrand (z : ℂ) (t : ℝ) : ℂ :=
  -(t : ℂ) * pickupLaplaceIntegrand z t

theorem pickup_laplace_derivative_integrand_continuous (z : ℂ) :
    Continuous (pickupLaplaceDerivativeIntegrand z) := by
  exact Complex.continuous_ofReal.neg.mul (pickup_laplace_integrand_continuous z)

theorem pickup_laplace_integrand_hasDerivAt (z : ℂ) (t : ℝ) :
    HasDerivAt (fun w : ℂ ↦ pickupLaplaceIntegrand w t)
      (pickupLaplaceDerivativeIntegrand z t) z := by
  have derivative := (((hasDerivAt_id z).mul_const (t : ℂ)).neg.cexp).mul_const (pickup t : ℂ)
  simp only [Pi.neg_apply, id_eq] at derivative
  change HasDerivAt (fun w : ℂ ↦ Complex.exp (-(w * (t : ℂ))) * (pickup t : ℂ))
    (-(t : ℂ) * (Complex.exp (-(z * (t : ℂ))) * (pickup t : ℂ))) z
  convert derivative using 1 <;> first | rfl | ring

theorem pickup_laplace_derivative_integrand_bound {C p σ : ℝ} (hC : 0 ≤ C)
    (bound : ∀ t : ℝ, 0 ≤ t → |pickup t| ≤ C * (1 + t) ^ p)
    {z : ℂ} (hz : σ ≤ z.re) {t : ℝ} (ht : 0 ≤ t) :
    ‖pickupLaplaceDerivativeIntegrand z t‖ ≤ C * polynomialExponential σ (p + 1) t := by
  have allowance : 0 ≤ C * polynomialExponential σ p t :=
    mul_nonneg hC (mul_nonneg (Real.exp_pos _).le (Real.rpow_nonneg (by linarith) p))
  calc
    ‖pickupLaplaceDerivativeIntegrand z t‖ = t * ‖pickupLaplaceIntegrand z t‖ := by
      rw [pickupLaplaceDerivativeIntegrand, norm_mul, norm_neg, Complex.norm_real,
        Real.norm_eq_abs, abs_of_nonneg ht]
    _ ≤ t * (C * polynomialExponential σ p t) :=
      mul_le_mul_of_nonneg_left (pickup_laplace_integrand_bound hC bound hz ht) ht
    _ ≤ (1 + t) * (C * polynomialExponential σ p t) :=
      mul_le_mul_of_nonneg_right (by linarith : t ≤ 1 + t) allowance
    _ = C * polynomialExponential σ (p + 1) t := by
      unfold polynomialExponential
      rw [Real.rpow_add (by linarith : 0 < 1 + t), Real.rpow_one]
      ring

/-- Differentiation under the original integral uses a uniform positive-decay
neighborhood and the integrable allowance with exponent `p + 1`. -/
theorem pickup_laplace_hasDerivAt_of_bound {C p : ℝ} (hC : 0 ≤ C) (hp : 0 ≤ p)
    (bound : ∀ t : ℝ, 0 ≤ t → |pickup t| ≤ C * (1 + t) ^ p)
    {z : ℂ} (hz : 0 < z.re) :
    HasDerivAt pickupLaplace (∫ t : ℝ in Ioi 0, pickupLaplaceDerivativeIntegrand z t) z := by
  let σ : ℝ := z.re / 2
  have hσ : 0 < σ := by dsimp [σ]; linarith
  have sectorOpen : IsOpen {w : ℂ | σ < w.re} :=
    Complex.continuous_re.isOpen_preimage _ isOpen_Ioi
  have neighborhood : {w : ℂ | σ < w.re} ∈ 𝓝 z :=
    sectorOpen.mem_nhds (by dsimp [σ]; linarith)
  have measurable : ∀ᶠ w in 𝓝 z,
      AEStronglyMeasurable (pickupLaplaceIntegrand w) (volume.restrict (Ioi 0)) :=
    Filter.Eventually.of_forall (fun w ↦
      (pickup_laplace_integrand_continuous w).aestronglyMeasurable)
  have derivativeMeasurable : AEStronglyMeasurable (pickupLaplaceDerivativeIntegrand z)
      (volume.restrict (Ioi 0)) :=
    (pickup_laplace_derivative_integrand_continuous z).aestronglyMeasurable
  have derivativeBound : ∀ᵐ t : ℝ ∂volume.restrict (Ioi 0),
      ∀ w ∈ {w : ℂ | σ < w.re},
        ‖pickupLaplaceDerivativeIntegrand w t‖ ≤ C * polynomialExponential σ (p + 1) t := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    intro w hw
    exact pickup_laplace_derivative_integrand_bound hC bound (show σ < w.re from hw).le ht.le
  have differentiable : ∀ᵐ t : ℝ ∂volume.restrict (Ioi 0),
      ∀ w ∈ {w : ℂ | σ < w.re},
        HasDerivAt (fun a : ℂ ↦ pickupLaplaceIntegrand a t)
          (pickupLaplaceDerivativeIntegrand w t) w :=
    Filter.Eventually.of_forall (fun t w _ ↦ pickup_laplace_integrand_hasDerivAt w t)
  exact (hasDerivAt_integral_of_dominated_loc_of_deriv_le neighborhood measurable
    (pickup_laplace_integrable_of_bound hC hp bound hz) derivativeMeasurable derivativeBound
    ((polynomial_exponential_integrable hσ (by linarith : 0 ≤ p + 1)).const_mul C)
    differentiable).2

theorem whole_pickup_poly_laplace_hasDerivAt (growth : WholePickupPoly)
    {z : ℂ} (hz : 0 < z.re) :
    HasDerivAt pickupLaplace (∫ t : ℝ in Ioi 0, pickupLaplaceDerivativeIntegrand z t) z := by
  rcases growth with ⟨C, p, hC, hp, bound⟩
  exact pickup_laplace_hasDerivAt_of_bound hC hp bound hz

/-- Conditional holomorphy of the original transform on its exact open positive half-plane. -/
theorem whole_pickup_poly_laplace_holomorphic (growth : WholePickupPoly) :
    DifferentiableOn ℂ pickupLaplace {z : ℂ | 0 < z.re} := by
  intro z hz
  exact (whole_pickup_poly_laplace_hasDerivAt growth hz).differentiableAt.differentiableWithinAt

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupLaplaceGrowth
