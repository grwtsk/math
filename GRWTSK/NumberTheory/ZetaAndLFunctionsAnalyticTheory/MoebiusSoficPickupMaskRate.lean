/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSoficPickupHeatComparison

/-! Exact high-heat rate of the signed mask budget translation. -/
set_option autoImplicit false
noncomputable section
open Filter
open scoped Topology

namespace GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupMaskRate

open MoebiusSoficPickupHeatComparison

/-- The exact ordered pickup shift, normalized by the original Gaussian
weight at index two. The two heats become positive for every fixed shift. -/
theorem tendsto_settledHeatedPickup_fixed_shift_div_prime_two_weight (d : ℝ) :
    Tendsto (fun s : ℝ => (settledHeatedPickup (s + d) - settledHeatedPickup s) /
      Real.exp (-s * Real.log 2 ^ 2)) atTop
      (𝓝 ((8 * (Real.sqrt 2)⁻¹) * (1 - Real.exp (-d * Real.log 2 ^ 2)))) := by
  let q := Real.log 2 ^ 2
  let c := 8 * (Real.sqrt 2)⁻¹
  let a := Real.exp (-d * q)
  let f (s : ℝ) := settledHeatedPickup s / Real.exp (-s * q)
  have hf : Tendsto f atTop (𝓝 (-c)) := tendsto_settledHeatedPickup_div_prime_two_weight
  have hshift : Tendsto (fun s : ℝ => s + d) atTop atTop :=
    tendsto_atTop_atTop.mpr fun b => ⟨b - d, fun s hs => by linarith⟩
  have h := ((hf.comp hshift).const_mul a).sub hf
  rw [show a * (-c) - (-c) = c * (1 - a) by ring] at h
  refine h.congr' (Eventually.of_forall fun s => ?_)
  change a * f (s + d) - f s = _
  have ha : Real.exp (-(s + d) * q) = Real.exp (-s * q) * a := by
    unfold a
    rw [← Real.exp_add]
    congr 1
    ring
  unfold f
  rw [ha]
  have ha₀ : a ≠ 0 := Real.exp_ne_zero _
  have hs₀ : Real.exp (-s * q) ≠ 0 := Real.exp_ne_zero _
  field_simp
  ring

/-- For a fixed positive increase in sufficiently large heats, the exact
signed mask lower-budget adjustment is strictly positive. -/
theorem eventually_settledHeatedPickup_lt_fixed_shift {d : ℝ} (hd : 0 < d) :
    ∀ᶠ s : ℝ in atTop, settledHeatedPickup s < settledHeatedPickup (s + d) := by
  have hq : 0 < Real.log 2 ^ 2 := pow_pos (Real.log_pos (by norm_num)) 2
  have ha : Real.exp (-d * Real.log 2 ^ 2) < 1 :=
    Real.exp_lt_one_iff.mpr (mul_neg_of_neg_of_pos (neg_neg_of_pos hd) hq)
  have hpositive : 0 < (8 * (Real.sqrt 2)⁻¹) * (1 - Real.exp (-d * Real.log 2 ^ 2)) :=
    mul_pos (by positivity) (sub_pos.mpr ha)
  filter_upwards [(tendsto_order.mp
    (tendsto_settledHeatedPickup_fixed_shift_div_prime_two_weight d)).1 0 hpositive] with s hs
  exact sub_pos.mp (by simpa only [zero_mul] using (lt_div_iff₀ (Real.exp_pos _)).mp hs)

end GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupMaskRate
