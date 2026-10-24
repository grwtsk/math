# Complete source: GRWTSK.NumberTheory.Moebius.MeanSquareLaplaceHolomorphy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d3afc1e5e733abfba81c9b96afbaad5d860e83b` · SHA-256 `e3c03eba8d4663a77baf074c6af83aec086bf4143197a11a1e4a512d337ebd33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.MeanSquareGrowth
import GRWTSK.NumberTheory.Moebius.PolynomialLaplaceHolomorphy
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus

/-!
# original Laplace transform from cumulative energy alone

The oriented interval primitive equals the original completed pickup energy
on every nonnegative horizon. Its actual derivative is the squared pickup.
A proved weighted primitive accounts for the entire infinite tail before
weighted L2 integrability is used to obtain weighted L1 integrability.

The only open arithmetic premise is the actual `EnergyPoly`. No amplitude
return, pointwise polynomial growth, growth witness, or RH result is asserted.

Research direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupLaplaceEnergy

open MeasureTheory Set Filter Topology
open ArithmeticPickupSource ArithmeticPickupEnergy ArithmeticPickupGram
open ArithmeticPickupContinuity ArithmeticPickupEnergyGrowth ArithmeticPickupLaplaceGrowth

noncomputable section

def intervalEnergy (T : ℝ) : ℝ := ∫ t : ℝ in (0 : ℝ)..T, |pickup t| ^ 2

theorem interval_energy_eq_energy {T : ℝ} (hT : 0 ≤ T) : intervalEnergy T = energy T := by
  unfold intervalEnergy energy
  rw [intervalIntegral.integral_of_le hT]

theorem pickup_square_continuous : Continuous (fun t : ℝ ↦ |pickup t| ^ 2) :=
  pickup_continuous.abs.pow 2

theorem interval_energy_hasDerivAt (T : ℝ) :
    HasDerivAt intervalEnergy (|pickup T| ^ 2) T :=
  (pickup_square_continuous.integral_hasStrictDerivAt 0 T).hasDerivAt

theorem interval_energy_continuous : Continuous intervalEnergy :=
  (show Differentiable ℝ intervalEnergy from
    fun T ↦ (interval_energy_hasDerivAt T).differentiableAt).continuous

theorem interval_energy_nonnegative {T : ℝ} (hT : 0 ≤ T) : 0 ≤ intervalEnergy T := by
  rw [interval_energy_eq_energy hT]
  exact actual_energy_nonnegative T

def dampedEnergy (σ T : ℝ) : ℝ := Real.exp (-σ * T) * intervalEnergy T

theorem damped_energy_continuous (σ : ℝ) : Continuous (dampedEnergy σ) :=
  (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul interval_energy_continuous

theorem damped_energy_nonnegative (σ : ℝ) {T : ℝ} (hT : 0 ≤ T) :
    0 ≤ dampedEnergy σ T :=
  mul_nonneg (Real.exp_pos _).le (interval_energy_nonnegative hT)

theorem damped_energy_bound {C q : ℝ}
    (bound : ∀ T : ℝ, 0 ≤ T → energy T ≤ C * (1 + T) ^ q)
    (σ : ℝ) {T : ℝ} (hT : 0 ≤ T) :
    dampedEnergy σ T ≤ C * polynomialExponential σ q T := by
  unfold dampedEnergy
  rw [interval_energy_eq_energy hT]
  calc
    _ ≤ Real.exp (-σ * T) * (C * (1 + T) ^ q) :=
      mul_le_mul_of_nonneg_left (bound T hT) (Real.exp_pos _).le
    _ = C * polynomialExponential σ q T := by unfold polynomialExponential; ring

theorem damped_energy_integrable_of_bound {C q σ : ℝ} (hq : 0 ≤ q)
    (bound : ∀ T : ℝ, 0 ≤ T → energy T ≤ C * (1 + T) ^ q) (hσ : 0 < σ) :
    IntegrableOn (dampedEnergy σ) (Ioi 0) := by
  refine ((polynomial_exponential_integrable hσ hq).const_mul C).mono'
    (damped_energy_continuous σ).aestronglyMeasurable ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with T hT
  rw [Real.norm_eq_abs, abs_of_nonneg (damped_energy_nonnegative σ hT.le)]
  exact damped_energy_bound bound σ hT.le

theorem polynomial_exponential_tendsto_zero {σ : ℝ} (hσ : 0 < σ) (q : ℝ) :
    Tendsto (polynomialExponential σ q) atTop (𝓝 0) := by
  have shifted := (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero q σ hσ).comp
    (tendsto_atTop_add_const_left _ 1 tendsto_id)
  have identity : polynomialExponential σ q =
      fun t : ℝ ↦ Real.exp σ * ((1 + t) ^ q * Real.exp (-σ * (1 + t))) := by
    funext t
    have exponential : Real.exp σ * Real.exp (-σ * (1 + t)) = Real.exp (-σ * t) := by
      rw [← Real.exp_add]
      congr 1
      ring
    unfold polynomialExponential
    rw [← exponential]
    ring
  rw [identity]
  simpa only [Function.comp_def, id_eq, mul_zero] using shifted.const_mul (Real.exp σ)

theorem damped_energy_tendsto_zero_of_bound {C q σ : ℝ}
    (bound : ∀ T : ℝ, 0 ≤ T → energy T ≤ C * (1 + T) ^ q) (hσ : 0 < σ) :
    Tendsto (dampedEnergy σ) atTop (𝓝 0) := by
  apply squeeze_zero'
  · filter_upwards [eventually_ge_atTop 0] with T hT
    exact damped_energy_nonnegative σ hT
  · filter_upwards [eventually_ge_atTop 0] with T hT
    exact damped_energy_bound bound σ hT
  · simpa only [mul_zero] using (polynomial_exponential_tendsto_zero hσ q).const_mul C

def weightedSquaredPickup (σ t : ℝ) : ℝ := Real.exp (-σ * t) * |pickup t| ^ 2

theorem weighted_squared_pickup_nonnegative (σ t : ℝ) : 0 ≤ weightedSquaredPickup σ t :=
  mul_nonneg (Real.exp_pos _).le (sq_nonneg _)

def weightedEnergyPrimitive (σ T : ℝ) : ℝ :=
  dampedEnergy σ T + σ * ∫ t : ℝ in (0 : ℝ)..T, dampedEnergy σ t

/-- The exact derivative retains the weighted squared pickup and cancels only
the explicitly accounted cumulative-energy term. -/
theorem weighted_energy_primitive_hasDerivAt (σ T : ℝ) :
    HasDerivAt (weightedEnergyPrimitive σ) (weightedSquaredPickup σ T) T := by
  have exponential := ((hasDerivAt_id T).const_mul (-σ)).exp
  simp only [id_eq, mul_one] at exponential
  have product := exponential.mul (interval_energy_hasDerivAt T)
  have primitive := (damped_energy_continuous σ).integral_hasStrictDerivAt 0 T
  have derivative := product.add (primitive.hasDerivAt.const_mul σ)
  convert derivative using 1 <;>
    first | rfl | (dsimp [weightedEnergyPrimitive, weightedSquaredPickup, dampedEnergy]; ring)

theorem weighted_energy_primitive_tendsto_of_bound {C q σ : ℝ} (hq : 0 ≤ q)
    (bound : ∀ T : ℝ, 0 ≤ T → energy T ≤ C * (1 + T) ^ q) (hσ : 0 < σ) :
    Tendsto (weightedEnergyPrimitive σ) atTop
      (𝓝 (σ * ∫ t : ℝ in Ioi 0, dampedEnergy σ t)) := by
  have primitive := intervalIntegral_tendsto_integral_Ioi 0
    (damped_energy_integrable_of_bound hq bound hσ) tendsto_id
  change Tendsto
    (fun T : ℝ ↦ dampedEnergy σ T + σ * ∫ t : ℝ in (0 : ℝ)..T, dampedEnergy σ t)
    atTop (𝓝 (σ * ∫ t : ℝ in Ioi 0, dampedEnergy σ t))
  simpa only [zero_add, id_eq] using
    (damped_energy_tendsto_zero_of_bound bound hσ).add (primitive.const_mul σ)

/-- Actual exponential-weighted squared pickup is integrable from cumulative energy alone. -/
theorem energy_poly_weighted_squared_pickup_integrable (growth : EnergyPoly)
    {σ : ℝ} (hσ : 0 < σ) : IntegrableOn (weightedSquaredPickup σ) (Ioi 0) := by
  rcases growth with ⟨C, q, _hC, hq, bound⟩
  exact integrableOn_Ioi_deriv_of_nonneg'
    (fun T _ ↦ weighted_energy_primitive_hasDerivAt σ T)
    (fun T _ ↦ weighted_squared_pickup_nonnegative σ T)
    (weighted_energy_primitive_tendsto_of_bound hq bound hσ)


def weightedAbsolutePickup (σ t : ℝ) : ℝ := Real.exp (-σ * t) * |pickup t|

theorem weighted_absolute_pickup_continuous (σ : ℝ) :
    Continuous (weightedAbsolutePickup σ) :=
  (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul pickup_continuous.abs

theorem weighted_absolute_pickup_nonnegative (σ t : ℝ) :
    0 ≤ weightedAbsolutePickup σ t := mul_nonneg (Real.exp_pos _).le (abs_nonneg _)

/-- This universal inequality supplies no pointwise polynomial bound on the pickup. -/
theorem weighted_absolute_pickup_bound (σ t : ℝ) :
    weightedAbsolutePickup σ t ≤ Real.exp (-σ * t) + weightedSquaredPickup σ t := by
  have absoluteBound : |pickup t| ≤ 1 + |pickup t| ^ 2 := by
    nlinarith [sq_nonneg (|pickup t| - 1)]
  have multiplied := mul_le_mul_of_nonneg_left absoluteBound (Real.exp_pos (-σ * t)).le
  dsimp [weightedAbsolutePickup, weightedSquaredPickup]
  nlinarith

/-- Cumulative-energy polynomial growth implies absolute convergence
against every positive decay. -/
theorem energy_poly_weighted_absolute_pickup_integrable (growth : EnergyPoly)
    {σ : ℝ} (hσ : 0 < σ) : IntegrableOn (weightedAbsolutePickup σ) (Ioi 0) := by
  have exponential : IntegrableOn (fun t : ℝ ↦ Real.exp (-σ * t)) (Ioi 0) := by
    have identity : polynomialExponential σ 0 = fun t : ℝ ↦ Real.exp (-σ * t) := by
      funext t
      simp [polynomialExponential]
    rw [← identity]
    exact polynomial_exponential_integrable hσ (show (0 : ℝ) ≤ 0 from le_rfl)
  refine (exponential.add (energy_poly_weighted_squared_pickup_integrable growth hσ)).mono'
    (weighted_absolute_pickup_continuous σ).aestronglyMeasurable ?_
  exact Filter.Eventually.of_forall (fun t ↦ by
    rw [Real.norm_eq_abs, abs_of_nonneg (weighted_absolute_pickup_nonnegative σ t)]
    exact weighted_absolute_pickup_bound σ t)

/-- Conditional existence uses the original literal complex integrand and only actual energy. -/
theorem energy_poly_laplace_integrable (growth : EnergyPoly)
    {z : ℂ} (hz : 0 < z.re) : IntegrableOn (pickupLaplaceIntegrand z) (Ioi 0) := by
  refine (energy_poly_weighted_absolute_pickup_integrable growth hz).mono'
    (pickup_laplace_integrand_continuous z).aestronglyMeasurable ?_
  exact Filter.Eventually.of_forall (fun t ↦ by
    rw [norm_pickup_laplace_integrand]
    exact le_rfl)


def timeWeightedAbsolutePickup (σ t : ℝ) : ℝ := t * weightedAbsolutePickup σ t

theorem time_weighted_absolute_pickup_continuous (σ : ℝ) :
    Continuous (timeWeightedAbsolutePickup σ) :=
  continuous_id.mul (weighted_absolute_pickup_continuous σ)

theorem time_weighted_absolute_pickup_nonnegative (σ : ℝ) {t : ℝ} (ht : 0 ≤ t) :
    0 ≤ timeWeightedAbsolutePickup σ t :=
  mul_nonneg ht (weighted_absolute_pickup_nonnegative σ t)

/-- The extra time factor is absorbed into half the actual exponential decay. -/
theorem time_weighted_absolute_pickup_bound {σ : ℝ} (hσ : 0 < σ) (t : ℝ) :
    timeWeightedAbsolutePickup σ t ≤ (σ / 2)⁻¹ * weightedAbsolutePickup (σ / 2) t := by
  have half : 0 < σ / 2 := by linarith
  have basic : (σ / 2) * t ≤ Real.exp ((σ / 2) * t) := by
    linarith [Real.add_one_le_exp ((σ / 2) * t)]
  have timeBound : t ≤ Real.exp ((σ / 2) * t) / (σ / 2) :=
    (le_div_iff₀ half).mpr (by simpa only [mul_comm] using basic)
  have absorbed : t * Real.exp (-σ * t) ≤ (σ / 2)⁻¹ * Real.exp (-(σ / 2) * t) := by
    calc
      _ ≤ (Real.exp ((σ / 2) * t) / (σ / 2)) * Real.exp (-σ * t) :=
        mul_le_mul_of_nonneg_right timeBound (Real.exp_pos _).le
      _ = (σ / 2)⁻¹ * Real.exp (-(σ / 2) * t) := by
        rw [div_eq_mul_inv]
        calc
          _ = (σ / 2)⁻¹ * (Real.exp ((σ / 2) * t) * Real.exp (-σ * t)) := by ring
          _ = _ := by rw [← Real.exp_add]; congr 2; ring
  have multiplied := mul_le_mul_of_nonneg_right absorbed (abs_nonneg (pickup t))
  dsimp [timeWeightedAbsolutePickup, weightedAbsolutePickup]
  nlinarith

theorem energy_poly_time_weighted_absolute_pickup_integrable (growth : EnergyPoly)
    {σ : ℝ} (hσ : 0 < σ) : IntegrableOn (timeWeightedAbsolutePickup σ) (Ioi 0) := by
  have half : 0 < σ / 2 := by linarith
  refine ((energy_poly_weighted_absolute_pickup_integrable growth half).const_mul
    (σ / 2)⁻¹).mono' (time_weighted_absolute_pickup_continuous σ).aestronglyMeasurable ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  rw [Real.norm_eq_abs, abs_of_nonneg (time_weighted_absolute_pickup_nonnegative σ ht.le)]
  exact time_weighted_absolute_pickup_bound hσ t

theorem pickup_laplace_derivative_energy_bound {σ : ℝ} {z : ℂ}
    (hz : σ ≤ z.re) {t : ℝ} (ht : 0 ≤ t) :
    ‖pickupLaplaceDerivativeIntegrand z t‖ ≤ timeWeightedAbsolutePickup σ t := by
  have decay : Real.exp (-z.re * t) ≤ Real.exp (-σ * t) :=
    Real.exp_le_exp.mpr (by nlinarith)
  calc
    ‖pickupLaplaceDerivativeIntegrand z t‖ = t * ‖pickupLaplaceIntegrand z t‖ := by
      rw [pickupLaplaceDerivativeIntegrand, norm_mul, norm_neg, Complex.norm_real,
        Real.norm_eq_abs, abs_of_nonneg ht]
    _ = t * (Real.exp (-z.re * t) * |pickup t|) := by rw [norm_pickup_laplace_integrand]
    _ ≤ t * (Real.exp (-σ * t) * |pickup t|) :=
      mul_le_mul_of_nonneg_left
        (mul_le_mul_of_nonneg_right decay (abs_nonneg (pickup t))) ht

/-- The actual derivative is dominated uniformly in a positive-decay neighborhood.
The majorant's entire tail is integrable from the actual cumulative-energy premise. -/
theorem energy_poly_laplace_hasDerivAt (growth : EnergyPoly)
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
        ‖pickupLaplaceDerivativeIntegrand w t‖ ≤ timeWeightedAbsolutePickup σ t := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    intro w hw
    exact pickup_laplace_derivative_energy_bound (show σ < w.re from hw).le ht.le
  have differentiable : ∀ᵐ t : ℝ ∂volume.restrict (Ioi 0),
      ∀ w ∈ {w : ℂ | σ < w.re},
        HasDerivAt (fun a : ℂ ↦ pickupLaplaceIntegrand a t)
          (pickupLaplaceDerivativeIntegrand w t) w :=
    Filter.Eventually.of_forall (fun t w _ ↦ pickup_laplace_integrand_hasDerivAt w t)
  exact (hasDerivAt_integral_of_dominated_loc_of_deriv_le neighborhood measurable
    (energy_poly_laplace_integrable growth hz) derivativeMeasurable derivativeBound
    (energy_poly_time_weighted_absolute_pickup_integrable growth hσ) differentiable).2

/-- Conditional holomorphy on the exact positive half-plane from actual energy alone. -/
theorem energy_poly_laplace_holomorphic (growth : EnergyPoly) :
    DifferentiableOn ℂ pickupLaplace {z : ℂ | 0 < z.re} := by
  intro z hz
  exact (energy_poly_laplace_hasDerivAt growth hz).differentiableAt.differentiableWithinAt

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupLaplaceEnergy
```
