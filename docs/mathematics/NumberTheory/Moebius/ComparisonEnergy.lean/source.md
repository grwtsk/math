# Complete source: GRWTSK.NumberTheory.Moebius.ComparisonEnergy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79ce1f8d04b7c4666f3a81518702123e50610243` · SHA-256 `33535582ae59058cd5f07b3f94b2b805bcf575e1fb41f47d0e6e56cd3f5878c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
