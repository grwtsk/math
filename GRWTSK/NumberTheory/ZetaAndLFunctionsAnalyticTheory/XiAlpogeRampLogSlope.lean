/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeFiniteRampScore
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-!
# A logarithmic slope bound on the centered von Mangoldt ramp

The active mangoldt slope is bounded by the logarithm of the cutoff times
the corresponding harmonic sum. It follows that gaps of the order of a
square root can be bridged at any real exponent strictly above one half.
-/

namespace GRWTSK.XiAlpogeRampLogSlope

open ArithmeticFunction XiAlpogeOrdinaryRamp XiAlpogeFiniteRampScore Filter
open scoped Topology

/-- The active slopes of the von Mangoldt ramps have a logarithmic-square upper bound. -/
theorem mangoldt_slope_log {x : ℝ} (hx : 1 ≤ x) :
    (∑ k ∈ Finset.range (⌊x⌋₊+1), vonMangoldt k/(k:ℝ)) ≤ Real.log x*(1+Real.log x) := by
  rw [Finset.sum_range_succ', Nat.cast_zero, div_zero, add_zero]
  calc
    _ ≤ ∑ k ∈ Finset.range ⌊x⌋₊, Real.log x * ((k:ℝ)+1)⁻¹ := by
      apply Finset.sum_le_sum
      intro k hk
      have hkn : k+1 ≤ ⌊x⌋₊ := Nat.succ_le_iff.mpr (Finset.mem_range.mp hk)
      have hkx : ((k+1:ℕ):ℝ) ≤ x := (show ((k+1:ℕ):ℝ) ≤ (⌊x⌋₊:ℝ) by exact_mod_cast hkn).trans
        (Nat.floor_le (zero_le_one.trans hx))
      simpa [div_eq_mul_inv] using mul_le_mul_of_nonneg_right
        (vonMangoldt_le_log.trans (Real.log_le_log (by positivity) hkx))
        (show 0 ≤ (((k+1:ℕ):ℝ))⁻¹ by positivity)
    _ = Real.log x * (harmonic ⌊x⌋₊ : ℝ) := by simp [harmonic, Finset.mul_sum]
    _ ≤ _ := mul_le_mul_of_nonneg_left (harmonic_floor_le_one_add_log x hx) (Real.log_nonneg hx)

private theorem truncate {x b : ℝ} (hb : 0 ≤ b) (hx : x ≤ b) :
    mangoldtRamp x = ∑ k ∈ Finset.range (⌊b⌋₊+1),
      vonMangoldt k * max (x/(k:ℝ)-1) 0 := by
  unfold mangoldtRamp
  apply tsum_eq_sum
  intro k hk
  have hkb : ⌊b⌋₊ < k := by simpa using hk
  have hbk : b < (k:ℝ) := (Nat.floor_lt hb).mp hkb
  have hkp : 0 < (k:ℝ) := hb.trans_lt hbk
  simp [max_eq_right (sub_nonpos.mpr ((div_le_one hkp).mpr (hx.trans hbk.le)))]

/-- Variation of the uncentered von Mangoldt ramp between ordered arguments. -/
theorem mangoldtRamp_sub_log {a b : ℝ} (ha : 1 ≤ a) (hab : a ≤ b) :
    |mangoldtRamp b - mangoldtRamp a| ≤ (b-a)*(Real.log b*(1+Real.log b)) := by
  have hb := zero_le_one.trans (ha.trans hab)
  rw [truncate hb le_rfl, truncate hb hab, ← Finset.sum_sub_distrib]
  calc
    _ ≤ _ := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ k ∈ Finset.range (⌊b⌋₊+1), (b-a)*(vonMangoldt k/k) := by
      apply Finset.sum_le_sum
      intro k _
      rw [← mul_sub, abs_mul, abs_of_nonneg vonMangoldt_nonneg]
      have hm := abs_max_sub_max_le_abs (b/(k:ℝ)-1) (a/k-1) 0
      rw [sub_sub_sub_cancel_right, ← sub_div, abs_of_nonneg (div_nonneg (sub_nonneg.mpr hab) (by positivity))] at hm
      calc _ ≤ vonMangoldt k*((b-a)/k) := mul_le_mul_of_nonneg_left hm vonMangoldt_nonneg
           _ = _ := by ring
    _ = _ := (Finset.mul_sum _ _ _).symm
    _ ≤ _ := mul_le_mul_of_nonneg_left (mangoldt_slope_log (ha.trans hab)) (sub_nonneg.mpr hab)

/-- Bound valid throughout any interval above one for the actual Euler-constant-centered ramp. -/
theorem centeredRamp_sub_log_le {a b : ℝ} (ha : 1 ≤ a) (hab : a ≤ b) :
    |centeredRamp b - centeredRamp a| ≤ (b-a)*((Real.log b+2)^2+3) := by
  have ha0 : 0 < a := by linarith
  have hb0 := ha0.trans_le hab
  have hd := sub_nonneg.mpr hab
  have hlog := Real.log_le_log ha0 hab
  have hlogb := Real.log_nonneg (ha.trans hab)
  have hγ := Real.one_half_lt_eulerMascheroniConstant
  have hγ' := Real.eulerMascheroniConstant_lt_two_thirds
  have hdiff : a*(Real.log b - Real.log a) ≤ b-a := by
    rw [← Real.log_div hb0.ne' ha0.ne']
    calc _ ≤ a*(b/a-1) := mul_le_mul_of_nonneg_left
              (Real.log_le_sub_one_of_pos (div_pos hb0 ha0)) ha0.le
         _ = _ := by field_simp
  have hmin : 0 ≤ a*(Real.log b - Real.log a) := mul_nonneg ha0.le (sub_nonneg.mpr hlog)
  have hxl : b*Real.log b - a*Real.log a = (b-a)*Real.log b + a*(Real.log b-Real.log a) := by ring
  have hcent : |b*(Real.log b-1-Real.eulerMascheroniConstant) -
      a*(Real.log a-1-Real.eulerMascheroniConstant)| ≤ (b-a)*(Real.log b+3) := by
    apply abs_le.mpr
    constructor <;> nlinarith only [hxl, hdiff, hmin, mul_nonneg hd hlogb,
      mul_nonneg hd (show 0 ≤ 1+Real.eulerMascheroniConstant by linarith),
      mul_nonneg hd (show 0 ≤ 2-(1+Real.eulerMascheroniConstant) by linarith), hd]
  have hcost : Real.log b*(1+Real.log b)+(Real.log b+3) ≤ (Real.log b+2)^2+3 := by
    nlinarith
  calc
    _ = |(mangoldtRamp b-mangoldtRamp a) - (b*(Real.log b-1-Real.eulerMascheroniConstant)-
           a*(Real.log a-1-Real.eulerMascheroniConstant))| := by unfold centeredRamp; congr 1; ring
    _ ≤ _ := abs_sub _ _
    _ ≤ (b-a)*(Real.log b*(1+Real.log b)) + (b-a)*(Real.log b+3) := add_le_add (mangoldtRamp_sub_log ha hab) hcent
    _ ≤ _ := by rw [← mul_add]; exact mul_le_mul_of_nonneg_left hcost hd

/-- Any fixed multiple of the upper square root is an admissible separation
for the centered ramp at every exponent above one half. -/
theorem centeredRamp_sqrt_gap {s : ℝ} (hs : 1/2 < s) (C : ℝ) :
    ∃ T : ℝ, ∀ {a b : ℝ}, T ≤ b → 1 ≤ a → a ≤ b → b-a ≤ C*Real.sqrt b →
      |centeredRamp b - centeredRamp a| ≤ b^s := by
  let K := |C|+1
  have hK : 0 < K := by dsimp [K]; positivity
  let t : ℝ := s - 1/2
  have ht : 0 < t := sub_pos.mpr hs
  have had := (isLittleO_log_rpow_rpow_atTop 2 ht).bound
    (show 0 < (12*K)⁻¹ by positivity)
  have hh : ∀ᶠ b : ℝ in atTop, 12*K*(Real.log b)^2 ≤ b^t := by
    filter_upwards [had, eventually_ge_atTop (1:ℝ)] with b h hb
    change ‖Real.log b ^ (2:ℝ)‖ ≤ (12*K)⁻¹ * ‖b^t‖ at h
    rw [Real.rpow_two, Real.norm_of_nonneg (sq_nonneg _), Real.norm_of_nonneg
      (Real.rpow_nonneg (zero_le_one.trans hb) _)] at h
    calc
      _ ≤ (12*K)*((12*K)⁻¹*(b^t)) := mul_le_mul_of_nonneg_left h (by positivity)
      _ = _ := by field_simp
  obtain ⟨T,hT⟩ := eventually_atTop.mp
      (hh.and (Real.tendsto_log_atTop.eventually_ge_atTop 1))
  refine ⟨T, ?_⟩
  intro a b hb ha hab hgap
  obtain ⟨hpow,hlog⟩ := hT b hb
  have hbn : 0 < b := by linarith
  have hC : C ≤ K := by dsimp [K]; linarith [le_abs_self C]
  have hK2 : (Real.log b+2)^2+3 ≤ 12*(Real.log b)^2 := by
    nlinarith [sq_nonneg (Real.log b-1)]
  calc
    _ ≤ (b-a)*((Real.log b+2)^2+3) := centeredRamp_sub_log_le ha hab
    _ ≤ (K*Real.sqrt b)*(12*(Real.log b)^2) := mul_le_mul
      (hgap.trans (mul_le_mul_of_nonneg_right hC (Real.sqrt_nonneg _))) hK2 (by positivity) (by positivity)
    _ = Real.sqrt b * (12*K*(Real.log b)^2) := by ring
    _ ≤ Real.sqrt b * b^t := mul_le_mul_of_nonneg_left hpow (Real.sqrt_nonneg _)
    _ = b^s := by rw [Real.sqrt_eq_rpow, ← Real.rpow_add hbn]; congr 1; unfold t; ring

/-- The gap between successive perfect squares fits the fixed constant three. -/
theorem centeredRamp_square_error {s : ℝ} (hs : 1/2 < s) :
    ∃ T : ℝ, ∀ {a b : ℝ}, T ≤ b → 1 ≤ a → a ≤ b → b-a ≤ 3*Real.sqrt b →
      |centeredRamp b - centeredRamp a| ≤ b^s :=
  centeredRamp_sqrt_gap hs 3

end GRWTSK.XiAlpogeRampLogSlope
