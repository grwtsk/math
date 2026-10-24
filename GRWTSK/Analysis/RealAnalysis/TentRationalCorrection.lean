/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.RealAnalysis.TentWeight
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Positivity
import Mathlib.Analysis.SpecificLimits.Basic

set_option autoImplicit false

/-!
# Explicit signed rational correction for a normalized tent

The correction is minus the integral of the actual tent against 1/(t(t^2-1)).
Its sign, endpoint bounds, and geometric-prefix remainder are derived, not
stored in a record. All analytic statements require h>0 and x-h>1.
This file does not prove a Riemann explicit formula or identify a zeta divisor.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.RealAnalysis.TentRationalCorrection

open MeasureTheory Set Filter
open scoped Topology
open scoped Interval BigOperators
open GRWTSK.Analysis.RealAnalysis.TentWeight

noncomputable section

theorem continuous_tent (x h : ℝ) : Continuous (tent x h) := by
  unfold tent
  fun_prop

/-- Integrate the two affine pieces; the area is the radius, not the diameter. -/
theorem integral_tent (x h : ℝ) (hh : 0 < h) :
    (∫ t in (x - h)..(x + h), tent x h t) = h := by
  have hl := (continuous_tent x h).intervalIntegrable (μ := MeasureTheory.volume) (x - h) x
  have hr := (continuous_tent x h).intervalIntegrable (μ := MeasureTheory.volume) x (x + h)
  have dl : ∀ t ∈ uIcc (x - h) x,
      HasDerivAt (fun u : ℝ => (u - (x - h)) ^ 2 / (2 * h)) (tent x h t) t := by
    intro t ht
    have ht' : t ∈ Icc (x - h) x := (uIcc_of_le (show x - h ≤ x by linarith)) ▸ ht
    rw [tent_on_left x h t hh ht'.1 ht'.2]
    convert (((hasDerivAt_id t).sub_const (x - h)).pow 2).div_const (2 * h) using 1 <;>
      first | rfl | (field_simp [ne_of_gt hh]; simp only [id_eq]; ring)
  have dr : ∀ t ∈ uIcc x (x + h),
      HasDerivAt (fun u : ℝ => -((x + h - u) ^ 2 / (2 * h))) (tent x h t) t := by
    intro t ht
    have ht' : t ∈ Icc x (x + h) := (uIcc_of_le (show x ≤ x + h by linarith)) ▸ ht
    rw [tent_on_right x h t hh ht'.1 ht'.2]
    convert ((((hasDerivAt_id t).const_sub (x + h)).pow 2).div_const (2 * h)).neg
      using 1 <;> first | rfl | (field_simp [ne_of_gt hh]; simp only [id_eq]; ring)
  have il := intervalIntegral.integral_eq_sub_of_hasDerivAt dl hl
  have ir := intervalIntegral.integral_eq_sub_of_hasDerivAt dr hr
  rw [← intervalIntegral.integral_add_adjacent_intervals hl hr, il, ir]
  field_simp [ne_of_gt hh]; ring

/-- Bounds on a continuous density are averaged against the same normalized tent. -/
theorem weighted_integral_bounds (x h : ℝ) (hh : 0 < h)
    (f : ℝ → ℝ) (hf : ContinuousOn f (Icc (x - h) (x + h)))
    (L U : ℝ) (hL : ∀ t ∈ Icc (x - h) (x + h), L ≤ f t)
    (hU : ∀ t ∈ Icc (x - h) (x + h), f t ≤ U) :
    L * h ≤ (∫ t in (x - h)..(x + h), tent x h t * f t) ∧
      (∫ t in (x - h)..(x + h), tent x h t * f t) ≤ U * h := by
  have hab : x - h ≤ x + h := by linarith
  have hw := (continuous_tent x h).intervalIntegrable (μ := MeasureTheory.volume) (x - h) (x + h)
  have hwf := ContinuousOn.intervalIntegrable_of_Icc (μ := MeasureTheory.volume) hab
    ((continuous_tent x h).continuousOn.mul hf)
  constructor
  · calc
      L * h = ∫ t in (x - h)..(x + h), tent x h t * L := by
        rw [intervalIntegral.integral_mul_const, integral_tent x h hh]
        ring
      _ ≤ _ := intervalIntegral.integral_mono_on hab (hw.mul_const L) hwf
        (fun t ht => mul_le_mul_of_nonneg_left (hL t ht) (tent_nonneg x h t))
  · calc
      _ ≤ ∫ t in (x - h)..(x + h), tent x h t * U :=
        intervalIntegral.integral_mono_on hab hwf (hw.mul_const U)
          (fun t ht => mul_le_mul_of_nonneg_left (hU t ht) (tent_nonneg x h t))
      _ = U * h := by rw [intervalIntegral.integral_mul_const, integral_tent x h hh]; ring

/-- Rational density associated with the negative even parameters; domain t>1. -/
def rationalDensity (t : ℝ) : ℝ := 1 / (t * (t ^ 2 - 1))

theorem rationalDensity_pos {t : ℝ} (ht : 1 < t) : 0 < rationalDensity t := by
  unfold rationalDensity
  exact div_pos zero_lt_one (mul_pos (by linarith) (by nlinarith))

theorem rationalDensity_antitone {u v : ℝ} (hu : 1 < u) (huv : u ≤ v) :
    rationalDensity v ≤ rationalDensity u := by
  have hv : 1 < v := hu.trans_le huv
  have hdu : 0 < u * (u ^ 2 - 1) := mul_pos (by linarith) (by nlinarith)
  have hdv : 0 < v * (v ^ 2 - 1) := mul_pos (by linarith) (by nlinarith)
  have hsq : u ^ 2 ≤ v ^ 2 :=
    (sq_le_sq₀ (by linarith : 0 ≤ u) (by linarith : 0 ≤ v)).2 huv
  have hden : u * (u ^ 2 - 1) ≤ v * (v ^ 2 - 1) :=
    mul_le_mul huv (sub_le_sub_right hsq 1) (by nlinarith) (by linarith)
  exact (div_le_div_iff₀ hdv hdu).2 (by simpa using hden)

theorem rationalDensity_continuousOn {a b : ℝ} (ha : 1 < a) :
    ContinuousOn rationalDensity (Icc a b) := by
  intro t ht
  have ht1 : 1 < t := ha.trans_le ht.1
  have ht0 : t ≠ 0 := ne_of_gt (by linarith)
  have hs0 : t ^ 2 - 1 ≠ 0 := ne_of_gt (by nlinarith)
  have hd0 : t * (t ^ 2 - 1) ≠ 0 := mul_ne_zero ht0 hs0
  have hc : ContinuousAt rationalDensity t := by
    unfold rationalDensity
    fun_prop (disch := assumption)
  exact hc.continuousWithinAt

/-- Independently defined signed integral, not an arithmetic discrepancy. -/
def rationalTentCorrection (x h : ℝ) : ℝ :=
  -(∫ t in (x - h)..(x + h), tent x h t * rationalDensity t)

/-- Both endpoint bounds retain the negative sign. -/
theorem rationalTentCorrection_bounds (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    -(h / ((x - h) * ((x - h) ^ 2 - 1))) ≤ rationalTentCorrection x h ∧
      rationalTentCorrection x h ≤ -(h / ((x + h) * ((x + h) ^ 2 - 1))) := by
  have hb := weighted_integral_bounds x h hh rationalDensity
    (rationalDensity_continuousOn ha) (rationalDensity (x + h)) (rationalDensity (x - h))
    (fun t ht => rationalDensity_antitone (ha.trans_le ht.1) ht.2)
    (fun t ht => rationalDensity_antitone ha ht.1)
  unfold rationalTentCorrection rationalDensity at *
  constructor <;> simp only [div_eq_mul_inv] at * <;> nlinarith [hb.1, hb.2]

/-- Omitting this correction is never an exact zero-correction specialization. -/
theorem rationalTentCorrection_neg (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    rationalTentCorrection x h < 0 := by
  have hu := (rationalTentCorrection_bounds x h hh ha).2
  have hb : 1 < x + h := by linarith
  have hp : 0 < h / ((x + h) * ((x + h) ^ 2 - 1)) :=
    div_pos hh (mul_pos (by linarith) (by nlinarith))
  linarith

/-- Exact finite geometric density; its kth term is t^(-2k-3). -/
def densityPrefix (N : ℕ) (t : ℝ) : ℝ :=
  ∑ k ∈ Finset.range N, (1 / t ^ 3) * (1 / t ^ 2) ^ k

theorem densityPrefix_succ (N : ℕ) (t : ℝ) :
    densityPrefix (N + 1) t = densityPrefix N t + (1 / t ^ 3) * (1 / t ^ 2) ^ N := by
  simp only [densityPrefix, Finset.sum_range_succ]

/-- The geometric identity is finite and includes its complete remainder. -/
theorem densityPrefix_eq (N : ℕ) (t : ℝ) (ht : 1 < t) :
    densityPrefix N t = rationalDensity t * (1 - (1 / t ^ 2) ^ N) := by
  have ht0 : t ≠ 0 := ne_of_gt (by linarith)
  have hs0 : t ^ 2 - 1 ≠ 0 := ne_of_gt (by nlinarith)
  have hstep : rationalDensity t * (1 - 1 / t ^ 2) = 1 / t ^ 3 := by
    unfold rationalDensity
    field_simp [ht0, hs0]
  induction N with
  | zero => simp [densityPrefix]
  | succ N ih =>
      rw [densityPrefix_succ, ih, ← hstep, pow_succ]
      ring

/-- A uniform pointwise remainder over the full compact interval. -/
theorem densityPrefix_remainder_bounds (N : ℕ) {a b t : ℝ}
    (ha : 1 < a) (ht : t ∈ Icc a b) :
    0 ≤ rationalDensity t - densityPrefix N t ∧
      rationalDensity t - densityPrefix N t ≤
        rationalDensity a * (1 / a ^ 2) ^ N := by
  have ht1 : 1 < t := ha.trans_le ht.1
  have hid : rationalDensity t - densityPrefix N t =
      rationalDensity t * (1 / t ^ 2) ^ N := by
    rw [densityPrefix_eq N t ht1]
    ring
  rw [hid]
  have hr : 1 / t ^ 2 ≤ 1 / a ^ 2 := by
    apply (div_le_div_iff₀ (by nlinarith : 0 < t ^ 2) (by nlinarith : 0 < a ^ 2)).2
    have hsq : a ^ 2 ≤ t ^ 2 :=
      (sq_le_sq₀ (by linarith : 0 ≤ a) (by linarith : 0 ≤ t)).2 ht.1
    simpa only [one_mul] using hsq
  exact ⟨mul_nonneg (rationalDensity_pos ht1).le (pow_nonneg (by positivity) _),
    mul_le_mul (rationalDensity_antitone ha ht.1)
      (pow_le_pow_left₀ (by positivity) hr N) (pow_nonneg (by positivity) _)
      (rationalDensity_pos ha).le⟩

theorem densityPrefix_continuousOn (N : ℕ) {a b : ℝ} (ha : 1 < a) :
    ContinuousOn (densityPrefix N) (Icc a b) := by
  intro t ht
  have ht0 : t ≠ 0 := ne_of_gt ((lt_trans zero_lt_one ha).trans_le ht.1)
  have hc : ContinuousAt (densityPrefix N) t := by
    induction N with
    | zero =>
      have he : densityPrefix 0 = (fun _ : ℝ => 0) := by funext u; simp [densityPrefix]
      rw [he]
      exact continuousAt_const
    | succ N ih =>
      have he : densityPrefix (N + 1) = (fun u : ℝ => densityPrefix N u + (1 / u ^ 3) * (1 / u ^ 2) ^ N) := by
        funext u; exact densityPrefix_succ N u
      rw [he]
      exact ih.add ((continuousAt_const.div (continuousAt_id.pow 3) (pow_ne_zero _ ht0)).mul
        ((continuousAt_const.div (continuousAt_id.pow 2) (pow_ne_zero _ ht0)).pow N))
  exact hc.continuousWithinAt

/-- A finite negative contribution; it is not the complete correction by definition. -/
def correctionPrefix (N : ℕ) (x h : ℝ) : ℝ :=
  -(∫ t in (x - h)..(x + h), tent x h t * densityPrefix N t)

/-- Finite prefixes are upper approximations; the omitted negative part is charged explicitly. -/
theorem correctionPrefix_error (N : ℕ) (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    0 ≤ correctionPrefix N x h - rationalTentCorrection x h ∧
      correctionPrefix N x h - rationalTentCorrection x h ≤
        h / ((x - h) * ((x - h) ^ 2 - 1)) * (1 / (x - h) ^ 2) ^ N := by
  have hab : x - h ≤ x + h := by linarith
  have hq := rationalDensity_continuousOn (b := x + h) ha
  have hp := densityPrefix_continuousOn N (b := x + h) ha
  have hw : ContinuousOn (tent x h) (Icc (x - h) (x + h)) :=
    (continuous_tent x h).continuousOn
  have iq := ContinuousOn.intervalIntegrable_of_Icc (μ := MeasureTheory.volume) hab (hw.mul hq)
  have ip := ContinuousOn.intervalIntegrable_of_Icc (μ := MeasureTheory.volume) hab (hw.mul hp)
  have heq : correctionPrefix N x h - rationalTentCorrection x h =
      ∫ t in (x - h)..(x + h), tent x h t * (rationalDensity t - densityPrefix N t) := by
    simp only [mul_sub]
    have isub := intervalIntegral.integral_sub iq ip
    simp only [Pi.mul_def] at isub
    rw [isub]
    unfold correctionPrefix rationalTentCorrection
    ring
  rw [heq]
  have hb := weighted_integral_bounds x h hh
    (fun t => rationalDensity t - densityPrefix N t) (hq.sub hp) 0
    (rationalDensity (x - h) * (1 / (x - h) ^ 2) ^ N)
    (fun t ht => (densityPrefix_remainder_bounds N ha ht).1)
    (fun t ht => (densityPrefix_remainder_bounds N ha ht).2)
  constructor
  · simpa only [zero_mul] using hb.1
  · convert hb.2 using 1; unfold rationalDensity; ring

/-- A finite prefix becomes a valid lower enclosure only after its geometric error is subtracted. -/
theorem correctionPrefix_lower (N : ℕ) (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    correctionPrefix N x h -
      h / ((x - h) * ((x - h) ^ 2 - 1)) * (1 / (x - h) ^ 2) ^ N ≤
        rationalTentCorrection x h := by
  have he := (correctionPrefix_error N x h hh ha).2
  linarith

/-- The finite correction sequence converges to the independently defined integral.
This conclusion uses a uniform geometric error, not an interchange-of-limits premise. -/
theorem correctionPrefix_tendsto (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    Tendsto (fun N : ℕ => correctionPrefix N x h) atTop
      (𝓝 (rationalTentCorrection x h)) := by
  have hsq : 1 < (x - h) ^ 2 := by nlinarith
  have hr0 : 0 ≤ 1 / (x - h) ^ 2 := by positivity
  have hr1 : 1 / (x - h) ^ 2 < 1 := (div_lt_one (by positivity)).2 hsq
  have hp := tendsto_pow_atTop_nhds_zero_of_lt_one hr0 hr1
  have hb : Tendsto
      (fun N : ℕ => h / ((x - h) * ((x - h) ^ 2 - 1)) * (1 / (x - h) ^ 2) ^ N)
      atTop (𝓝 0) := by
    simpa using (tendsto_const_nhds
      (x := h / ((x - h) * ((x - h) ^ 2 - 1)))).mul hp
  have he : Tendsto (fun N : ℕ => correctionPrefix N x h - rationalTentCorrection x h)
      atTop (𝓝 0) := squeeze_zero
    (fun N => (correctionPrefix_error N x h hh ha).1)
    (fun N => (correctionPrefix_error N x h hh ha).2) hb
  simpa only [sub_add_cancel, zero_add] using he.add_const (rationalTentCorrection x h)

end
end GRWTSK.Analysis.RealAnalysis.TentRationalCorrection
