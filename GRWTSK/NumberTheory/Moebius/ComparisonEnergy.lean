/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.EnergyAbscissa

/-!
# Observable comparison with a complete paid residual

A comparison waveform may come from another representation. Its identification,
continuity and every-positive-rate energy bounds for both the waveform and the
complete difference must be proved independently. No such arithmetic supplier
is asserted here.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory

/-- The residual is the literal whole signed pickup minus the comparison waveform. -/
theorem pickupEnergy_comparison_le {g : ℝ → ℝ} (hg : Continuous g)
    {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T ≤
      2 * (∫ u in (0 : ℝ)..T, g u ^ 2) +
        2 * (∫ u in (0 : ℝ)..T, (wholePickup u - g u) ^ 2) := by
  have hm : Continuous (fun u ↦ 2 * g u ^ 2 + 2 * (wholePickup u - g u) ^ 2) :=
    (continuous_const.mul (hg.pow 2)).add
      (continuous_const.mul ((wholePickup_continuous.sub hg).pow 2))
  calc
    pickupEnergy T ≤ ∫ u in (0 : ℝ)..T, 2 * g u ^ 2 + 2 * (wholePickup u - g u) ^ 2 := by
      apply intervalIntegral.integral_mono_on hT (wholePickup_sq_intervalIntegrable 0 T)
        (hm.intervalIntegrable 0 T)
      intro u _
      nlinarith [sq_nonneg (g u - (wholePickup u - g u))]
    _ = _ := by
      have hmain : IntervalIntegrable (fun u ↦ 2 * g u ^ 2) volume 0 T :=
        (continuous_const.mul (hg.pow 2)).intervalIntegrable 0 T
      have herr : IntervalIntegrable (fun u ↦ 2 * (wholePickup u - g u) ^ 2) volume 0 T :=
        (continuous_const.mul ((wholePickup_continuous.sub hg).pow 2)).intervalIntegrable 0 T
      rw [intervalIntegral.integral_add hmain herr,
        intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul]

theorem pickupEnergySubexp_of_comparison {g : ℝ → ℝ} (hg : Continuous g)
    (hmain : SubexponentialUpper (fun T ↦ ∫ u in (0 : ℝ)..T, g u ^ 2))
    (hresidual : SubexponentialUpper
      (fun T ↦ ∫ u in (0 : ℝ)..T, (wholePickup u - g u) ^ 2)) :
    PickupEnergySubexp :=
  ((hmain.const_mul (by norm_num : (0 : ℝ) ≤ 2)).add
    (hresidual.const_mul (by norm_num : (0 : ℝ) ≤ 2))).mono
      (fun _ hT ↦ pickupEnergy_comparison_le hg hT)

/-- A complete observable comparison returns RH only after both energy budgets are paid. -/
theorem riemannHypothesis_of_pickup_comparison {g : ℝ → ℝ} (hg : Continuous g)
    (hmain : SubexponentialUpper (fun T ↦ ∫ u in (0 : ℝ)..T, g u ^ 2))
    (hresidual : SubexponentialUpper
      (fun T ↦ ∫ u in (0 : ℝ)..T, (wholePickup u - g u) ^ 2)) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupEnergySubexp (pickupEnergySubexp_of_comparison hg hmain hresidual)

end GRWTSK.RiemannHypothesis.CCC
