/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.GeneralTopology.PrimitiveRegularity
import GRWTSK.MeasureAndIntegration.LaplaceCumulativeSquareBound

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

end GRWTSK.NumberTheory.Moebius
