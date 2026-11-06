/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowOddEntries
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds

/-!
# Rational trigonometric observations for the radius-one prime shifts

Local attribution is to grwtsk contributors.

Dyadic scaling puts each of the five literal prime logarithms in the
range of the logarithm series with argument at most one half. The
sixty-term rational sums bound those logarithms using the checked
series remainder. For a rational phase measured in units of pi,
subtract the nearest integer and keep its sign. This reduces the
polynomial argument to magnitude less than two. The complex exponential
series at the imaginary argument bounds both component errors.
The Lipschitz inequalities for sine and cosine then transport the phase
error to the original source arguments. The integer phase reduction
uses rational arithmetic and does not require deciding any exact real
rounding boundary.

The five supported displacements and the sine frequency come from the
literal radius-one entry formulas. Rational square comparisons also
enclose the positive square roots in the exact von Mangoldt weights,
with the weight at four using the logarithm of two. Multiplying these
weight observations by the sine and cosine centers keeps the signs. The uniform error covers every mode
through 2048. Independent mathematical review and novelty assessment
are pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowPrimeTrig

open OddOutputTrace LowSchur UnitWindowOddEntries UnitWindowPrimeData

private def logOneMinusHat (x : ℚ) : ℚ :=
  -(∑ i ∈ Finset.range 60, x ^ (i + 1) / (i + 1 : ℕ))

private def logTwoHat : ℚ := -logOneMinusHat (1 / 2)

private def logScale (q : ℕ) : ℕ :=
  match q with
  | 2 => 1
  | 3 | 4 => 2
  | 5 | 7 => 3
  | _ => 0

private def dyadicFraction (q : ℕ) : ℚ := 1 - (q : ℚ) / 2 ^ logScale q

/-- Rational center for the logarithm of a literal radius-one prime power. -/
def logHat (q : ℕ) : ℚ :=
  logOneMinusHat (dyadicFraction q) + (logScale q : ℚ) * logTwoHat

private theorem logOneMinus_error {x : ℚ} (hx : 0 ≤ x) (hx' : x ≤ 1 / 2) :
    |Real.log (1 - (x : ℝ)) - (logOneMinusHat x : ℝ)| ≤ 1 / (2 : ℝ) ^ 60 := by
  have hx0R : (0 : ℝ) ≤ (x : ℝ) := by exact_mod_cast hx
  have hxR : (x : ℝ) ≤ 1 / 2 := by
    simpa only [Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] using (Rat.cast_le (K := ℝ)).2 hx'
  have hAbs : |(x : ℝ)| ≤ 1 / 2 := by simpa only [abs_of_nonneg hx0R] using hxR
  have h := Real.abs_log_sub_add_sum_range_le (hAbs.trans_lt (by norm_num)) 60
  have hEq : (Real.log (1 - (x : ℝ)) - (logOneMinusHat x : ℝ)) =
      (∑ i ∈ Finset.range 60, (x : ℝ) ^ (i + 1) / ((i : ℝ) + 1)) +
        Real.log (1 - (x : ℝ)) := by
    simp [logOneMinusHat, add_comm]
  rw [hEq]
  refine h.trans ?_
  calc
    _ ≤ (1 / 2 : ℝ) ^ 61 / (1 - |(x : ℝ)|) :=
      div_le_div_of_nonneg_right (pow_le_pow_left₀ (abs_nonneg _) hAbs 61) (by linarith)
    _ ≤ (1 / 2 : ℝ) ^ 61 / (1 / 2) :=
      div_le_div_of_nonneg_left (by positivity) (by norm_num) (by linarith)
    _ = _ := by norm_num

private theorem logTwo_error : |Real.log 2 - (logTwoHat : ℝ)| ≤ 1 / (2 : ℝ) ^ 60 := by
  have h := logOneMinus_error (x := 1 / 2) (by norm_num) (by norm_num)
  have hEq : Real.log 2 - (logTwoHat : ℝ) =
      -(Real.log (1 - ((1 / 2 : ℚ) : ℝ)) - (logOneMinusHat (1 / 2) : ℝ)) := by
    rw [logTwoHat, Rat.cast_neg, show 1 - ((1 / 2 : ℚ) : ℝ) = (2 : ℝ)⁻¹ by norm_num,
      Real.log_inv]
    ring
  rw [hEq, abs_neg]
  exact h

/-- The five actual prime shifts have one uniform rational logarithm radius. -/
theorem abs_log_sub_logHat_le {q : ℕ} (hq : q ∈ ({2, 3, 4, 5, 7} : Finset ℕ)) :
    |Real.log (q : ℝ) - (logHat q : ℝ)| ≤ 1 / 10 ^ (17 : ℕ) := by
  have hData : 0 ≤ dyadicFraction q ∧ dyadicFraction q ≤ 1 / 2 ∧ logScale q ≤ 3 := by
    simp only [Finset.mem_insert, Finset.mem_singleton] at hq
    rcases hq with rfl | rfl | rfl | rfl | rfl <;> norm_num [dyadicFraction, logScale]
  obtain ⟨hx, hx', hp⟩ := hData
  have hpR : (logScale q : ℝ) ≤ 3 := by exact_mod_cast hp
  have hxR : (dyadicFraction q : ℝ) ≤ 1 / 2 := by
    simpa only [Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] using (Rat.cast_le (K := ℝ)).2 hx'
  have hqEq : (q : ℝ) = (1 - (dyadicFraction q : ℝ)) * 2 ^ logScale q := by
    simp only [dyadicFraction, Rat.cast_sub, Rat.cast_one, Rat.cast_div, Rat.cast_natCast,
      Rat.cast_pow, Rat.cast_ofNat, sub_sub_cancel]
    symm
    exact div_mul_cancel₀ (q : ℝ) (pow_ne_zero _ (by norm_num : (2 : ℝ) ≠ 0))
  have hLog : Real.log (q : ℝ) =
      Real.log (1 - (dyadicFraction q : ℝ)) + (logScale q : ℝ) * Real.log 2 := by
    rw [hqEq, Real.log_mul (by linarith) (by positivity), Real.log_pow]
  rw [hLog]
  push_cast [logHat]
  rw [show Real.log (1 - (dyadicFraction q : ℝ)) + (logScale q : ℝ) * Real.log 2 -
      ((logOneMinusHat (dyadicFraction q) : ℝ) + (logScale q : ℝ) * (logTwoHat : ℝ)) =
      (Real.log (1 - (dyadicFraction q : ℝ)) - (logOneMinusHat (dyadicFraction q) : ℝ)) +
        (logScale q : ℝ) * (Real.log 2 - (logTwoHat : ℝ)) by ring]
  refine (abs_add_le _ _).trans ?_
  rw [abs_mul, abs_of_nonneg (Nat.cast_nonneg (α := ℝ) (logScale q))]
  exact (add_le_add (logOneMinus_error hx hx')
    (mul_le_mul hpR logTwo_error (abs_nonneg _) (by norm_num))).trans (by norm_num)

private def piHat : ℚ := 314159265358979323846 / 10 ^ (20 : ℕ)

/-- The integer multiple of pi subtracted from a rational phase. -/
def angleTurn (c : ℚ) : ℤ := ⌊c + 1 / 2⌋

/-- Rational argument after reduction by the nearest integer multiple of pi. -/
def reducedAngle (c : ℚ) : ℚ := piHat * (c - angleTurn c)

private theorem abs_phaseFraction_le (c : ℚ) : |c - (angleTurn c : ℚ)| ≤ 1 / 2 := by
  have hlo := Int.floor_le (c + 1 / 2)
  have hhi := Int.lt_floor_add_one (c + 1 / 2)
  change (angleTurn c : ℚ) ≤ c + 1 / 2 at hlo
  change c + 1 / 2 < (angleTurn c : ℚ) + 1 at hhi
  rw [abs_le]
  constructor <;> linarith

private theorem abs_pi_sub_piHat_le : |Real.pi - (piHat : ℝ)| ≤ 1 / 10 ^ (20 : ℕ) := by
  rw [abs_le]
  norm_num [piHat]
  constructor <;> linarith [Real.pi_gt_d20, Real.pi_lt_d20]

theorem abs_reducedAngle_le (c : ℚ) : |reducedAngle c| ≤ 2 := by
  unfold reducedAngle
  rw [abs_mul]
  exact (mul_le_mul_of_nonneg_left (abs_phaseFraction_le c) (abs_nonneg _)).trans
    (by norm_num [piHat])

private theorem abs_reducedPhase_error (c : ℚ) {a radius : ℝ}
    (h : |a - (c : ℝ)| ≤ radius) :
    |Real.pi * (a - (angleTurn c : ℝ)) - (reducedAngle c : ℝ)| ≤
      4 * radius + 1 / 10 ^ (20 : ℕ) := by
  have hc : |(c : ℝ) - (angleTurn c : ℝ)| ≤ 1 / 2 := by
    simpa only [Rat.cast_abs, Rat.cast_sub, Rat.cast_intCast, Rat.cast_div, Rat.cast_one,
      Rat.cast_ofNat] using (Rat.cast_le (K := ℝ)).2 (abs_phaseFraction_le c)
  have hPi : |Real.pi| ≤ 4 := by simpa [abs_of_pos Real.pi_pos] using Real.pi_lt_four.le
  unfold reducedAngle
  push_cast
  rw [show Real.pi * (a - (angleTurn c : ℝ)) -
      (piHat : ℝ) * ((c : ℝ) - (angleTurn c : ℝ)) =
      Real.pi * (a - (c : ℝ)) +
        (Real.pi - (piHat : ℝ)) * ((c : ℝ) - (angleTurn c : ℝ)) by ring]
  refine (abs_add_le _ _).trans ?_
  rw [abs_mul, abs_mul]
  exact (add_le_add (mul_le_mul hPi h (abs_nonneg _) (by norm_num))
    (mul_le_mul abs_pi_sub_piHat_le hc (abs_nonneg _) (by positivity))).trans
    (by linarith)

private def sinTaylor (x : ℚ) : ℚ :=
  ∑ k ∈ Finset.range 12, (-1 : ℚ) ^ k * x ^ (2 * k + 1) / (2 * k + 1).factorial

private def cosTaylor (x : ℚ) : ℚ :=
  ∑ k ∈ Finset.range 12, (-1 : ℚ) ^ k * x ^ (2 * k) / (2 * k).factorial

private theorem sum_range_double {α : Type*} [AddCommMonoid α] (f : ℕ → α) (N : ℕ) :
    (∑ i ∈ Finset.range (2 * N), f i) =
      ∑ k ∈ Finset.range N, (f (2 * k) + f (2 * k + 1)) := by
  induction N with
  | zero => simp
  | succ N ih =>
    rw [show 2 * (N + 1) = (2 * N + 1) + 1 by omega, Finset.sum_range_succ,
      Finset.sum_range_succ, ih, Finset.sum_range_succ, add_assoc]

private theorem expSeries_eq_trigTaylor (x : ℚ) :
    (∑ m ∈ Finset.range 24, ((x : ℂ) * Complex.I) ^ m / (m.factorial : ℂ)) =
      (cosTaylor x : ℂ) + (sinTaylor x : ℂ) * Complex.I := by
  rw [show 24 = 2 * 12 by decide, sum_range_double]
  simp only [cosTaylor, sinTaylor, Rat.cast_sum]
  rw [Finset.sum_mul, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro k _
  have he : ((x : ℂ) * Complex.I) ^ (2 * k) =
      (-1 : ℂ) ^ k * (x : ℂ) ^ (2 * k) := by
    rw [mul_pow, pow_mul Complex.I, Complex.I_sq, mul_comm]
  rw [pow_succ, he]
  push_cast
  ring

private theorem trigTaylor_error {x : ℚ} (hx : |x| ≤ 2) :
    |Real.sin (x : ℝ) - (sinTaylor x : ℝ)| ≤ 1 / 10 ^ (15 : ℕ) ∧
      |Real.cos (x : ℝ) - (cosTaylor x : ℝ)| ≤ 1 / 10 ^ (15 : ℕ) := by
  let z : ℂ := (x : ℂ) * Complex.I
  have hzNorm : ‖z‖ = |(x : ℝ)| := by
    change ‖(x : ℂ) * Complex.I‖ = _
    rw [norm_mul, Complex.norm_I, mul_one, Complex.norm_ratCast]
  have hz : ‖z‖ ≤ 2 := by rw [hzNorm]; exact_mod_cast hx
  have hzSmall : ‖z‖ / ((24 : ℕ).succ : ℝ) ≤ 1 / 2 := by
    norm_num
    linarith
  have h := Complex.exp_bound' (x := z) (n := 24) hzSmall
  have hE : ‖Complex.exp z - ((cosTaylor x : ℂ) + (sinTaylor x : ℂ) * Complex.I)‖ ≤
      1 / 10 ^ (15 : ℕ) := by
    dsimp only [z] at h
    rw [expSeries_eq_trigTaylor] at h
    refine h.trans ?_
    exact (mul_le_mul_of_nonneg_right
      (div_le_div_of_nonneg_right (pow_le_pow_left₀ (norm_nonneg _) hz 24) (by positivity))
      (by norm_num)).trans (by norm_num [Nat.factorial])
  have hsin := (Complex.abs_im_le_norm _).trans hE
  have hcos := (Complex.abs_re_le_norm _).trans hE
  have hExp : Complex.exp z =
      (Real.cos (x : ℝ) : ℂ) + (Real.sin (x : ℝ) : ℂ) * Complex.I := by
    change Complex.exp ((x : ℂ) * Complex.I) = _
    rw [← Complex.ofReal_ratCast, Complex.exp_mul_I, Complex.ofReal_cos, Complex.ofReal_sin]
  rw [hExp] at hsin hcos
  constructor
  · simpa only [Complex.mul_im, Complex.add_im, Complex.sub_im, Complex.ofReal_re,
      Complex.ofReal_im, Complex.ratCast_re, Complex.ratCast_im, Complex.I_re, Complex.I_im,
      zero_mul, mul_zero, add_zero, zero_add, mul_one] using hsin
  · simpa only [Complex.mul_re, Complex.add_re, Complex.sub_re, Complex.ofReal_re,
      Complex.ofReal_im, Complex.ratCast_re, Complex.ratCast_im, Complex.I_re, Complex.I_im,
      zero_mul, mul_zero, sub_zero, add_zero] using hcos

/-- Rational sine center for a phase measured in units of pi. -/
def sinHat (c : ℚ) : ℚ := (-1 : ℚ) ^ angleTurn c * sinTaylor (reducedAngle c)

/-- Rational cosine center for a phase measured in units of pi. -/
def cosHat (c : ℚ) : ℚ := (-1 : ℚ) ^ angleTurn c * cosTaylor (reducedAngle c)

theorem trig_observation (c : ℚ) {a radius : ℝ} (h : |a - (c : ℝ)| ≤ radius) :
    |Real.sin (Real.pi * a) - (sinHat c : ℝ)| ≤ 4 * radius + 1 / 10 ^ (14 : ℕ) ∧
      |Real.cos (Real.pi * a) - (cosHat c : ℝ)| ≤ 4 * radius + 1 / 10 ^ (14 : ℕ) := by
  let t := Real.pi * (a - (angleTurn c : ℝ))
  let u : ℝ := reducedAngle c
  have hPhase := abs_reducedPhase_error c h
  obtain ⟨hSin, hCos⟩ := trigTaylor_error (abs_reducedAngle_le c)
  have hperiod : Real.pi * a = t + (angleTurn c : ℝ) * Real.pi := by
    unfold t
    ring
  have hSin' : |Real.sin t - (sinTaylor (reducedAngle c) : ℝ)| ≤
      (4 * radius + 1 / 10 ^ (20 : ℕ)) + 1 / 10 ^ (15 : ℕ) :=
    (abs_sub_le (Real.sin t) (Real.sin u) _).trans
      (add_le_add ((Real.abs_sin_sub_sin_le t u).trans hPhase) hSin)
  have hCos' : |Real.cos t - (cosTaylor (reducedAngle c) : ℝ)| ≤
      (4 * radius + 1 / 10 ^ (20 : ℕ)) + 1 / 10 ^ (15 : ℕ) :=
    (abs_sub_le (Real.cos t) (Real.cos u) _).trans
      (add_le_add ((Real.abs_cos_sub_cos_le t u).trans hPhase) hCos)
  constructor
  · rw [hperiod, Real.sin_add_int_mul_pi]
    push_cast [sinHat]
    rw [← mul_sub, abs_mul, abs_neg_one_zpow, one_mul]
    exact hSin'.trans (by linarith)
  · rw [hperiod, Real.cos_add_int_mul_pi]
    push_cast [cosHat]
    rw [← mul_sub, abs_mul, abs_neg_one_zpow, one_mul]
    exact hCos'.trans (by linarith)

/-- The literal prime angles have uniform sine and cosine observations through mode 2048. -/
theorem primeTrig_observation {q n : ℕ}
    (hq : q ∈ ({2, 3, 4, 5, 7} : Finset ℕ)) (hn : n ≤ 2048) :
    |Real.sin (frequency 1 n * Real.log q) - (sinHat ((n : ℚ) * logHat q) : ℝ)| ≤
        1 / 10 ^ (13 : ℕ) ∧
      |Real.cos (frequency 1 n * Real.log q) - (cosHat ((n : ℚ) * logHat q) : ℝ)| ≤
        1 / 10 ^ (13 : ℕ) := by
  have hnR : (n : ℝ) ≤ 2048 := by exact_mod_cast hn
  have hPhase : |(n : ℝ) * Real.log q - (((n : ℚ) * logHat q : ℚ) : ℝ)| ≤
      (2048 : ℝ) / 10 ^ (17 : ℕ) := by
    push_cast
    rw [← mul_sub, abs_mul, abs_of_nonneg (Nat.cast_nonneg n)]
    exact (mul_le_mul hnR (abs_log_sub_logHat_le hq) (abs_nonneg _) (by norm_num)).trans_eq (by ring)
  obtain ⟨hSin, hCos⟩ := trig_observation ((n : ℚ) * logHat q) hPhase
  simp only [frequency, div_one, mul_assoc]
  exact ⟨hSin.trans (by norm_num), hCos.trans (by norm_num)⟩

/-- Rational lower centers for the positive square roots in the literal prime weights. -/
def sqrtHat (q : ℕ) : ℚ :=
  match q with
  | 2 => 1.4142135623730950
  | 3 => 1.7320508075688772
  | 4 => 2
  | 5 => 2.2360679774997896
  | 7 => 2.6457513110645905
  | _ => 0

theorem sqrtHat_bounds {q : ℕ} (hq : q ∈ ({2, 3, 4, 5, 7} : Finset ℕ)) :
    (1 : ℝ) ≤ (sqrtHat q : ℝ) ∧
      (sqrtHat q : ℝ) ≤ Real.sqrt (q : ℝ) ∧
      Real.sqrt (q : ℝ) ≤ (sqrtHat q : ℝ) + 1 / 10 ^ (16 : ℕ) := by
  have h : (1 : ℝ) ≤ (sqrtHat q : ℝ) ∧
      (sqrtHat q : ℝ) ^ 2 ≤ (q : ℝ) ∧
      (q : ℝ) ≤ ((sqrtHat q : ℝ) + 1 / 10 ^ (16 : ℕ)) ^ 2 := by
    simp only [Finset.mem_insert, Finset.mem_singleton] at hq
    rcases hq with rfl | rfl | rfl | rfl | rfl <;> norm_num [sqrtHat]
  exact ⟨h.1, Real.le_sqrt_of_sq_le h.2.1,
    (Real.sqrt_le_left (by linarith [h.1])).2 h.2.2⟩

/-- Rational center for the signed prime coefficient before its sine or cosine factor. -/
def primeWeightHat (q : ℕ) : ℚ := logHat (if q = 4 then 2 else q) / sqrtHat q

private theorem abs_log_le_two {q : ℕ} (hq : q ∈ ({2, 3, 4, 5, 7} : Finset ℕ)) :
    |Real.log (q : ℝ)| ≤ 2 := by
  have hSubset : ({2, 3, 4, 5, 7} : Finset ℕ) ⊆ activePrimePowers 1 := by
    rw [activePrimePowers_one]
    decide
  obtain ⟨_, hmin, hmax⟩ := Finset.mem_filter.mp (hSubset hq)
  have hqR : (1 : ℝ) ≤ q := by exact_mod_cast (show 1 ≤ q by omega)
  rw [abs_of_nonneg (Real.log_nonneg hqR)]
  exact (show Real.log (q : ℝ) < 2 by
    simpa using Real.log_lt_log (zero_lt_one.trans_le hqR) hmax).le

private theorem div_le_of_one_le {a b c : ℝ} (ha : 0 ≤ a) (h : a ≤ c) (hb : 1 ≤ b) :
    a / b ≤ c :=
  (div_le_div_of_nonneg_left ha zero_lt_one hb).trans (by simpa using h)

theorem primeWeight_observation {q : ℕ} (hq : q ∈ ({2, 3, 4, 5, 7} : Finset ℕ)) :
    |primeWeight q - (primeWeightHat q : ℝ)| ≤ 1 / 10 ^ (15 : ℕ) ∧
      |(primeWeightHat q : ℝ)| ≤ 3 := by
  let p := if q = 4 then 2 else q
  let d := Real.sqrt (q : ℝ)
  let dHat : ℝ := sqrtHat q
  let l := Real.log (p : ℝ)
  let lHat : ℝ := logHat p
  have hp : p ∈ ({2, 3, 4, 5, 7} : Finset ℕ) := by
    by_cases h : q = 4
    · simp [p, h]
    · simpa [p, h] using hq
  have hActual : primeWeight q = l / d := by
    rw [primeWeight_one_eq hq]
    by_cases h4 : q = 4
    · subst q
      have hs : Real.sqrt (4 : ℝ) = 2 := by
        rw [show (4 : ℝ) = 2 ^ (2 : ℕ) by norm_num, Real.sqrt_sq (by norm_num)]
      simp [p, l, d, hs]
    · simp [p, l, d, h4]
  have hHat : (primeWeightHat q : ℝ) = lHat / dHat := Rat.cast_div _ _
  obtain ⟨hDhat, hDlo, hDhi⟩ := sqrtHat_bounds hq
  have hDhat' : 1 ≤ dHat := hDhat
  have hD : 1 ≤ d := hDhat.trans hDlo
  have hAbsD : |dHat - d| ≤ 1 / 10 ^ (16 : ℕ) := by
    have hLo : dHat ≤ d := hDlo
    have hHi : d ≤ dHat + 1 / 10 ^ (16 : ℕ) := hDhi
    rw [abs_le]
    constructor <;> linarith
  have hLog : |l - lHat| ≤ 1 / 10 ^ (17 : ℕ) := abs_log_sub_logHat_le hp
  have hLogHat : |lHat| ≤ 3 := by
    have h := abs_sub_le lHat l 0
    rw [sub_zero, abs_sub_comm lHat l, sub_zero] at h
    exact (h.trans (add_le_add hLog (abs_log_le_two hp))).trans (by norm_num)
  have hd0 : 0 < d := zero_lt_one.trans_le hD
  have hdh0 : 0 < dHat := zero_lt_one.trans_le hDhat'
  rw [hActual, hHat]
  constructor
  · rw [show l / d - lHat / dHat = (l - lHat) / d +
        lHat * (dHat - d) / (d * dHat) by
        field_simp [hd0.ne', hdh0.ne']
        ring]
    refine (abs_add_le _ _).trans ?_
    rw [abs_div, abs_div, abs_mul, abs_of_pos hd0, abs_of_pos (mul_pos hd0 hdh0)]
    exact (add_le_add (div_le_of_one_le (abs_nonneg _) hLog hD)
      (div_le_of_one_le (by positivity)
        (mul_le_mul hLogHat hAbsD (abs_nonneg _) (by norm_num))
        (one_le_mul_of_one_le_of_one_le hD hDhat'))).trans (by norm_num)
  · rw [abs_div, abs_of_pos hdh0]
    exact div_le_of_one_le (abs_nonneg _) hLogHat hDhat'

private theorem weighted_error {w wHat t tHat : ℝ}
    (hw : |w - wHat| ≤ 1 / 10 ^ (15 : ℕ)) (hwHat : |wHat| ≤ 3)
    (ht : |t| ≤ 1) (hTrig : |t - tHat| ≤ 1 / 10 ^ (13 : ℕ)) :
    |w * t - wHat * tHat| ≤ 4 / 10 ^ (13 : ℕ) := by
  rw [show w * t - wHat * tHat = (w - wHat) * t + wHat * (t - tHat) by ring]
  refine (abs_add_le _ _).trans ?_
  rw [abs_mul, abs_mul]
  exact (add_le_add (mul_le_mul hw ht (abs_nonneg _) (by norm_num))
    (mul_le_mul hwHat hTrig (abs_nonneg _) (by norm_num))).trans (by norm_num)

/-- Certified rational weighted sine and cosine families for the five literal prime shifts. -/
theorem primeWeightedTrig_observation {q n : ℕ}
    (hq : q ∈ ({2, 3, 4, 5, 7} : Finset ℕ)) (hn : n ≤ 2048) :
    |primeWeight q * Real.sin (frequency 1 n * Real.log q) -
        ((primeWeightHat q * sinHat ((n : ℚ) * logHat q) : ℚ) : ℝ)| ≤ 4 / 10 ^ (13 : ℕ) ∧
      |primeWeight q * Real.cos (frequency 1 n * Real.log q) -
        ((primeWeightHat q * cosHat ((n : ℚ) * logHat q) : ℚ) : ℝ)| ≤ 4 / 10 ^ (13 : ℕ) := by
  obtain ⟨hW, hWHat⟩ := primeWeight_observation hq
  obtain ⟨hSin, hCos⟩ := primeTrig_observation hq hn
  push_cast
  exact ⟨weighted_error hW hWHat (Real.abs_sin_le_one _) hSin,
    weighted_error hW hWHat (Real.abs_cos_le_one _) hCos⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowPrimeTrig
