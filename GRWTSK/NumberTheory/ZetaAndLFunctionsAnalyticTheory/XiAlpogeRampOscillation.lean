/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeFiniteRampScore

/-!
# Local oscillation of the actual centered von Mangoldt ramp

The finite sum of the active ramp slopes is bounded by summing a
telescoping square-root majorant for the von Mangoldt weights. This
controls comparisons between an arbitrary large real argument and a
neighboring integer, with the original Euler-constant centering.
-/

namespace GRWTSK.XiAlpogeRampOscillation
open ArithmeticFunction XiAlpogeOrdinaryRamp XiAlpogeFiniteRampScore

private theorem log_le_two_sqrt {x : ℝ} (hx : 0 < x) : Real.log x ≤ 2*Real.sqrt x := by
  have h := Real.log_le_sub_one_of_pos (Real.sqrt_pos.2 hx)
  rw [Real.log_sqrt hx.le] at h
  linarith

private theorem slope_step (k : ℕ) :
    vonMangoldt (k+1) / ((k:ℝ)+1) ≤ 4*(Real.sqrt ((k:ℝ)+1)-Real.sqrt k) := by
  let s := Real.sqrt ((k:ℝ)+1)
  let t := Real.sqrt (k:ℝ)
  have hp : 0 < (k:ℝ)+1 := by positivity
  have hs : s^2 = (k:ℝ)+1 := Real.sq_sqrt hp.le
  have ht : t^2 = (k:ℝ) := Real.sq_sqrt (by positivity)
  have hst : 2 ≤ 4*(s-t)*s := by nlinarith [sq_nonneg (s-t)]
  have hlog : vonMangoldt (k+1) ≤ 2*s := by
    simpa [s] using (vonMangoldt_le_log (n := k+1)).trans
      (log_le_two_sqrt (show 0 < ((k+1:ℕ):ℝ) by positivity))
  apply (div_le_iff₀ hp).mpr
  calc
    _ ≤ 2*s := hlog
    _ ≤ (4*(s-t)*s)*s := mul_le_mul_of_nonneg_right hst (Real.sqrt_nonneg _)
    _ = _ := by change _ = 4*(s-t)*((k:ℝ)+1); rw [← hs]; ring

/-- The sum of all slopes of ramps active at an integer cutoff. -/
theorem mangoldt_slope_le (K : ℕ) :
    (∑ k ∈ Finset.range (K+1), vonMangoldt k / (k:ℝ)) ≤ 4*Real.sqrt K := by
  induction K with
  | zero => simp
  | succ k ih =>
    rw [Finset.sum_range_succ]
    push_cast
    linarith [slope_step k]

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
theorem mangoldtRamp_sub_le {a b : ℝ} (ha : 0 ≤ a) (hab : a ≤ b) :
    |mangoldtRamp b - mangoldtRamp a| ≤ (b-a)*(4*Real.sqrt b) := by
  have hb := ha.trans hab
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
    _ ≤ _ := mul_le_mul_of_nonneg_left ((mangoldt_slope_le _).trans
      (by gcongr; exact Nat.floor_le hb)) (sub_nonneg.mpr hab)

/-- For ordered arguments at least one, the centered ramp has slope on
the whole interval bounded in magnitude by nine times the upper square root. -/
theorem centeredRamp_sub_le {a b : ℝ} (ha : 1 ≤ a) (hab : a ≤ b) :
    |centeredRamp b - centeredRamp a| ≤ (b-a)*(9*Real.sqrt b) := by
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
  have hroot : 1 ≤ Real.sqrt b := by simpa using Real.sqrt_le_sqrt (ha.trans hab)
  have hcost : 4*Real.sqrt b+(Real.log b+3) ≤ 9*Real.sqrt b := by
    linarith [log_le_two_sqrt hb0]
  calc
    _ = |(mangoldtRamp b-mangoldtRamp a) - (b*(Real.log b-1-Real.eulerMascheroniConstant)-
           a*(Real.log a-1-Real.eulerMascheroniConstant))| := by unfold centeredRamp; congr 1; ring
    _ ≤ _ := abs_sub _ _
    _ ≤ (b-a)*(4*Real.sqrt b) + (b-a)*(Real.log b+3) := add_le_add (mangoldtRamp_sub_le ha0.le hab) hcent
    _ ≤ _ := by rw [← mul_add]; exact mul_le_mul_of_nonneg_left hcost hd

/-- Unit perturbations at scale x≥2 cost at most 18√x for the true ramp. -/
theorem centeredRamp_unit {x y : ℝ} (hx : 2 ≤ x) (hxy : |x-y| ≤ 1) :
    |centeredRamp x - centeredRamp y| ≤ 18*Real.sqrt x := by
  have hh := abs_le.mp hxy
  have hy : 1 ≤ y := by linarith
  have hx0 : 0 ≤ x := by linarith
  rcases le_total x y with h | h
  · have hrt : Real.sqrt y ≤ 2*Real.sqrt x := by
      nlinarith [Real.sq_sqrt hx0, Real.sq_sqrt (show 0 ≤ y by linarith), Real.sqrt_nonneg x,
        Real.sqrt_nonneg y, sq_nonneg (Real.sqrt y-2*Real.sqrt x)]
    rw [abs_sub_comm]
    calc
      _ ≤ _ := centeredRamp_sub_le (by linarith : 1 ≤ x) h
      _ ≤ 1*(9*Real.sqrt y) := mul_le_mul_of_nonneg_right (by linarith) (by positivity)
      _ ≤ _ := by linarith
  · calc
      _ ≤ _ := centeredRamp_sub_le hy h
      _ ≤ 1*(9*Real.sqrt x) := mul_le_mul_of_nonneg_right hh.2 (by positivity)
      _ ≤ _ := by linarith [Real.sqrt_nonneg x]

end GRWTSK.XiAlpogeRampOscillation
