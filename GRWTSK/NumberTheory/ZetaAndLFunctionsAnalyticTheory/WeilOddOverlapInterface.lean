/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Absorbing the interface term of the odd Weil overlap

This formalizes the scalar completion of the square and its integral in
the complementary variable in [§14 of the signed odd-support reduction][reduction].
The [program journal] tracks the return to the original arithmetic test.
For each fixed point in the prime-invariant interval, take the measure
restricted to its complement, the interface kernel as the density, and
its integral as the positive mass used to distribute the reserve.

The square identity exhibits the exact residual with positive coefficient.
Equality occurs at its vertex, so the surviving coefficient of the
complementary value is sharp for fixed positive reserve and kernel mass.
The integral theorem retains the necessary integrability hypotheses.
The physical kernel estimates, integration in the first variable, the
signed arithmetic decomposition, and the complementary sign remain
separate source-return obligations.

[reduction]: https://github.com/grwtsk/math/blob/84eac80421379d78a17ddbf3d975e5416301f97a/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilOddSupportBoundaryReflection.md#14-remove-the-prime-invariant-interval-from-the-signed-overlap-test
[program journal]: https://github.com/grwtsk/hs/issues/2
-/

set_option autoImplicit false

open MeasureTheory

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddOverlapInterface

/-- The exact deficit after paying for the complementary value. -/
theorem interfaceEnergy_sub_paid_eq {δ W : ℝ} (hδ : 0 < δ) (hW : 0 < W) (u v : ℝ) :
    δ / W * u ^ 2 + 2 * (u - v) ^ 2 - 2 * δ / (δ + 2 * W) * v ^ 2 =
      (δ + 2 * W) / W * (u - 2 * W / (δ + 2 * W) * v) ^ 2 := by
  have hsum : 0 < δ + 2 * W := by positivity
  field_simp [ne_of_gt hW, ne_of_gt hsum]
  ring

/-- The positive reserve and interface difference jointly pay for the complementary value. -/
theorem interface_absorption {δ W : ℝ} (hδ : 0 < δ) (hW : 0 < W) (u v : ℝ) :
    2 * δ / (δ + 2 * W) * v ^ 2 ≤ δ / W * u ^ 2 + 2 * (u - v) ^ 2 := by
  apply sub_nonneg.mp
  rw [interfaceEnergy_sub_paid_eq hδ hW]
  positivity

/-- The residual vanishes exactly at the minimizing value of the first variable. -/
theorem interface_absorption_eq_iff {δ W : ℝ} (hδ : 0 < δ) (hW : 0 < W) (u v : ℝ) :
    δ / W * u ^ 2 + 2 * (u - v) ^ 2 = 2 * δ / (δ + 2 * W) * v ^ 2 ↔
      u = 2 * W / (δ + 2 * W) * v := by
  have hcoeff : 0 < (δ + 2 * W) / W := by positivity
  rw [← sub_eq_zero, interfaceEnergy_sub_paid_eq hδ hW,
    mul_eq_zero, or_iff_right (ne_of_gt hcoeff), sq_eq_zero_iff, sub_eq_zero]

/-- Integrate the interface bound in the complementary variable. The mass of the
nonnegative density recovers exactly the reserve expended at the fixed first point. -/
theorem integral_interface_absorption {β : Type*} [MeasurableSpace β] {μ : Measure β}
    {δ : ℝ} (hδ : 0 < δ) (u : ℝ) {κ v : β → ℝ}
    (hκ : Integrable κ μ) (hκ_nonneg : ∀ᵐ y ∂μ, 0 ≤ κ y)
    (hW : 0 < ∫ y, κ y ∂μ)
    (hdiff : Integrable (fun y => κ y * (u - v y) ^ 2) μ)
    (hsq : Integrable (fun y => κ y * (v y) ^ 2) μ) :
    (2 * δ / (δ + 2 * (∫ y, κ y ∂μ))) * (∫ y, κ y * (v y) ^ 2 ∂μ) ≤
      δ * u ^ 2 + 2 * (∫ y, κ y * (u - v y) ^ 2 ∂μ) := by
  let W := ∫ y, κ y ∂μ
  let coeff := 2 * δ / (δ + 2 * W)
  let reserve := δ / W * u ^ 2
  have hreserve : reserve * (∫ y, κ y ∂μ) = δ * u ^ 2 := by
    calc
      reserve * W = (δ / W * W) * u ^ 2 := by
        dsimp [reserve]
        ring
      _ = δ * u ^ 2 := by rw [div_mul_cancel₀ _ (ne_of_gt hW)]
  have h :=
    integral_mono_ae (hsq.const_mul coeff) ((hκ.const_mul reserve).add (hdiff.const_mul 2))
      (show (fun y => coeff * (κ y * (v y) ^ 2)) ≤ᵐ[μ]
          (fun y => reserve * κ y + 2 * (κ y * (u - v y) ^ 2)) from by
        filter_upwards [hκ_nonneg] with y hy
        calc
          coeff * (κ y * (v y) ^ 2) = κ y * (coeff * (v y) ^ 2) := by ring
          _ ≤ κ y * (reserve + 2 * (u - v y) ^ 2) :=
            mul_le_mul_of_nonneg_left (interface_absorption hδ hW u (v y)) hy
          _ = reserve * κ y + 2 * (κ y * (u - v y) ^ 2) := by ring)
  rw [integral_add' (hκ.const_mul reserve) (hdiff.const_mul 2)] at h
  simpa only [integral_const_mul, hreserve] using h

end GRWTSK.NumberTheory.WeilQuadraticForm.OddOverlapInterface
