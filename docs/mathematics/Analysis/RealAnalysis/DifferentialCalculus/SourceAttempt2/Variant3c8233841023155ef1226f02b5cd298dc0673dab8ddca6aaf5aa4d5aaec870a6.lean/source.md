# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceAttempt2.Variant3c8233841023155ef1226f02b5cd298dc0673dab8ddca6aaf5aa4d5aaec870a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3eced7a720b4f3c9002e23727a4f868220553e12` · SHA-256 `3c8233841023155ef1226f02b5cd298dc0673dab8ddca6aaf5aa4d5aaec870a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CompensatedGammaIntegral
import Mathlib.Analysis.Calculus.SmoothSeries
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

open Filter Set MeasureTheory
open scoped Topology

namespace ContinuousResearch.ActualGammaSecond

private abbrev P := ContinuousResearch.CompensatedGammaProfile.actualProfile
private abbrev a := ContinuousResearch.CompensatedGammaIntegral.physicalRate

def firstTerm (x : ℝ) (n : ℕ) : ℝ := x / (a n * (x + a n))

def secondTerm (x : ℝ) (n : ℕ) : ℝ := 1 / (x + a n) ^ 2

def firstSeries (x : ℝ) : ℝ := ∑' n : ℕ, firstTerm x n

def secondSeries (x : ℝ) : ℝ := ∑' n : ℕ, secondTerm x n

private def weight (n : ℕ) : ℝ := ((n : ℝ) + 1) ^ (-2 : ℝ)

private theorem weight_eq (n : ℕ) : weight n = 1 / ((n : ℝ) + 1) ^ 2 := by
  rw [weight, show (-2 : ℝ) = -(2 : ℕ) by norm_num, Real.rpow_neg (by positivity),
    Real.rpow_natCast]
  simp only [one_div]

private theorem weight_summable : Summable weight := by
  change Summable (fun n : ℕ ↦ ((n : ℝ) + 1) ^ (-2 : ℝ))
  simpa only [Nat.cast_zero, add_zero] using
    ContinuousResearch.CompensatedGammaProfile.inverse_square_tail_summable 0

theorem pairedTerm_hasDerivAt {x : ℝ} (hx : -2 < x) (n : ℕ) :
    HasDerivAt (fun y ↦ ContinuousResearch.CompensatedGammaProfile.term y n) (firstTerm x n) x := by
  have ha := ContinuousResearch.CompensatedGammaIntegral.physicalRate_pos n
  have hax := ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos hx n
  have hlog := ContinuousResearch.CompensatedGammaProfile.log_argument_pos hx n
  have h := ((hasDerivAt_id x).div_const (a n)).sub
    (((hasDerivAt_id x).div_const (a n)).const_add 1 |>.log hlog.ne')
  change HasDerivAt (fun y ↦ ContinuousResearch.CompensatedGammaProfile.term y n)
    (1 / a n - (1 / a n) / (1 + x / a n)) x at h
  apply h.congr_deriv
  dsimp [firstTerm]
  field_simp [ha.ne', hax.ne', hlog.ne']
  ring

theorem firstTerm_hasDerivAt {x : ℝ} (hx : -2 < x) (n : ℕ) :
    HasDerivAt (fun y ↦ firstTerm y n) (secondTerm x n) x := by
  have ha := ContinuousResearch.CompensatedGammaIntegral.physicalRate_pos n
  have hax := ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos hx n
  have hax' : x + a n ≠ 0 := by simpa only [add_comm] using hax.ne'
  have h := (hasDerivAt_const x (1 / a n)).sub
    (((hasDerivAt_id x).add_const (a n)).inv hax')
  simp only [id_eq, zero_sub, neg_neg] at h
  change HasDerivAt (fun y ↦ 1 / a n - (y + a n)⁻¹) (secondTerm x n) x at h
  apply h.congr_of_eventuallyEq
  · filter_upwards [eventually_gt_nhds hx] with y hy
    dsimp [firstTerm]
    have hay := ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos hy n
    field_simp [ha.ne', hay.ne']
    ring

private def lowerCoefficient (l : ℝ) : ℝ := min 2 (l + 2)

private theorem lowerCoefficient_pos {l : ℝ} (hl : -2 < l) : 0 < lowerCoefficient l := by
  exact lt_min (by norm_num) (by linarith)

private theorem rate_lower {l y : ℝ} (_hl : -2 < l) (hy : l < y) (n : ℕ) :
    lowerCoefficient l * ((n : ℝ) + 1) ≤ y + a n := by
  have h2 : lowerCoefficient l ≤ 2 := min_le_left _ _
  have hl2 : lowerCoefficient l ≤ l + 2 := min_le_right _ _
  have hn : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
  have hm := mul_nonneg (sub_nonneg.mpr h2) hn
  dsimp [a, ContinuousResearch.CompensatedGammaIntegral.physicalRate]
  nlinarith

private theorem firstTerm_bound {l u y : ℝ} (hl : -2 < l) (hy : y ∈ Ioo l u) (n : ℕ) :
    ‖firstTerm y n‖ ≤ max |l| |u| / (2 * lowerCoefficient l) * weight n := by
  have hc := lowerCoefficient_pos hl
  have ha := ContinuousResearch.CompensatedGammaIntegral.physicalRate_pos n
  have hay : 0 < y + a n := by
    simpa only [add_comm] using ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos
      (lt_trans hl hy.1) n
  have hb : |y| ≤ max |l| |u| := by
    apply abs_le.mpr
    constructor
    · have := neg_abs_le l
      have := le_max_left |l| |u|
      linarith [hy.1]
    · have := le_abs_self u
      have := le_max_right |l| |u|
      linarith [hy.2]
  have hlow := rate_lower hl hy.1 n
  have hp : 0 < (n : ℝ) + 1 := by positivity
  have hd : 2 * lowerCoefficient l * ((n : ℝ) + 1) ^ 2 ≤ a n * (y + a n) := by
    have hm := mul_le_mul_of_nonneg_left hlow (le_of_lt ha)
    dsimp [a, ContinuousResearch.CompensatedGammaIntegral.physicalRate] at hm ⊢
    nlinarith
  rw [firstTerm, Real.norm_eq_abs, abs_div, abs_of_pos (mul_pos ha hay)]
  calc
    _ ≤ max |l| |u| / (a n * (y + a n)) := div_le_div_of_nonneg_right hb (by positivity)
    _ ≤ max |l| |u| / (2 * lowerCoefficient l * ((n : ℝ) + 1) ^ 2) :=
      div_le_div_of_nonneg_left (le_trans (abs_nonneg _) (le_max_left _ _)) (by positivity) hd
    _ = _ := by rw [weight_eq]; field_simp; ring

private theorem secondTerm_bound {l y : ℝ} (hl : -2 < l) (hy : l < y) (n : ℕ) :
    ‖secondTerm y n‖ ≤ 1 / (lowerCoefficient l) ^ 2 * weight n := by
  have hc := lowerCoefficient_pos hl
  have hay : 0 < y + a n := by
    simpa only [add_comm] using ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos
      (lt_trans hl hy) n
  have hlow := rate_lower hl hy n
  have hp : 0 < (n : ℝ) + 1 := by positivity
  have hd : (lowerCoefficient l) ^ 2 * ((n : ℝ) + 1) ^ 2 ≤ (y + a n) ^ 2 := by
    have := (sq_le_sq₀ (by positivity : 0 ≤ lowerCoefficient l * ((n : ℝ) + 1)) hay.le).2 hlow
    nlinarith
  rw [secondTerm, Real.norm_of_nonneg (by positivity)]
  calc
    _ ≤ 1 / ((lowerCoefficient l) ^ 2 * ((n : ℝ) + 1) ^ 2) :=
      div_le_div_of_nonneg_left (by norm_num) (by positivity) hd
    _ = _ := by rw [weight_eq]; field_simp

theorem firstTerm_summable {x : ℝ} (hx : -2 < x) : Summable (firstTerm x) := by
  let l := (x - 2) / 2
  let u := x + 1
  have hl : -2 < l := by dsimp [l]; linarith
  have hmem : x ∈ Ioo l u := by dsimp [l, u]; constructor <;> linarith
  exact Summable.of_norm_bounded (weight_summable.mul_left _) (firstTerm_bound hl hmem)

theorem secondTerm_summable {x : ℝ} (hx : -2 < x) : Summable (secondTerm x) := by
  let l := (x - 2) / 2
  have hl : -2 < l := by dsimp [l]; linarith
  have hy : l < x := by dsimp [l]; linarith
  exact Summable.of_norm_bounded (weight_summable.mul_left _) (secondTerm_bound hl hy)

theorem actualProfile_hasDerivAt {x : ℝ} (hx : -2 < x) : HasDerivAt P (firstSeries x) x := by
  let l := (x - 2) / 2
  let u := x + 1
  have hl : -2 < l := by dsimp [l]; linarith
  have hmem : x ∈ Ioo l u := by dsimp [l, u]; constructor <;> linarith
  have h := hasDerivAt_tsum_of_isPreconnected
    (weight_summable.mul_left (max |l| |u| / (2 * lowerCoefficient l))) isOpen_Ioo
    (convex_Ioo l u).isPreconnected
    (fun n y hy ↦ pairedTerm_hasDerivAt (lt_trans hl hy.1) n)
    (fun n y hy ↦ firstTerm_bound hl hy n) hmem
    (ContinuousResearch.CompensatedGammaProfile.term_summable hx) hmem
  apply h.congr_of_eventuallyEq
  · filter_upwards [eventually_gt_nhds hx] with y hy
    exact ContinuousResearch.CompensatedGammaProfile.actualProfile_eq_tsum hy

theorem actualProfile_deriv {x : ℝ} (hx : -2 < x) : deriv P x = firstSeries x :=
  (actualProfile_hasDerivAt hx).deriv

theorem firstSeries_hasDerivAt {x : ℝ} (hx : -2 < x) :
    HasDerivAt firstSeries (secondSeries x) x := by
  let l := (x - 2) / 2
  let u := x + 1
  have hl : -2 < l := by dsimp [l]; linarith
  have hmem : x ∈ Ioo l u := by dsimp [l, u]; constructor <;> linarith
  exact hasDerivAt_tsum_of_isPreconnected
    (weight_summable.mul_left (1 / (lowerCoefficient l) ^ 2)) isOpen_Ioo
    (convex_Ioo l u).isPreconnected
    (fun n y hy ↦ firstTerm_hasDerivAt (lt_trans hl hy.1) n)
    (fun n y hy ↦ secondTerm_bound hl hy.1 n) hmem (firstTerm_summable hx) hmem

theorem actualProfile_second_hasDerivAt {x : ℝ} (hx : -2 < x) :
    HasDerivAt (deriv P) (secondSeries x) x := by
  apply (firstSeries_hasDerivAt hx).congr_of_eventuallyEq
  · filter_upwards [eventually_gt_nhds hx] with y hy
    exact actualProfile_deriv hy

theorem actualProfile_second_deriv {x : ℝ} (hx : -2 < x) :
    deriv (deriv P) x = ∑' n : ℕ, 1 / (x + 2 * ((n : ℝ) + 1)) ^ 2 :=
  (actualProfile_second_hasDerivAt hx).deriv

end ContinuousResearch.ActualGammaSecond

#check ContinuousResearch.ActualGammaSecond.pairedTerm_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.firstTerm_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.firstTerm_summable
#check ContinuousResearch.ActualGammaSecond.secondTerm_summable
#check ContinuousResearch.ActualGammaSecond.actualProfile_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.actualProfile_deriv
#check ContinuousResearch.ActualGammaSecond.firstSeries_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.actualProfile_second_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.actualProfile_second_deriv
#print axioms ContinuousResearch.ActualGammaSecond.pairedTerm_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.firstTerm_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.firstTerm_summable
#print axioms ContinuousResearch.ActualGammaSecond.secondTerm_summable
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_deriv
#print axioms ContinuousResearch.ActualGammaSecond.firstSeries_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_second_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_second_deriv
```
