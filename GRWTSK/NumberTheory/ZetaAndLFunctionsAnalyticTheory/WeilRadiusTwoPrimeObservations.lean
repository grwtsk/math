/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoEntryIdentities
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowPrimeTrig
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RationalRealBounds

/-!
# Rational prime observations for the radius-two odd window

Dyadic argument reduction and the convergent logarithm series enclose
all logarithms in the radius-two inventory. Integer square-root brackets
and the actual von Mangoldt prime-power condition enclose the weights.
The radius-one trigonometric observation theorem applies to the scaled
phase `n log(q) / 2` and retains both signs. The signed scalar signal and
the exact equal-mode shift give outward rational prime endpoints for
head, residual, and remote formulas. Independent mathematical review
and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPrimeObservations

open ArithmeticFunction LowSchur OddRootProjection OddOutputTrace OddPrimeRow
open RadiusTwoEntryIdentities RadiusTwoPrimeNorm
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds

private def centered (c r : ℚ) : Bounds := (c - r, c + r)

private theorem centered_sound {c r : ℚ} {x : ℝ} (h : |x - (c : ℝ)| ≤ (r : ℝ)) :
    Encloses (centered c r) x := by
  simp only [Encloses, centered, Rat.cast_sub, Rat.cast_add]
  rw [abs_le] at h
  exact ⟨by linarith [h.1], by linarith [h.2]⟩

private def logOneMinusHat (x : ℚ) : ℚ :=
  -(∑ i ∈ Finset.range 60, x ^ (i + 1) / (i + 1 : ℕ))

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

private def logTwoHat : ℚ := -logOneMinusHat (1 / 2)

private theorem logTwo_error : |Real.log 2 - (logTwoHat : ℝ)| ≤ 1 / (2 : ℝ) ^ 60 := by
  have h := logOneMinus_error (x := 1 / 2) (by norm_num) (by norm_num)
  have hEq : Real.log 2 - (logTwoHat : ℝ) =
      -(Real.log (1 - ((1 / 2 : ℚ) : ℝ)) - (logOneMinusHat (1 / 2) : ℝ)) := by
    rw [logTwoHat, Rat.cast_neg, show 1 - ((1 / 2 : ℚ) : ℝ) = (2 : ℝ)⁻¹ by norm_num,
      Real.log_inv]
    ring
  rw [hEq, abs_neg]
  exact h

private def logScale (q : ℕ) : ℕ := Nat.log 2 q + 1
private def logFraction (q : ℕ) : ℚ := 1 - (q : ℚ) / 2 ^ logScale q

private def logHatRaw (q : ℕ) : ℚ := logOneMinusHat (logFraction q) + (logScale q : ℚ) * logTwoHat

/-- A dyadic logarithm center with the reduction scale chosen from the argument. -/
def logHat (q : ℕ) : ℚ := (⌊(2 : ℚ) ^ (64 : ℕ) * logHatRaw q⌋ : ℤ) / (2 : ℚ) ^ (64 : ℕ)

private def logRadius : ℚ := 1 / 10 ^ (17 : ℕ)

private theorem abs_log_sub_logHatRaw_le {q : ℕ} (hq : 0 < q) (hq' : q ≤ 54) :
    |Real.log (q : ℝ) - (logHatRaw q : ℝ)| ≤ 7 / (2 : ℝ) ^ (60 : ℕ) := by
  have hqLo : (2 : ℚ) ^ Nat.log 2 q ≤ q := by
    exact_mod_cast Nat.pow_log_le_self 2 hq.ne'
  have hqHi : (q : ℚ) ≤ 2 ^ logScale q := by
    exact_mod_cast (Nat.lt_pow_succ_log_self (by decide : 1 < 2) q).le
  have hp : logScale q ≤ 6 := by
    have h := (Nat.log_lt_iff_lt_pow (by decide : 1 < 2) hq.ne').2 (show q < 2 ^ 6 by omega)
    unfold logScale
    omega
  have hpR : (logScale q : ℝ) ≤ 6 := by exact_mod_cast hp
  have hx : 0 ≤ logFraction q := by
    unfold logFraction
    exact sub_nonneg.mpr ((div_le_one (by positivity)).mpr hqHi)
  have hx' : logFraction q ≤ 1 / 2 := by
    unfold logFraction
    have h : (1 / 2 : ℚ) ≤ (q : ℚ) / 2 ^ logScale q := by
      apply (le_div_iff₀ (by positivity)).2
      rw [logScale, pow_succ]
      linarith only [hqLo]
    linarith
  have hxR : (logFraction q : ℝ) ≤ 1 / 2 := by
    simpa only [Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] using (Rat.cast_le (K := ℝ)).2 hx'
  have hqEq : (q : ℝ) = (1 - (logFraction q : ℝ)) * 2 ^ logScale q := by
    simp only [logFraction, Rat.cast_sub, Rat.cast_one, Rat.cast_div, Rat.cast_natCast,
      Rat.cast_pow, Rat.cast_ofNat, sub_sub_cancel]
    symm
    exact div_mul_cancel₀ (q : ℝ) (pow_ne_zero _ (by norm_num : (2 : ℝ) ≠ 0))
  have hLog : Real.log (q : ℝ) =
      Real.log (1 - (logFraction q : ℝ)) + (logScale q : ℝ) * Real.log 2 := by
    rw [hqEq, Real.log_mul (by linarith) (by positivity), Real.log_pow]
  rw [hLog]
  push_cast [logHatRaw]
  rw [show Real.log (1 - (logFraction q : ℝ)) + (logScale q : ℝ) * Real.log 2 -
      ((logOneMinusHat (logFraction q) : ℝ) + (logScale q : ℝ) * (logTwoHat : ℝ)) =
      (Real.log (1 - (logFraction q : ℝ)) - (logOneMinusHat (logFraction q) : ℝ)) +
        (logScale q : ℝ) * (Real.log 2 - (logTwoHat : ℝ)) by ring]
  refine (abs_add_le _ _).trans ?_
  rw [abs_mul, abs_of_nonneg (Nat.cast_nonneg (α := ℝ) (logScale q))]
  exact (add_le_add (logOneMinus_error hx hx')
    (mul_le_mul hpR logTwo_error (abs_nonneg _) (by norm_num))).trans (by ring_nf; norm_num)

private theorem abs_logHatRaw_sub_logHat_le (q : ℕ) :
    |(logHatRaw q : ℝ) - (logHat q : ℝ)| ≤ 1 / (2 : ℝ) ^ (64 : ℕ) := by
  let y := (2 : ℚ) ^ (64 : ℕ) * logHatRaw q
  have hLo := (Rat.cast_le (K := ℝ)).2 (Int.floor_le y)
  have hHi := (Rat.cast_lt (K := ℝ)).2 (Int.lt_floor_add_one y)
  simp only [y, Rat.cast_intCast, Rat.cast_add, Rat.cast_one, Rat.cast_mul, Rat.cast_pow,
    Rat.cast_ofNat] at hLo hHi
  have hGrid : 0 < (2 : ℝ) ^ (64 : ℕ) := by positivity
  simp only [logHat, Rat.cast_div, Rat.cast_intCast, Rat.cast_pow, Rat.cast_ofNat]
  change |(logHatRaw q : ℝ) - ((⌊y⌋ : ℤ) : ℝ) / (2 : ℝ) ^ (64 : ℕ)| ≤ _
  rw [abs_of_nonneg (sub_nonneg.mpr ((div_le_iff₀ hGrid).2 (by simpa only [mul_comm] using hLo)))]
  apply (le_div_iff₀ hGrid).2
  rw [sub_mul, div_mul_cancel₀ _ hGrid.ne']
  linarith only [hHi]

theorem abs_log_sub_logHat_le {q : ℕ} (hq : 0 < q) (hq' : q ≤ 54) :
    |Real.log (q : ℝ) - (logHat q : ℝ)| ≤ (logRadius : ℝ) :=
  (abs_sub_le _ (logHatRaw q : ℝ) _).trans <|
    (add_le_add (abs_log_sub_logHatRaw_le hq hq') (abs_logHatRaw_sub_logHat_le q)).trans (by
      norm_num [logRadius])

def logBounds (q : ℕ) : Bounds := centered (logHat q) logRadius

theorem logBounds_sound {q : ℕ} (hq : 0 < q) (hq' : q ≤ 54) :
    Encloses (logBounds q) (Real.log (q : ℝ)) := centered_sound (abs_log_sub_logHat_le hq hq')

private def sqrtGrid : ℕ := 10 ^ 18
private def sqrtNumerator (q : ℕ) : ℕ := Nat.sqrt (q * sqrtGrid ^ 2)

def sqrtBounds (q : ℕ) : Bounds :=
  ((sqrtNumerator q : ℚ) / sqrtGrid, ((sqrtNumerator q + 1 : ℕ) : ℚ) / sqrtGrid)

private theorem sqrtBounds_lo_pos {q : ℕ} (hq : 0 < q) : 0 < ((sqrtBounds q).1 : ℝ) := by
  have hp : 0 < sqrtNumerator q := Nat.sqrt_pos.mpr (Nat.mul_pos hq (by norm_num [sqrtGrid]))
  simp only [sqrtBounds, Rat.cast_div, Rat.cast_natCast]
  exact div_pos (by exact_mod_cast hp) (by norm_num [sqrtGrid])

theorem sqrtBounds_sound (q : ℕ) : Encloses (sqrtBounds q) (Real.sqrt (q : ℝ)) := by
  have h₁ : (sqrtNumerator q : ℝ) ^ 2 ≤ (q : ℝ) * (sqrtGrid : ℝ) ^ 2 := by
    exact_mod_cast Nat.sqrt_le' (q * sqrtGrid ^ 2)
  have h₂ : (q : ℝ) * (sqrtGrid : ℝ) ^ 2 ≤ ((sqrtNumerator q : ℝ) + 1) ^ 2 := by
    exact_mod_cast (Nat.lt_succ_sqrt' (q * sqrtGrid ^ 2)).le
  have hGrid : 0 < (sqrtGrid : ℝ) := by norm_num [sqrtGrid]
  simp only [Encloses, sqrtBounds, Rat.cast_div, Rat.cast_natCast, Nat.cast_add, Nat.cast_one]
  constructor
  · apply Real.le_sqrt_of_sq_le
    rw [div_pow, div_le_iff₀ (by positivity)]
    exact h₁
  · apply (Real.sqrt_le_left (by positivity)).2
    rw [div_pow, le_div_iff₀ (by positivity)]
    exact_mod_cast h₂

def primeWeightBounds (q : ℕ) : Bounds :=
  if IsPrimePow q then mul (logBounds q.minFac) (inv (sqrtBounds q)) else point 0

theorem primeWeightBounds_sound {q : ℕ} (hq : q ∈ Finset.Icc 2 54) :
    Encloses (primeWeightBounds q) (primeWeight q) := by
  obtain ⟨hq₁, hq₂⟩ := Finset.mem_Icc.mp hq
  have hq₀ : 0 < q := by omega
  unfold primeWeightBounds primeWeight
  rw [vonMangoldt_apply]
  split_ifs with hp
  · rw [div_eq_mul_inv]
    exact mul_sound (logBounds_sound (Nat.minFac_pos q) ((Nat.minFac_le hq₀).trans hq₂))
      (inv_sound (sqrtBounds_sound q) (sqrtBounds_lo_pos hq₀))
  · simpa only [zero_div, Rat.cast_zero] using point_sound (0 : ℚ)

private def weighted (q : ℕ) (a : Unit → Bounds) : Bounds :=
  if IsPrimePow q then mul (primeWeightBounds q) (a ()) else point 0

private theorem weighted_sound {q : ℕ} (hq : q ∈ Finset.Icc 2 54) {a : Unit → Bounds} {x : ℝ}
    (ha : Encloses (a ()) x) : Encloses (weighted q a) (primeWeight q * x) := by
  unfold weighted
  split_ifs with hp
  · exact mul_sound (primeWeightBounds_sound hq) ha
  · have hw : primeWeight q = 0 := by simp [primeWeight, vonMangoldt_apply, hp]
    rw [hw, zero_mul]
    simpa only [Rat.cast_zero] using point_sound (0 : ℚ)

private def phaseHat (q n : ℕ) : ℚ := (n : ℚ) / 2 * logHat q
private def phaseRadius (n : ℕ) : ℚ := 4 * ((n : ℚ) / 2 * logRadius) + 1 / 10 ^ (14 : ℕ)

def sineBounds (q n : ℕ) : Bounds := centered (UnitWindowPrimeTrig.sinHat (phaseHat q n)) (phaseRadius n)
def cosineBounds (q n : ℕ) : Bounds := centered (UnitWindowPrimeTrig.cosHat (phaseHat q n)) (phaseRadius n)

theorem trigBounds_sound {q : ℕ} (hq : q ∈ Finset.Icc 2 54) (n : ℕ) :
    Encloses (sineBounds q n) (Real.sin (frequency 2 n * Real.log q)) ∧
    Encloses (cosineBounds q n) (Real.cos (frequency 2 n * Real.log q)) := by
  obtain ⟨hq₁, hq₂⟩ := Finset.mem_Icc.mp hq
  have hPhase : |(n : ℝ) / 2 * Real.log q - (phaseHat q n : ℝ)| ≤
      (n : ℝ) / 2 * (logRadius : ℝ) := by
    push_cast [phaseHat]
    rw [← mul_sub, abs_mul, abs_of_nonneg (by positivity : 0 ≤ (n : ℝ) / 2)]
    exact mul_le_mul_of_nonneg_left (abs_log_sub_logHat_le (by omega) hq₂) (by positivity)
  obtain ⟨hs, hc⟩ := UnitWindowPrimeTrig.trig_observation (phaseHat q n) hPhase
  have hArg : frequency 2 n * Real.log q = Real.pi * ((n : ℝ) / 2 * Real.log q) := by
    unfold frequency
    ring
  rw [hArg]
  exact ⟨centered_sound (by simpa only [phaseRadius, Rat.cast_add, Rat.cast_mul, Rat.cast_div,
    Rat.cast_natCast, Rat.cast_ofNat, Rat.cast_pow, Rat.cast_one] using hs),
    centered_sound (by simpa only [phaseRadius, Rat.cast_add, Rat.cast_mul, Rat.cast_div,
      Rat.cast_natCast, Rat.cast_ofNat, Rat.cast_pow, Rat.cast_one] using hc)⟩

def primeSignalBounds (bits n : ℕ) : Bounds :=
  round bits (sum (Finset.Icc 2 54) (fun q => weighted q (fun _ => sineBounds q n)))

theorem primeSignalBounds_sound (bits n : ℕ) :
    Encloses (primeSignalBounds bits n) (primeSignal 2 (n : ℝ)) := by
  unfold primeSignalBounds primeSignal
  rw [activePrimePowers_two]
  apply round_sound
  refine sum_sound _ fun q hq => ?_
  have hArg : Real.pi * (n : ℝ) / 2 * Real.log q = frequency 2 n * Real.log q := rfl
  rw [hArg]
  exact weighted_sound hq (trigBounds_sound hq n).1

/-- The signed prime divided difference from any supplied scalar signal table. -/
def primeOffDiagonalBoundsFrom (signal : ℕ → Bounds) (m n : ℕ) : Bounds :=
  scale ((2 * (-1 : ℚ) ^ (m + n)) / ((m : ℚ) ^ 2 - (n : ℚ) ^ 2))
    (mul (inv (3.14159265358979323846, 3.14159265358979323847))
      (sub (scale m (signal n)) (scale n (signal m))))

theorem primeOffDiagonalBoundsFrom_sound {signal : ℕ → Bounds} {m n : ℕ}
    (hm : 0 < m) (hn : 0 < n) (hmn : m ≠ n)
    (hM : Encloses (signal m) (primeSignal 2 (m : ℝ)))
    (hN : Encloses (signal n) (primeSignal 2 (n : ℝ))) :
    Encloses (primeOffDiagonalBoundsFrom signal m n)
      (∑ q ∈ activePrimePowers 2, primeWeight q * sineShiftEntry 2 m n (Real.log q)) := by
  have hPi : Encloses (3.14159265358979323846, 3.14159265358979323847) Real.pi :=
    ⟨by exact Real.pi_gt_d20.le, by exact Real.pi_lt_d20.le⟩
  have h := scale_sound ((2 * (-1 : ℚ) ^ (m + n)) / ((m : ℚ) ^ 2 - (n : ℚ) ^ 2))
    (mul_sound (inv_sound hPi (by norm_num))
      (sub_sound (scale_sound m hN) (scale_sound n hM)))
  rw [prime_shift_sum_off_diagonal 2 m n (by norm_num) hm hn hmn]
  unfold primeOffDiagonalBoundsFrom
  convert h using 1
  unfold oddPrimeRow primeRow
  push_cast
  simp only [div_eq_mul_inv]
  ring

/-- Outward rational enclosure of the distinct-mode prime entry. -/
def primeOffDiagonalBounds (bits m n : ℕ) : Bounds :=
  round bits (primeOffDiagonalBoundsFrom (primeSignalBounds bits) m n)

theorem primeOffDiagonalBounds_sound (bits : ℕ) {m n : ℕ}
    (hm : 0 < m) (hn : 0 < n) (hmn : m ≠ n) :
    Encloses (primeOffDiagonalBounds bits m n)
      (∑ q ∈ activePrimePowers 2, primeWeight q * sineShiftEntry 2 m n (Real.log q)) :=
  round_sound bits (primeOffDiagonalBoundsFrom_sound hm hn hmn
    (primeSignalBounds_sound bits m) (primeSignalBounds_sound bits n))

private def invPiModeBounds (n : ℕ) : Bounds :=
  inv (3.14159265358979323846 * (n : ℚ), 3.14159265358979323847 * (n : ℚ))

private theorem invPiModeBounds_sound {n : ℕ} (hn : 0 < n) :
    Encloses (invPiModeBounds n) (Real.pi * n)⁻¹ := by
  have hnR : (0 : ℝ) < n := by exact_mod_cast hn
  apply inv_sound
  · simp only [Encloses, Rat.cast_mul, Rat.cast_natCast]
    constructor
    · exact mul_le_mul_of_nonneg_right (by exact Real.pi_gt_d20.le) hnR.le
    · exact mul_le_mul_of_nonneg_right (by exact Real.pi_lt_d20.le) hnR.le
  · simp only [Rat.cast_mul, Rat.cast_natCast]
    positivity

/-- Outward rational enclosure of every literal radius-two prime diagonal. -/
def primeDiagonalBounds (bits n : ℕ) : Bounds :=
  round bits (sum (Finset.Icc 2 54) fun q => weighted q (fun _ =>
    add (mul (sub (point 2) (scale (1 / 2) (logBounds q))) (cosineBounds q n))
      (mul (sineBounds q n) (invPiModeBounds n))))

theorem primeDiagonalBounds_sound (bits : ℕ) {n : ℕ} (hn : 0 < n) :
    Encloses (primeDiagonalBounds bits n)
      (∑ q ∈ activePrimePowers 2, primeWeight q * sineShiftEntry 2 n n (Real.log q)) := by
  rw [primeShiftSum_two_diagonal n hn]
  apply round_sound
  refine sum_sound _ fun q hq => ?_
  obtain ⟨hq₁, hq₂⟩ := Finset.mem_Icc.mp hq
  obtain ⟨hs, hc⟩ := trigBounds_sound hq n
  have hl := scale_sound (1 / 2 : ℚ) (logBounds_sound (by omega : 0 < q) hq₂)
  have h := weighted_sound hq (a := fun _ =>
      add (mul (sub (point 2) (scale (1 / 2) (logBounds q))) (cosineBounds q n))
        (mul (sineBounds q n) (invPiModeBounds n)))
    (add_sound (mul_sound (sub_sound (point_sound (2 : ℚ)) hl) hc)
      (mul_sound hs (invPiModeBounds_sound hn)))
  push_cast at h
  rw [div_eq_mul_inv (Real.sin _) (Real.pi * n)]
  convert h using 2
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPrimeObservations
