/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.GeneralTopology.PrimitiveRegularity
import GRWTSK.MeasureAndIntegration.LaplaceCumulativeSquareBound
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

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
  have hEq : (fun u : ℝ => ‖dampedPickupVelocity σ u‖ ^ 2) =
      (Ioi (0 : ℝ)).indicator (fun u => Real.exp (-(2 * σ) * u) * pickupVelocity u ^ 2) := by
    funext u
    by_cases hu : u ∈ Ioi (0 : ℝ)
    · simp only [dampedPickupVelocity, indicator_of_mem hu, Complex.norm_real, Real.norm_eq_abs,
        sq_abs, mul_pow]
      rw [pow_two (Real.exp _), ← Real.exp_add]
      congr 2
      ring
    · simp [dampedPickupVelocity, indicator_of_notMem hu]
  rw [hEq, integrable_indicator_iff measurableSet_Ioi]
  exact (weightedPickupVelocitySquare_le_of_weakMertens hB hσ hM).1

end GRWTSK.NumberTheory.Moebius
