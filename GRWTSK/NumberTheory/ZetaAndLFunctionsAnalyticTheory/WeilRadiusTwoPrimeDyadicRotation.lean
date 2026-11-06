/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimeSeedTrig

/-!
# Fixed-point error for the short prime rotation

Each fixed-point operation rounds down on the same 50-bit grid. The
stored phase stays in its exact rational cell and retains the alternating
sign. The real comparison charges the rounded pi, the short-angle
product, the quadratic correction and the final rotation. The output
bounds apply to the actual sine and cosine of the prime-power phase.
Checking the stored rows and prime weights remains a finite obligation.
Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPrimeDyadicRotation

open OddOutputTrace RadiusTwoPrimeSeedTrig

private def grid (x : ℚ) : ℚ := (⌊(2 : ℚ)^50 * x⌋ : ℤ) / (2 : ℚ)^50

private noncomputable def ε : ℝ := 1/(2 : ℝ)^50

private theorem grid_bounds (x : ℚ) : (grid x : ℝ) ≤ x ∧
    (x : ℝ) ≤ (grid x : ℝ) + ε := by
  have hL := (Rat.cast_le (K := ℝ)).2 (Int.floor_le ((2 : ℚ)^50*x))
  have hU := (Rat.cast_lt (K := ℝ)).2 (Int.lt_floor_add_one ((2 : ℚ)^50*x))
  push_cast at hL hU
  unfold grid ε
  push_cast
  have hp : (0 : ℝ) < 2^50 := by positivity
  refine ⟨(div_le_iff₀ hp).2 (by simpa only [mul_comm] using hL), ?_⟩
  rw [← add_div]
  exact ((lt_div_iff₀ hp).2 (by simpa only [Int.cast_add, Int.cast_one, mul_comm] using hU)).le

private theorem grid_error (x : ℚ) : |(grid x : ℝ) - (x : ℝ)| ≤ ε := by
  obtain ⟨hl,hu⟩ := grid_bounds x
  exact abs_le.mpr ⟨by linarith, by linarith [show 0 ≤ ε by unfold ε; positivity]⟩

private theorem grid_nonneg {x : ℚ} (hx : 0 ≤ x) : 0 ≤ grid x := by
  unfold grid
  exact div_nonneg (by
    exact_mod_cast Int.floor_nonneg.mpr (show 0 ≤ (2 : ℚ)^50 * x from mul_nonneg (by positivity) hx))
    (by positivity)

/-- The fixed-point center before weighting by the literal prime masses. -/
def dyadicRotationCenter (sinTable cosTable : ℤ → ℚ) (c : ℚ) : ℚ × ℚ :=
  let i := anchor c
  let t := grid (grid 3.14159265358979323846 * remainder c)
  let a := 1-grid (t^2/2)
  let sign := (-1 : ℚ) ^ UnitWindowPrimeTrig.angleTurn c
  (sign * grid (a*sinTable i+t*cosTable i), sign * grid (a*cosTable i-t*sinTable i))

private theorem remainder_range (c : ℚ) : 0 ≤ remainder c ∧ remainder c ≤ 1 := by
  have hL := Int.floor_le (8192 * (c - UnitWindowPrimeTrig.angleTurn c) : ℚ)
  have hU := Int.lt_floor_add_one (8192 * (c - UnitWindowPrimeTrig.angleTurn c) : ℚ)
  change (anchor c : ℚ) ≤ _ at hL
  change _ < (anchor c : ℚ) + 1 at hU
  unfold remainder
  constructor <;> linarith

private theorem remainder_small (c : ℚ) : remainder c ≤ 1/8192 := by
  have hU := Int.lt_floor_add_one (8192 * (c - UnitWindowPrimeTrig.angleTurn c) : ℚ)
  change _ < (anchor c : ℚ) + 1 at hU
  unfold remainder
  linarith

/-- The exact grid operations cost at most twelve units of the final grid. -/
theorem dyadicRotationCenter_error (sinTable cosTable : ℤ → ℚ) (c : ℚ)
    (hs : |(sinTable (anchor c) : ℝ)| ≤ 2) (hc : |(cosTable (anchor c) : ℝ)| ≤ 2) :
    |((dyadicRotationCenter sinTable cosTable c).1 : ℝ) -
        ((rotationCenter sinTable cosTable c).1 : ℝ)| ≤ 12/(2 : ℝ)^50 ∧
      |((dyadicRotationCenter sinTable cosTable c).2 : ℝ) -
        ((rotationCenter sinTable cosTable c).2 : ℝ)| ≤ 12/(2 : ℝ)^50 := by
  let r := remainder c
  let π0 : ℚ := 3.14159265358979323846
  let t := π0 * r
  let tr := grid π0 * r
  let tf := grid tr
  let af := 1-grid (tf^2/2)
  let a := 1-t^2/2
  have hr0 : 0 ≤ r := (remainder_range c).1
  have hr : |(r : ℝ)| ≤ 1 := by
    have hrR : (0 : ℝ) ≤ (r : ℝ) := by exact_mod_cast hr0
    rw [abs_of_nonneg hrR]
    exact_mod_cast (remainder_range c).2
  have htf0 : 0 ≤ tf := grid_nonneg (mul_nonneg (grid_nonneg (by norm_num [π0])) hr0)
  have ht0 : 0 ≤ t := mul_nonneg (by norm_num [π0]) hr0
  have htf : (tf : ℝ) ≤ (t : ℝ) := by
    refine (grid_bounds tr).1.trans ?_
    push_cast [tr,t]
    exact mul_le_mul_of_nonneg_right (grid_bounds π0).1 (by exact_mod_cast hr0)
  have ht : (t : ℝ) ≤ 1 := by
    have h := (Rat.cast_le (K := ℝ)).2 (remainder_small c)
    push_cast at h
    push_cast [t, π0]
    linarith
  have hΔ : |(tf : ℝ) - (t : ℝ)| ≤ 2*ε := by
    refine (abs_sub_le _ (tr : ℝ) _).trans ?_
    have h := grid_error tr
    have h' : |(tr : ℝ) - (t : ℝ)| ≤ ε := by
      push_cast [tr,t]
      rw [← sub_mul, abs_mul]
      exact (mul_le_of_le_one_right (abs_nonneg _) hr).trans (grid_error π0)
    linarith
  have hΔsq : |((tf^2/2 : ℚ) : ℝ) - ((t^2/2 : ℚ) : ℝ)| ≤ 2*ε := by
    have htf0R : (0 : ℝ) ≤ (tf : ℝ) := by exact_mod_cast htf0
    have ht0R : (0 : ℝ) ≤ (t : ℝ) := by exact_mod_cast ht0
    have hsum : |((tf : ℝ)+(t : ℝ))/2| ≤ 1 := by
      rw [abs_of_nonneg (by positivity)]
      linarith
    push_cast
    rw [show (tf : ℝ)^2/2-(t : ℝ)^2/2 =
      ((tf : ℝ)-(t : ℝ))*(((tf : ℝ)+(t : ℝ))/2) by ring, abs_mul]
    exact (mul_le_of_le_one_right (abs_nonneg _) hsum).trans hΔ
  have hA : |(af : ℝ) - (a : ℝ)| ≤ 3*ε := by
    push_cast [af,a]
    rw [show (1 : ℝ) - (grid (tf^2/2) : ℝ) - (1 - (t : ℝ)^2/2) =
        -((grid (tf^2/2) : ℝ) - (t : ℝ)^2/2) by ring, abs_neg]
    have h := (abs_sub_le (grid (tf^2/2) : ℝ) ((tf^2/2 : ℚ) : ℝ) ((t^2/2 : ℚ) : ℝ)).trans
      (add_le_add (grid_error (tf^2/2)) hΔsq)
    push_cast at h
    linarith
  have compare (s v : ℚ) (hs' : |(s : ℝ)| ≤ 2) (hv : |(v : ℝ)| ≤ 2) :
      |(grid (af*s+tf*v) : ℝ) - ((a*s+t*v : ℚ) : ℝ)| ≤ 12*ε := by
    refine (abs_sub_le _ ((af*s+tf*v : ℚ) : ℝ) _).trans ?_
    have h := grid_error (af*s+tf*v)
    have ha : |((af : ℝ)-(a : ℝ))*(s : ℝ)| ≤ 6*ε := by
      rw [abs_mul]
      exact (mul_le_mul hA hs' (abs_nonneg _) (by unfold ε; positivity)).trans_eq (by ring)
    have hv' : |((tf : ℝ)-(t : ℝ))*(v : ℝ)| ≤ 4*ε := by
      rw [abs_mul]
      exact (mul_le_mul hΔ hv (abs_nonneg _) (by unfold ε; positivity)).trans_eq (by ring)
    have hpoly : |((af*s+tf*v : ℚ) : ℝ) - ((a*s+t*v : ℚ) : ℝ)| ≤ 10*ε := by
      push_cast
      rw [show (af : ℝ)*(s : ℝ)+(tf : ℝ)*(v : ℝ)-((a : ℝ)*(s : ℝ)+(t : ℝ)*(v : ℝ)) =
        ((af : ℝ)-(a : ℝ))*(s : ℝ)+((tf : ℝ)-(t : ℝ))*(v : ℝ) by ring]
      exact (abs_add_le _ _).trans ((add_le_add ha hv').trans_eq (by ring))
    linarith [show 0 ≤ ε by unfold ε; positivity]
  let i := anchor c
  let s := sinTable i
  let v := cosTable i
  let sign := (-1 : ℚ)^UnitWindowPrimeTrig.angleTurn c
  constructor
  · change |((sign * grid (af*s+tf*v) : ℚ) : ℝ) -
      ((sign * (a*s+t*v) : ℚ) : ℝ)| ≤ _
    simp only [Rat.cast_mul]
    rw [← mul_sub, abs_mul]
    have hsign : |(sign : ℝ)| = 1 := by push_cast [sign]; exact abs_neg_one_zpow _
    rw [hsign, one_mul]
    simpa only [ε, div_eq_mul_inv, one_mul] using compare s v hs hc
  · change |((sign * grid (af*v-tf*s) : ℚ) : ℝ) -
      ((sign * (a*v-t*s) : ℚ) : ℝ)| ≤ _
    simp only [Rat.cast_mul]
    rw [← mul_sub, abs_mul]
    have hsign : |(sign : ℝ)| = 1 := by push_cast [sign]; exact abs_neg_one_zpow _
    rw [hsign, one_mul]
    simpa only [mul_neg, ← sub_eq_add_neg, ε, div_eq_mul_inv, one_mul] using
      compare v (-s) hc (by simpa only [Rat.cast_neg, abs_neg] using hs)

private theorem abs_table_le {t x : ℝ} (ht : |x-t| ≤ 1/10^12) (hx : |x| ≤ 1) :
    |t| ≤ 2 := by
  have h := abs_sub_le t x 0
  rw [sub_zero, sub_zero, abs_sub_comm t x] at h
  linarith

/-- The actual literal prime angle is enclosed after fixed-point evaluation. -/
theorem primeDyadicRotation_sound (sinTable cosTable : ℤ → ℚ)
    (hTable : TableSound sinTable cosTable)
    {q n : ℕ} (hq₀ : 0 < q) (hq : q ≤ 54) (hn : n ≤ 1200000) :
    let rotated := dyadicRotationCenter sinTable cosTable (primePhaseCenter q n)
    |Real.sin (frequency 2 n * Real.log q) - (rotated.1 : ℝ)| ≤ 2 / 10^9 ∧
    |Real.cos (frequency 2 n * Real.log q) - (rotated.2 : ℝ)| ≤ 2 / 10^9 := by
  let c := primePhaseCenter q n
  obtain ⟨hl, hu⟩ := anchor_bounds c
  obtain ⟨hs,hc⟩ := hTable (anchor c) hl hu
  obtain ⟨hsR,hcR⟩ := primeRotation_sound sinTable cosTable hTable hq₀ hq hn
  obtain ⟨hsG,hcG⟩ := dyadicRotationCenter_error sinTable cosTable c
    (abs_table_le hs (Real.abs_sin_le_one _)) (abs_table_le hc (Real.abs_cos_le_one _))
  rw [abs_sub_comm] at hsG hcG
  constructor
  · exact (abs_sub_le _ ((rotationCenter sinTable cosTable c).1 : ℝ) _).trans
      ((add_le_add hsR hsG).trans (by norm_num))
  · exact (abs_sub_le _ ((rotationCenter sinTable cosTable c).2 : ℝ) _).trans
      ((add_le_add hcR hcG).trans (by norm_num))

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPrimeDyadicRotation
