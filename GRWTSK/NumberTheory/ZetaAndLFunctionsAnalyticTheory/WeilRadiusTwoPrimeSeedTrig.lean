/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimeObservations
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRemoteScalars

/-!
# Short rotations for radius-two prime seed observations

Reuse a rational sine and cosine table at phases spaced by 1/8192 in
units of pi. Apply a quadratic complex exponential expansion over
the remaining fraction of the cell, with the cubic remainder from
Mathlib's `Complex.exp_bound'`. The original Taylor evaluation can
check the shared anchors. The exact prime phase uses the logarithm
of the actual prime power and keeps the sign of both trigonometric
components.

The fast observations are inputs to the finite receiving covariance
and the shifted diagonal seed. Comparison against a frozen seed and
replay of its pivot chain are separate. Independent mathematical review
and novelty assessment are pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPrimeSeedTrig

open OddOutputTrace RadiusTwoPrimeObservations

private theorem quadraticRotation {x t : ℝ} (ht : |t| ≤ 1) :
    |Real.sin (x+t) - ((1-t^2/2)*Real.sin x+t*Real.cos x)| ≤ |t|^3/3 ∧
    |Real.cos (x+t) - ((1-t^2/2)*Real.cos x-t*Real.sin x)| ≤ |t|^3/3 := by
  let z : ℂ := (t : ℂ) * Complex.I
  let w : ℂ := (x : ℂ) * Complex.I
  have hz : ‖z‖ = |t| := by simp [z, Real.norm_eq_abs]
  have hsmall : ‖z‖ / ((3 : ℕ).succ : ℝ) ≤ 1 / 2 := by
    rw [hz]
    norm_num
    linarith
  have hPoly : (∑ i ∈ Finset.range 3, z ^ i / (i.factorial : ℂ)) =
      ((1 - t^2/2 : ℝ) : ℂ) + (t : ℂ) * Complex.I := by
    simp [Finset.sum_range_succ, z, pow_two]
    ring_nf
    rw [show Complex.I ^ 2 = -1 by exact Complex.I_sq]
    ring
  have hR := Complex.exp_bound' hsmall
  rw [hPoly, hz] at hR
  have hnorm : ‖Complex.exp w‖ = 1 := Complex.norm_exp_ofReal_mul_I _
  have hR' :
      ‖Complex.exp (((x+t : ℝ) : ℂ) * Complex.I) -
          Complex.exp w * (((1 - t^2/2 : ℝ) : ℂ) + (t : ℂ)*Complex.I)‖ ≤ |t|^3/3 := by
    rw [show (((x+t : ℝ) : ℂ) * Complex.I) = w+z by push_cast [w,z]; ring,
      Complex.exp_add, ← mul_sub, norm_mul, hnorm, one_mul]
    exact hR.trans_eq (by norm_num [Nat.factorial]; ring)
  have hsin := (Complex.abs_im_le_norm _).trans hR'
  have hcos := (Complex.abs_re_le_norm _).trans hR'
  dsimp only [w] at hsin hcos
  have hEuler (u : ℝ) : Complex.exp ((u : ℂ) * Complex.I) =
      (Real.cos u : ℂ) + (Real.sin u : ℂ) * Complex.I := by
    rw [Complex.exp_mul_I, Complex.ofReal_cos, Complex.ofReal_sin]
  rw [hEuler, hEuler] at hsin hcos
  simp only [Complex.sub_im, Complex.add_im, Complex.mul_im, Complex.sub_re, Complex.add_re,
    Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im, mul_zero,
    zero_add, add_zero, sub_zero, mul_one] at hsin hcos
  exact ⟨by simpa only [mul_comm, add_comm] using hsin,
    by simpa only [mul_comm] using hcos⟩

/-- Integer anchor after reducing the phase to a half-turn in either direction. -/
def anchor (c : ℚ) : ℤ := ⌊8192 * (c - UnitWindowPrimeTrig.angleTurn c)⌋

/-- Fractional phase remaining after moving to the anchor. -/
def remainder (c : ℚ) : ℚ := c - UnitWindowPrimeTrig.angleTurn c - (anchor c : ℚ) / 8192

private theorem remainder_bounds (c : ℚ) : 0 ≤ remainder c ∧ remainder c ≤ 1/8192 := by
  have ha := Int.floor_le (8192 * (c - UnitWindowPrimeTrig.angleTurn c) : ℚ)
  have hb := Int.lt_floor_add_one (8192 * (c - UnitWindowPrimeTrig.angleTurn c) : ℚ)
  change (anchor c : ℚ) ≤ _ at ha
  change _ < (anchor c : ℚ) + 1 at hb
  unfold remainder
  constructor <;> linarith

/-- Read the table once per component and rotate by a short rational argument. -/
def rotationCenter (sinTable cosTable : ℤ → ℚ) (c : ℚ) : ℚ × ℚ :=
  let i := anchor c
  let t := 3.14159265358979323846 * remainder c
  let sign := (-1 : ℚ) ^ UnitWindowPrimeTrig.angleTurn c
  (sign * ((1-t^2/2)*sinTable i+t*cosTable i),
    sign * ((1-t^2/2)*cosTable i-t*sinTable i))

private theorem abs_twoTerm_sub_le {a b s c s' c' r : ℝ}
    (ha : |a| ≤ 1) (hb : |b| ≤ 1) (hs : |s - s'| ≤ r) (hc : |c - c'| ≤ r) :
    |(a*s+b*c) - (a*s'+b*c')| ≤ r+r := by
  rw [show (a*s+b*c) - (a*s'+b*c') = a*(s-s') + b*(c-c') by ring]
  refine (abs_add_le _ _).trans ?_
  rw [abs_mul, abs_mul]
  exact add_le_add
    ((mul_le_of_le_one_left (abs_nonneg _) ha).trans hs)
    ((mul_le_of_le_one_left (abs_nonneg _) hb).trans hc)

/-- Uniform error for a short rotation about an enclosed table anchor. -/
theorem rotationCenter_sound (sinTable cosTable : ℤ → ℚ) (c : ℚ)
    (hs : |Real.sin (Real.pi * (anchor c : ℝ) / 8192) - (sinTable (anchor c) : ℝ)|
      ≤ 1 / 10^12)
    (hc : |Real.cos (Real.pi * (anchor c : ℝ) / 8192) - (cosTable (anchor c) : ℝ)|
      ≤ 1 / 10^12) :
    |Real.sin (Real.pi * (c : ℝ)) - ((rotationCenter sinTable cosTable c).1 : ℝ)|
      ≤ 1 / 10^10 ∧
    |Real.cos (Real.pi * (c : ℝ)) - ((rotationCenter sinTable cosTable c).2 : ℝ)|
      ≤ 1 / 10^10 := by
  let i := anchor c
  let x := Real.pi * (i : ℝ) / 8192
  let t : ℝ := 3.14159265358979323846 * (remainder c : ℝ)
  let tπ : ℝ := Real.pi * (remainder c : ℝ)
  let a := 1 - t^2/2
  have hr0 : (0 : ℝ) ≤ (remainder c : ℝ) := by exact_mod_cast (remainder_bounds c).1
  have hr1 : (remainder c : ℝ) ≤ (1 / 8192 : ℝ) := by
    simpa only [Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] using
      (Rat.cast_le (K := ℝ)).2 (remainder_bounds c).2
  have ht0 : 0 ≤ t := by unfold t; positivity
  have ht : |t| ≤ 1/2048 := by
    rw [abs_of_nonneg ht0]
    unfold t
    linarith
  have ht1 : |t| ≤ 1 := ht.trans (by norm_num)
  have hA : |a| ≤ 1 := by
    have htHi : t ≤ 1 := (le_abs_self t).trans ht1
    have htsq : t ^ 2 ≤ 1 := by nlinarith [mul_nonneg ht0 (sub_nonneg.mpr htHi)]
    exact abs_le.mpr ⟨by unfold a; linarith, by unfold a; nlinarith [sq_nonneg t]⟩
  have hArg : |tπ-t| ≤ 1/10^20 := by
    unfold tπ t
    rw [← sub_mul, abs_mul, abs_of_nonneg hr0,
      abs_of_nonneg (sub_nonneg.mpr Real.pi_gt_d20.le)]
    have hπ : Real.pi - 3.14159265358979323846 ≤ (1 / 10^20 : ℝ) := by
      linarith [Real.pi_lt_d20]
    refine (mul_le_mul_of_nonneg_right hπ hr0).trans ?_
    nlinarith [show (remainder c : ℝ) ≤ 1 by linarith]
  have hArg' : |x+tπ-(x+t)| ≤ 1/10^20 := by
    rwa [show x+tπ-(x+t) = tπ-t by ring]
  have hRem : |t|^3/3 ≤ 1/10^11 * 4 := by
    have h := pow_le_pow_left₀ (abs_nonneg _) ht 3
    linarith
  obtain ⟨hsRot,hcRot⟩ := quadraticRotation (x := x) ht1
  have hsTable : |(a*Real.sin x+t*Real.cos x) -
      (a*(sinTable i : ℝ)+t*(cosTable i : ℝ))| ≤ 1/10^12+1/10^12 :=
    abs_twoTerm_sub_le hA ht1 hs hc
  have hcTable : |(a*Real.cos x-t*Real.sin x) -
      (a*(cosTable i : ℝ)-t*(sinTable i : ℝ))| ≤ 1/10^12+1/10^12 := by
    simpa only [neg_mul, sub_eq_add_neg] using
      abs_twoTerm_sub_le (a := a) (b := -t) hA (by rwa [abs_neg]) hc hs
  have hPhase : Real.pi * (c : ℝ) = x+tπ+(UnitWindowPrimeTrig.angleTurn c : ℝ)*Real.pi := by
    unfold x tπ i remainder
    push_cast
    ring
  rw [hPhase, Real.sin_add_int_mul_pi, Real.cos_add_int_mul_pi]
  push_cast [rotationCenter]
  constructor
  · change |(-1 : ℝ)^UnitWindowPrimeTrig.angleTurn c * Real.sin (x+tπ) -
      (-1 : ℝ)^UnitWindowPrimeTrig.angleTurn c * (a*(sinTable i : ℝ)+t*(cosTable i : ℝ))| ≤ _
    rw [← mul_sub, abs_mul, abs_neg_one_zpow, one_mul]
    refine (abs_sub_le _ (Real.sin (x+t)) _).trans ?_
    have h := (Real.abs_sin_sub_sin_le _ _).trans hArg'
    have h' := (abs_sub_le (Real.sin (x+t)) (a*Real.sin x+t*Real.cos x)
      (a*(sinTable i : ℝ)+t*(cosTable i : ℝ))).trans (add_le_add hsRot hsTable)
    linarith
  · change |(-1 : ℝ)^UnitWindowPrimeTrig.angleTurn c * Real.cos (x+tπ) -
      (-1 : ℝ)^UnitWindowPrimeTrig.angleTurn c * (a*(cosTable i : ℝ)-t*(sinTable i : ℝ))| ≤ _
    rw [← mul_sub, abs_mul, abs_neg_one_zpow, one_mul]
    refine (abs_sub_le _ (Real.cos (x+t)) _).trans ?_
    have h := (Real.abs_cos_sub_cos_le _ _).trans hArg'
    have h' := (abs_sub_le (Real.cos (x+t)) (a*Real.cos x-t*Real.sin x)
      (a*(cosTable i : ℝ)-t*(sinTable i : ℝ))).trans (add_le_add hcRot hcTable)
    linarith

/-- The finite table has exactly the integer anchors in the half-open reduced phase interval. -/
theorem anchor_bounds (c : ℚ) : -4096 ≤ anchor c ∧ anchor c ≤ 4095 := by
  have h₁ := Int.floor_le (c + 1/2 : ℚ)
  have h₂ := Int.lt_floor_add_one (c + 1/2 : ℚ)
  change (UnitWindowPrimeTrig.angleTurn c : ℚ) ≤ _ at h₁
  change _ < (UnitWindowPrimeTrig.angleTurn c : ℚ) + 1 at h₂
  have hl : ((-4096 : ℤ) : ℚ) ≤ 8192 * (c - UnitWindowPrimeTrig.angleTurn c) := by
    norm_num
    linarith
  have hu : 8192 * (c - UnitWindowPrimeTrig.angleTurn c) < ((4096 : ℤ) : ℚ) := by
    norm_num
    linarith
  have hu' : anchor c < 4096 := Int.floor_lt.mpr hu
  exact ⟨Int.le_floor.mpr hl, by omega⟩

/-- The logarithm center of the signed radius-two prime phase in units of pi. -/
def primePhaseCenter (q n : ℕ) : ℚ := (n : ℚ) / 2 * logHat q

/-- A common small error for the sine and cosine in every seed mode. -/
theorem primeRotation_sound (sinTable cosTable : ℤ → ℚ)
    (hTable : ∀ i : ℤ, -4096 ≤ i → i ≤ 4095 →
      |Real.sin (Real.pi * (i : ℝ) / 8192) - (sinTable i : ℝ)| ≤ 1 / 10^12 ∧
      |Real.cos (Real.pi * (i : ℝ) / 8192) - (cosTable i : ℝ)| ≤ 1 / 10^12)
    {q n : ℕ} (hq₀ : 0 < q) (hq : q ≤ 54) (hn : n ≤ 1200000) :
    let rotated := rotationCenter sinTable cosTable (primePhaseCenter q n)
    |Real.sin (frequency 2 n * Real.log q) - (rotated.1 : ℝ)| ≤ 1 / 10^9 ∧
    |Real.cos (frequency 2 n * Real.log q) - (rotated.2 : ℝ)| ≤ 1 / 10^9 := by
  let c := primePhaseCenter q n
  obtain ⟨hl,hu⟩ := anchor_bounds c
  obtain ⟨hs,hc⟩ := hTable (anchor c) hl hu
  obtain ⟨hsRot,hcRot⟩ := rotationCenter_sound sinTable cosTable c hs hc
  have hnR : (n : ℝ) ≤ 1200000 := by exact_mod_cast hn
  have hPhase : |frequency 2 n * Real.log q - Real.pi * (c : ℝ)| ≤ 1 / 10^10 := by
    have h := abs_log_sub_logHat_le hq₀ hq
    change |Real.log q - (logHat q : ℝ)| ≤ ((1 / 10^17 : ℚ) : ℝ) at h
    push_cast at h
    have heq : frequency 2 n * Real.log q - Real.pi * (c : ℝ) =
        (Real.pi * (n : ℝ) / 2) * (Real.log q - (logHat q : ℝ)) := by
      unfold c primePhaseCenter frequency
      push_cast
      ring
    rw [heq, abs_mul, abs_of_nonneg (by positivity : 0 ≤ Real.pi * (n : ℝ) / 2)]
    refine (mul_le_mul_of_nonneg_left h (by positivity)).trans ?_
    nlinarith [Real.pi_lt_four, mul_nonneg (Nat.cast_nonneg (α := ℝ) n)
      (sub_nonneg.mpr Real.pi_lt_four.le)]
  constructor
  · refine (abs_sub_le _ (Real.sin (Real.pi * (c : ℝ))) _).trans ?_
    exact (add_le_add ((Real.abs_sin_sub_sin_le _ _).trans hPhase) hsRot).trans (by norm_num)
  · refine (abs_sub_le _ (Real.cos (Real.pi * (c : ℝ))) _).trans ?_
    exact (add_le_add ((Real.abs_cos_sub_cos_le _ _).trans hPhase) hcRot).trans (by norm_num)

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open LowSchur OddRootProjection RadiusTwoEntryIdentities RadiusTwoPrimeNorm

/-- The shared table encloses the trigonometric values at all 8192 anchors. -/
def TableSound (sinTable cosTable : ℤ → ℚ) : Prop :=
  ∀ i : ℤ, -4096 ≤ i → i ≤ 4095 →
    |Real.sin (Real.pi * (i : ℝ) / 8192) - (sinTable i : ℝ)| ≤ 1 / 10^12 ∧
    |Real.cos (Real.pi * (i : ℝ) / 8192) - (cosTable i : ℝ)| ≤ 1 / 10^12

private def observed (c : ℚ) : Bounds := (c - 1/10^9, c + 1/10^9)

private theorem observed_sound {c : ℚ} {x : ℝ} (h : |x - (c : ℝ)| ≤ 1 / 10^9) :
    Encloses (observed c) x := by
  rw [abs_le] at h
  rcases h with ⟨hl, hu⟩
  unfold Encloses observed
  push_cast
  constructor <;> linarith

/-- Signed prime signal, using the shared rotation table. -/
def signalBoundsFromRotations (sinTable cosTable : ℤ → ℚ) (n : ℕ) : Bounds :=
  sum (Finset.Icc 2 54) fun q =>
    mul (primeWeightBounds q)
      (observed (rotationCenter sinTable cosTable (primePhaseCenter q n)).1)

theorem signalBoundsFromRotations_sound (sinTable cosTable : ℤ → ℚ)
    (hTable : TableSound sinTable cosTable) {n : ℕ} (hn : n ≤ 1200000) :
    Encloses (signalBoundsFromRotations sinTable cosTable n) (primeSignal 2 (n : ℝ)) := by
  unfold signalBoundsFromRotations primeSignal
  rw [activePrimePowers_two]
  apply sum_sound
  intro q hq
  obtain ⟨hq₁,hq₂⟩ := Finset.mem_Icc.mp hq
  exact mul_sound (primeWeightBounds_sound hq)
    (observed_sound (primeRotation_sound sinTable cosTable hTable (by omega) hq₂ hn).1)

/-- The physical prime diagonal keeps the sine term and the cosine coefficient. -/
def diagonalBoundsFromRotations (sinTable cosTable : ℤ → ℚ) (n : ℕ) : Bounds :=
  sum (Finset.Icc 2 54) fun q =>
    let r := rotationCenter sinTable cosTable (primePhaseCenter q n)
    mul (primeWeightBounds q)
      (add (mul (sub (point 2) (scale (1/2) (logBounds q))) (observed r.2))
        (mul (observed r.1) (scale (1 / (n : ℚ)) RadiusTwoRemoteScalars.piInvBounds)))

theorem diagonalBoundsFromRotations_sound (sinTable cosTable : ℤ → ℚ)
    (hTable : TableSound sinTable cosTable) {n : ℕ} (hn : 0 < n) (hn' : n ≤ 1200000) :
    Encloses (diagonalBoundsFromRotations sinTable cosTable n)
      (∑ q ∈ activePrimePowers 2, primeWeight q * sineShiftEntry 2 n n (Real.log q)) := by
  rw [primeShiftSum_two_diagonal n hn]
  unfold diagonalBoundsFromRotations
  apply sum_sound
  intro q hq
  obtain ⟨hq₁,hq₂⟩ := Finset.mem_Icc.mp hq
  obtain ⟨hs,hc⟩ := primeRotation_sound sinTable cosTable hTable (by omega) hq₂ hn'
  have h := mul_sound (primeWeightBounds_sound hq)
    (add_sound (mul_sound (sub_sound (point_sound 2)
      (scale_sound (1/2) (logBounds_sound (by omega : 0 < q) hq₂))) (observed_sound hc))
      (mul_sound (observed_sound hs) (scale_sound (1 / (n : ℚ))
        RadiusTwoRemoteScalars.piInvBounds_sound)))
  convert h using 2
  push_cast
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

private def onGrid (x : ℚ) : ℚ := (⌊(2 : ℚ)^50 * x⌋ : ℤ) / (2 : ℚ)^50

private theorem abs_sub_onGrid_le (x : ℚ) :
    |(x : ℝ) - (onGrid x : ℝ)| ≤ 1 / (2 : ℝ)^50 := by
  have hL := (Rat.cast_le (K := ℝ)).2 (Int.floor_le ((2 : ℚ)^50 * x))
  have hU := (Rat.cast_lt (K := ℝ)).2 (Int.lt_floor_add_one ((2 : ℚ)^50 * x))
  push_cast at hL hU
  have hp : 0 < (2 : ℝ)^50 := by positivity
  unfold onGrid
  push_cast
  rw [abs_le]
  constructor
  · have h : ((⌊(2 : ℚ)^50 * x⌋ : ℤ) : ℝ) / (2 : ℝ)^50 ≤ (x : ℝ) :=
      (div_le_iff₀ hp).2 (by simpa only [mul_comm] using hL)
    linarith
  · rw [sub_le_iff_le_add, ← add_div]
    exact ((lt_div_iff₀ hp).2 (by simpa only [Int.cast_add, Int.cast_one, add_comm, mul_comm] using hU)).le

/-- Exact dyadic anchor sine on the shared 50-bit grid. -/
def canonicalSin (i : ℤ) : ℚ := onGrid (UnitWindowPrimeTrig.sinHatGrid ((i : ℚ) / 8192))

/-- Exact dyadic anchor cosine on the same grid. -/
def canonicalCos (i : ℤ) : ℚ := onGrid (UnitWindowPrimeTrig.cosHat ((i : ℚ) / 8192))

theorem canonicalTable_sound : TableSound canonicalSin canonicalCos := by
  intro i _ _
  let c : ℚ := (i : ℚ) / 8192
  obtain ⟨hs,hc⟩ := UnitWindowPrimeTrig.trig_observation c
    (show |(c : ℝ) - (c : ℝ)| ≤ (0 : ℝ) by simp)
  have hAngle : Real.pi * (c : ℝ) = Real.pi * (i : ℝ) / 8192 := by
    unfold c
    push_cast
    ring
  rw [hAngle] at hs hc
  constructor
  · unfold canonicalSin
    refine (abs_sub_le _ (UnitWindowPrimeTrig.sinHatGrid c : ℝ) _).trans ?_
    have hs' := abs_sub_onGrid_le (UnitWindowPrimeTrig.sinHatGrid c)
    rw [UnitWindowPrimeTrig.sinHatGrid_eq] at hs' ⊢
    exact (add_le_add hs hs').trans (by norm_num)
  · unfold canonicalCos
    refine (abs_sub_le _ (UnitWindowPrimeTrig.cosHat c : ℝ) _).trans ?_
    exact (add_le_add hc (abs_sub_onGrid_le _)).trans (by norm_num)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPrimeSeedTrig
