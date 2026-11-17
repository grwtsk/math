/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.GeneralTopology.PrimitiveRegularity
import GRWTSK.MeasureAndIntegration.LaplaceCumulativeSquareBound
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts
import Mathlib.MeasureTheory.Integral.ExpDecay
import Mathlib.Analysis.Fourier.LpSpace

/-!
# Weighted square bound for the exact Möbius pickup velocity
-/

noncomputable section
set_option autoImplicit false

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.MeasureAndIntegration.LaplaceCumulativeSquareBound

namespace GRWTSK.NumberTheory.Moebius

/-- The explicit cumulative velocity-square allowance gives the weighted
allowance needed for the Laplace transform on a line of real part `σ`. -/
theorem weightedPickupVelocitySquare_le {A D σ : ℝ}
    (hA : 0 ≤ A) (hD : 0 ≤ D) (hσ : 0 < σ)
    (hE : ∀ T ≥ 0, (∫ u in (0 : ℝ)..T, pickupVelocity u ^ 2) ≤ A * T + D) :
    IntegrableOn (fun u => Real.exp (-(2 * σ) * u) * pickupVelocity u ^ 2) (Ioi 0) ∧
      (∫ u in Ioi (0 : ℝ), Real.exp (-(2 * σ) * u) * pickupVelocity u ^ 2) ≤
        A / (2 * σ) + D := by
  apply weightedVelocitySquare_le pickupVelocity pickupVelocity_measurable
    (fun T _ => ?_) hA hD (mul_pos (by norm_num) hσ) hE
  have he : Continuous (fun u : ℝ => Real.exp u) := Real.continuous_exp
  apply (he.intervalIntegrable 0 T).mono_fun'
    (pickupVelocity_measurable.pow_const 2).aestronglyMeasurable
  exact ae_of_all _ fun u => by
    change ‖pickupVelocity u ^ 2‖ ≤ Real.exp u
    rw [Real.norm_of_nonneg (sq_nonneg _)]
    calc
      pickupVelocity u ^ 2 = |pickupVelocity u| ^ 2 := (sq_abs _).symm
      _ ≤ Real.exp (u / 2) ^ 2 := pow_le_pow_left₀ (abs_nonneg _) (pickupVelocity_abs_le u) _
      _ = Real.exp u := by rw [pow_two, ← Real.exp_add]; congr 1; ring

/-- Change from the exact signed velocity to the weak Mertens integral. -/
theorem pickupVelocitySquare_integral_eq_mertens (a b : ℝ) :
    (∫ u in a..b, pickupVelocity u ^ 2) =
      ∫ x in Real.exp a..Real.exp b, mertensPrefix x ^ 2 / x ^ 2 := by
  let energy (x : ℝ) := mertensPrefix x ^ 2 / x ^ 2
  calc
    _ = ∫ u in a..b, (energy ∘ Real.exp) u * Real.exp u := by
      apply intervalIntegral.integral_congr
      intro u _
      have he : Real.exp (-u / 2) ^ 2 = Real.exp (-u) := by
        rw [pow_two, ← Real.exp_add]
        congr 1
        ring
      simp only [pickupVelocity, mul_pow, he, Real.exp_neg, energy, Function.comp_apply]
      field_simp
    _ = _ := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
      Real.continuous_exp.continuousOn (fun u _ => Real.hasDerivAt_exp u)
      (fun u _ => (Real.exp_pos u).le)

/-- A supplied weak Mertens bound gives the exact weighted velocity estimate
on every positive Laplace line. -/
theorem weightedPickupVelocitySquare_le_of_weakMertens {B σ : ℝ}
    (hB : 0 ≤ B) (hσ : 0 < σ)
    (hM : ∀ X ≥ 1, (∫ x in (1 : ℝ)..X, mertensPrefix x ^ 2 / x ^ 2) ≤ B * Real.log X) :
    IntegrableOn (fun u => Real.exp (-(2 * σ) * u) * pickupVelocity u ^ 2) (Ioi 0) ∧
      (∫ u in Ioi (0 : ℝ), Real.exp (-(2 * σ) * u) * pickupVelocity u ^ 2) ≤
        B / (2 * σ) := by
  simpa only [add_zero] using
    weightedPickupVelocitySquare_le hB (D := 0) le_rfl hσ (fun T hT => by
      rw [pickupVelocitySquare_integral_eq_mertens, Real.exp_zero, add_zero]
      simpa only [Real.log_exp] using hM (Real.exp T) (Real.one_le_exp_iff.mpr hT))

/-- The exact signed velocity with Laplace damping, extended by zero to the
whole real line for the Fourier transform. -/
def dampedPickupVelocity (σ : ℝ) : ℝ → ℂ :=
  (Ioi (0 : ℝ)).indicator fun u => ((Real.exp (-σ * u) * pickupVelocity u : ℝ) : ℂ)

private theorem norm_dampedPickupVelocity_sq (σ : ℝ) : (fun u : ℝ => ‖dampedPickupVelocity σ u‖ ^ 2) =
    (Ioi (0 : ℝ)).indicator (fun u => Real.exp (-(2 * σ) * u) * pickupVelocity u ^ 2) := by
  funext u
  by_cases hu : u ∈ Ioi (0 : ℝ)
  · simp only [dampedPickupVelocity, indicator_of_mem hu, Complex.norm_real, Real.norm_eq_abs,
      sq_abs, mul_pow]
    rw [pow_two (Real.exp _), ← Real.exp_add]
    congr 2
    ring
  · simp [dampedPickupVelocity, indicator_of_notMem hu]

/-- Weak Mertens puts the whole-line damped velocity in the Plancherel domain. -/
theorem dampedPickupVelocity_memLp_two_of_weakMertens {B σ : ℝ}
    (hB : 0 ≤ B) (hσ : 0 < σ)
    (hM : ∀ X ≥ 1, (∫ x in (1 : ℝ)..X, mertensPrefix x ^ 2 / x ^ 2) ≤ B * Real.log X) :
    MemLp (dampedPickupVelocity σ) 2 volume := by
  have he : Measurable (fun u : ℝ => Real.exp (-σ * u)) := by fun_prop
  have hm : Measurable (dampedPickupVelocity σ) :=
    (Complex.continuous_ofReal.measurable.comp (he.mul pickupVelocity_measurable)).indicator
      measurableSet_Ioi
  apply (memLp_two_iff_integrable_sq_norm hm.aestronglyMeasurable).2
  rw [norm_dampedPickupVelocity_sq, integrable_indicator_iff measurableSet_Ioi]
  exact (weightedPickupVelocitySquare_le_of_weakMertens hB hσ hM).1

/-- Weak Mertens also gives absolute integrability of the damped velocity.
Splitting the damping equally allows the product of two (L^2) factors. -/
theorem dampedPickupVelocity_integrable_of_weakMertens {B σ : ℝ}
    (hB : 0 ≤ B) (hσ : 0 < σ)
    (hM : ∀ X ≥ 1, (∫ x in (1 : ℝ)..X, mertensPrefix x ^ 2 / x ^ 2) ≤ B * Real.log X) :
    Integrable (dampedPickupVelocity σ) volume := by
  let w (u : ℝ) : ℂ := (Ioi (0 : ℝ)).indicator
    (fun t => (Real.exp (-(σ / 2) * t) : ℂ)) u
  have hw_meas : Measurable w := by
    apply Measurable.indicator _ measurableSet_Ioi
    exact Complex.continuous_ofReal.measurable.comp (by fun_prop)
  have he (u : ℝ) : Real.exp (-(σ / 2) * u) ^ 2 = Real.exp (-σ * u) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hw : MemLp w 2 volume := by
    apply (memLp_two_iff_integrable_sq_norm hw_meas.aestronglyMeasurable).2
    have hEq : (fun u => ‖w u‖ ^ 2) =
        (Ioi (0 : ℝ)).indicator (fun u => Real.exp (-σ * u)) := by
      funext u
      by_cases hu : u ∈ Ioi (0 : ℝ)
      · simp only [w, indicator_of_mem hu, Complex.norm_real, Real.norm_eq_abs,
          abs_of_pos (Real.exp_pos _), he]
      · simp [w, indicator_of_notMem hu]
    rw [hEq, integrable_indicator_iff measurableSet_Ioi]
    simpa only [neg_mul] using exp_neg_integrableOn_Ioi 0 hσ
  have hv := dampedPickupVelocity_memLp_two_of_weakMertens hB (half_pos hσ) hM
  have hEq : w * dampedPickupVelocity (σ / 2) = dampedPickupVelocity σ := by
    funext u
    by_cases hu : u ∈ Ioi (0 : ℝ)
    · simp only [Pi.mul_apply, w, dampedPickupVelocity, indicator_of_mem hu]
      rw [← Complex.ofReal_mul, ← mul_assoc, ← pow_two, he]
    · simp [w, dampedPickupVelocity, indicator_of_notMem hu]
  rw [← hEq]
  exact hw.integrable_mul hv

open scoped FourierTransform

/-- Mathlib's real Fourier frequency `ξ` corresponds to imaginary Laplace
coordinate `2 * π * ξ` for the exact damped velocity. -/
theorem fourier_dampedPickupVelocity_eq_signedLaplace (σ ξ : ℝ) :
    𝓕 (dampedPickupVelocity σ) ξ =
      signedLaplace pickupVelocity ((σ : ℂ) + (2 * Real.pi * ξ : ℝ) * Complex.I) := by
  rw [Real.fourier_real_eq_integral_exp_smul, signedLaplace, ← integral_indicator measurableSet_Ioi]
  congr 1
  funext u
  by_cases hu : u ∈ Ioi (0 : ℝ)
  · simp only [dampedPickupVelocity, indicator_of_mem hu, smul_eq_mul,
      Complex.ofReal_mul, Complex.ofReal_exp]
    rw [← mul_assoc, ← Complex.exp_add]
    congr 2
    push_cast
    ring
  · simp [dampedPickupVelocity, indicator_of_notMem hu]

/-- The weak Mertens allowance bounds the Plancherel energy of the exact
damped velocity. -/
theorem fourierLp_dampedPickupVelocity_norm_sq_le_of_weakMertens {B σ : ℝ}
    (hB : 0 ≤ B) (hσ : 0 < σ)
    (hM : ∀ X ≥ 1, (∫ x in (1 : ℝ)..X, mertensPrefix x ^ 2 / x ^ 2) ≤ B * Real.log X) :
    ‖𝓕 ((dampedPickupVelocity_memLp_two_of_weakMertens hB hσ hM).toLp
        (dampedPickupVelocity σ))‖ ^ 2 ≤ B / (2 * σ) := by
  let h := dampedPickupVelocity_memLp_two_of_weakMertens hB hσ hM
  let f := h.toLp (dampedPickupVelocity σ)
  change ‖𝓕 f‖ ^ 2 ≤ _
  rw [Lp.norm_fourier_eq]
  have hn : ‖f‖ ^ 2 = ∫ u : ℝ, ‖f u‖ ^ 2 := by
    apply Complex.ofReal_injective
    calc
      _ = inner ℂ f f := by simp [inner_self_eq_norm_sq_to_K, Complex.ofReal_pow]
      _ = ∫ u : ℝ, ((‖f u‖ ^ 2 : ℝ) : ℂ) := by
        change (∫ u : ℝ, inner ℂ (f u) (f u)) = _
        simp [inner_self_eq_norm_sq_to_K, Complex.ofReal_pow]
      _ = _ := integral_ofReal
  rw [hn]
  calc
    _ = ∫ u : ℝ, ‖dampedPickupVelocity σ u‖ ^ 2 := by
      apply integral_congr_ae
      filter_upwards [h.coeFn_toLp] with u hu
      rw [hu]
    _ ≤ _ := by
      rw [norm_dampedPickupVelocity_sq, integral_indicator measurableSet_Ioi]
      exact (weightedPickupVelocitySquare_le_of_weakMertens hB hσ hM).2

end GRWTSK.NumberTheory.Moebius
