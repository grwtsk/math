/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Data.Nat.Log
import Mathlib.Data.Nat.Prime.Factorial
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

/-!
# From a uniform Chebyshev band bound to the half-scale estimate

The scale at least doubles between consecutive powers of four. Induction
bounds the deficit at each band endpoint, and the final partial band gives
the same estimate at an arbitrary integer. The finite anchor at `4^7`
is certified by a primorial comparison and logarithm inequalities.

`BandBound` remains a hypothesis. The companion Cryptids module uses the
result for the large-checkpoint branch of the 95-state machine.
-/

namespace GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ChebyshevBand

namespace FiniteAnchor

open Finset
set_option maxHeartbeats 0
set_option maxRecDepth 50000
set_option exponentiation.threshold 25000

-- The literal is verified once so each primality test can reuse it.
private def factorial128 : ℕ := 385620482362580421735677065923463640617493109590223590278828403276373402575165543560686168588507361534030051833058916347592172932262498857766114955245039357760034644709279247692495585280000000000000000000000000000000

private theorem factorial128_correct : Nat.factorial 128 = factorial128 := by decide

-- For 128 < n ≤ 16384, a composite n has a prime factor at most 128.
private def primeTest (n : ℕ) : Bool :=
  if n ≤ 128 then decide (Nat.Prime n) else decide (Nat.gcd n factorial128 = 1)

private theorem primeTest_iff {n : ℕ} (hn : n ≤ 16384) :
    primeTest n = true ↔ Nat.Prime n := by
  unfold primeTest
  split
  · simp only [decide_eq_true_eq]
  next h128 =>
    rw [decide_eq_true_eq, ← factorial128_correct]
    change Nat.Coprime n (Nat.factorial 128) ↔ Nat.Prime n
    constructor
    · intro h
      by_contra hnot
      have hmin : 128 < Nat.minFac n :=
        (Nat.coprime_factorial_iff (by omega : n ≠ 1)).mp h
      have hsq := Nat.minFac_sq_le_self (by omega : 0 < n) hnot
      have hle : Nat.minFac n ≤ Nat.sqrt n :=
        Nat.le_sqrt.mpr (by simpa [pow_two] using hsq)
      have hs : Nat.sqrt n < 129 := Nat.sqrt_lt.mpr (by omega)
      omega
    · exact fun hp => hp.coprime_factorial_of_lt (by omega)

private def intervalPrimeProduct (a b : ℕ) : ℕ := ∏ p ∈ Ico a b, if primeTest p then p else 1

private theorem intervalPrimeProduct_split {a b c : ℕ} (ha : a ≤ b) (hb : b ≤ c) :
    intervalPrimeProduct a c = intervalPrimeProduct a b * intervalPrimeProduct b c := by
  unfold intervalPrimeProduct
  exact (Finset.prod_Ico_consecutive _ ha hb).symm

-- Splitting the product in half keeps the depth of kernel reduction small.
private def balancedPrimeProduct (a : ℕ) : ℕ → ℕ
  | 0 => if primeTest a then a else 1
  | k+1 => balancedPrimeProduct a k * balancedPrimeProduct (a + 2^k) k

private theorem balancedPrimeProduct_eq (a k : ℕ) :
    balancedPrimeProduct a k = intervalPrimeProduct a (a+2^k) := by
  induction k generalizing a with
  | zero => simp [balancedPrimeProduct, intervalPrimeProduct]
  | succ k ih =>
    rw [balancedPrimeProduct, ih, ih, pow_succ, Nat.mul_two, ← Nat.add_assoc]
    exact (intervalPrimeProduct_split (Nat.le_add_right a (2^k))
      (Nat.le_add_right (a+2^k) (2^k))).symm

private theorem primorial_eq_balancedProduct : primorial 16384 = balancedPrimeProduct 0 14 := by
  rw [balancedPrimeProduct_eq]
  have he : primorial 16384 = primorial 16383 :=
    primorial_succ (n := 16383) (by decide) ⟨8191, by decide⟩
  rw [he, primorial, Finset.prod_filter]
  unfold intervalPrimeProduct
  rw [Nat.Ico_zero_eq_range]
  apply Finset.prod_congr
  · rw [show 0 + 2 ^ 14 = 16383 + 1 by decide]
  · intro x hx
    rw [Finset.mem_range] at hx
    have h := primeTest_iff (n:=x) (by omega)
    by_cases hp : Nat.Prime x
    · simp [hp, h.mpr hp]
    · have hfast : primeTest x ≠ true := fun hf => hp (h.mp hf)
      simp [hp, hfast]

private theorem certify_balancedProduct : 17 * 2 ^ 23451 ≤ 16 * balancedPrimeProduct 0 14 := by decide

private theorem primorial_lower_certificate : 17 * 2 ^ 23451 ≤ 16 * primorial 16384 := by
  rw [primorial_eq_balancedProduct]
  exact certify_balancedProduct

theorem theta_anchor : (16384:ℝ) - Chebyshev.theta 16384 < 129 := by
  have hratio : (2:ℝ)^23451 * (17/16) ≤ (primorial 16384:ℝ) := by
    calc
      (2:ℝ)^23451 * (17/16) = (17*(2:ℝ)^23451)/16 := by
        rw [← mul_div_assoc, mul_comm ((2:ℝ)^23451) 17]
      _ ≤ _ := (div_le_iff₀ (by norm_num)).2 (by
        rw [mul_comm (primorial 16384:ℝ) 16]
        exact_mod_cast primorial_lower_certificate)
  have h1 : (2:ℝ)^23451 * (17/16) ∈ Set.Ioi (0:ℝ) := by
    rw [Set.mem_Ioi]
    positivity
  have h2 : (primorial 16384:ℝ) ∈ Set.Ioi (0:ℝ) := by
    rw [Set.mem_Ioi]
    exact_mod_cast primorial_pos 16384
  have hlog := Real.strictMonoOn_log.monotoneOn h1 h2 hratio
  rw [Real.log_mul (by positivity) (by positivity), Real.log_pow] at hlog
  have hfrac := Real.one_sub_inv_le_log_of_pos (by norm_num : 0 < (17/16:ℝ))
  have hfrac' : (1/17:ℝ) ≤ Real.log (17/16) := by
    convert hfrac using 1
    norm_num
  have htwo := Real.log_two_gt_d9
  have htheta : Chebyshev.theta 16384 = Real.log (primorial 16384) := by
    rw [show (16384:ℝ) = ((16384:ℕ):ℝ) by norm_num,
      Chebyshev.theta_eq_log_primorial, Nat.floor_natCast]
  rw [htheta]
  have hnum : (16255:ℝ) < (23451:ℝ) * 0.6931471803 + 1/17 := by norm_num
  linarith only [hlog, hfrac', htwo, hnum]

end FiniteAnchor

noncomputable def deficit (n : ℕ) : ℝ :=
  (n : ℝ) - Chebyshev.theta n

noncomputable def scale (n : ℕ) : ℝ :=
  Real.sqrt n * (Real.log n) ^ 2

/-- Uniform one-sided loss of the actual prime logarithm mass on each
integer prefix of a power-of-four band. -/
def BandBound : Prop :=
  ∀ j : ℕ, 7 ≤ j → ∀ n : ℕ, (4 : ℕ) ^ j ≤ n → n ≤ 4 ^ (j + 1) →
    deficit n - deficit (4 ^ j) ≤ (1 / 6 : ℝ) * scale (4 ^ j)

private theorem sqrt_four_pow (j : ℕ) :
    Real.sqrt (((4 : ℕ) ^ j : ℕ) : ℝ) = (2 : ℝ) ^ j := by
  rw [Nat.cast_pow, Nat.cast_ofNat, show (4 : ℝ) = 2 ^ 2 by norm_num,
    pow_right_comm (2 : ℝ) 2 j, Real.sqrt_sq (by positivity)]

private theorem log_sq_mono {a b : ℕ} (ha : 1 ≤ a) (hab : a ≤ b) :
    (Real.log (a : ℝ)) ^ 2 ≤ (Real.log (b : ℝ)) ^ 2 := by
  have ha' : (1 : ℝ) ≤ (a : ℝ) := by exact_mod_cast ha
  have hab' : (a : ℝ) ≤ (b : ℝ) := by exact_mod_cast hab
  exact pow_le_pow_left₀ (Real.log_nonneg ha')
    (Real.log_le_log (by linarith) hab') 2

private theorem scale_mono {a b : ℕ} (ha : 1 ≤ a) (hab : a ≤ b) :
    scale a ≤ scale b := by
  unfold scale
  exact mul_le_mul (Real.sqrt_le_sqrt (by exact_mod_cast hab))
    (log_sq_mono ha hab) (sq_nonneg _) (Real.sqrt_nonneg _)

private theorem scale_double (j : ℕ) :
    2 * scale (4 ^ j) ≤ scale (4 ^ (j + 1)) := by
  have hpos : 0 < (4 : ℕ) ^ j := pow_pos (by decide) _
  have hle : (4 : ℕ) ^ j ≤ 4 ^ (j + 1) :=
    Nat.pow_le_pow_right (by decide) (Nat.le_succ j)
  have hlog := log_sq_mono hpos hle
  unfold scale
  rw [sqrt_four_pow, sqrt_four_pow, pow_succ (2 : ℝ), ← mul_assoc, mul_comm (2 : ℝ)]
  exact mul_le_mul_of_nonneg_left hlog (by positivity)

private theorem half_bound_of_anchor (band : BandBound)
    (anchor : deficit (4 ^ 7) ≤ (1 / 6 : ℝ) * scale (4 ^ 7))
    {n : ℕ} (hn : 4 ^ 7 ≤ n) :
    deficit n ≤ (1 / 2 : ℝ) * scale n := by
  have endpoint : ∀ j : ℕ, 7 ≤ j →
      deficit (4 ^ j) - deficit (4 ^ 7) ≤ (1 / 6 : ℝ) * scale (4 ^ j) := by
    intro j hj
    induction j, hj using Nat.le_induction with
    | base =>
      rw [sub_self]
      unfold scale
      positivity
    | succ j hj ih =>
      have hle : (4 : ℕ) ^ j ≤ 4 ^ (j + 1) :=
        Nat.pow_le_pow_right (by decide) (Nat.le_succ j)
      have hstep := band j hj (4 ^ (j + 1)) hle le_rfl
      have hd := scale_double j
      linarith
  let k := Nat.log 4 n
  have hn0 : n ≠ 0 := by omega
  have hk7 : 7 ≤ k := Nat.le_log_of_pow_le (by decide) hn
  have hk : 4 ^ k ≤ n := Nat.pow_log_le_self 4 hn0
  have hk' : n ≤ 4 ^ (k + 1) :=
    (Nat.lt_pow_succ_log_self (by decide : 1 < (4 : ℕ)) n).le
  have hpart := band k hk7 n hk hk'
  have hend := endpoint k hk7
  have hkpos : 0 < (4 : ℕ) ^ k := pow_pos (by decide) _
  have hscale := scale_mono hkpos hk
  have hanchor := scale_mono (by decide : 1 ≤ (4 : ℕ) ^ 7) hn
  calc
    deficit n ≤ deficit (4 ^ 7) + (1 / 3 : ℝ) * scale (4 ^ k) := by
      linarith only [hpart, hend]
    _ ≤ (1 / 2 : ℝ) * scale n := by
      have ha : deficit (4 ^ 7) ≤ (1 / 6 : ℝ) * scale n :=
        anchor.trans (mul_le_mul_of_nonneg_left hanchor (by norm_num))
      have hb : (1 / 3 : ℝ) * scale (4 ^ k) ≤ (1 / 3 : ℝ) * scale n :=
        mul_le_mul_of_nonneg_left hscale (by norm_num)
      linarith only [ha, hb]

private theorem anchor_bound :
    deficit (4 ^ 7) ≤ (1 / 6 : ℝ) * scale (4 ^ 7) := by
  have he : deficit (4 ^ 7) < 129 := FiniteAnchor.theta_anchor
  have hsqrt : Real.sqrt (((4 : ℕ) ^ 7 : ℕ) : ℝ) = 128 := by
    rw [sqrt_four_pow]
    norm_num
  have hlog : (28 / 3 : ℝ) ≤ Real.log (((4 : ℕ) ^ 7 : ℕ) : ℝ) := by
    change (28 / 3 : ℝ) ≤ Real.log 16384
    rw [show (16384 : ℝ) = 2 ^ 14 by norm_num, Real.log_pow]
    norm_num only [Nat.cast_ofNat]
    linarith [Real.log_two_gt_d9]
  have hsq := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 28 / 3) hlog 2
  unfold scale
  rw [hsqrt]
  exact he.le.trans (calc
    (129 : ℝ) ≤ (1 / 6 : ℝ) * (128 * ((28 / 3 : ℝ) ^ 2)) := by norm_num
    _ ≤ _ := mul_le_mul_of_nonneg_left
      (mul_le_mul_of_nonneg_left hsq (by norm_num)) (by norm_num))

/-- An all-band hypothesis controls the original Chebyshev function at every
integer at or above the certified base point. -/
theorem half_bound (band : BandBound) {n : ℕ} (hn : 4 ^ 7 ≤ n) :
    deficit n ≤ (1 / 2 : ℝ) * scale n :=
  half_bound_of_anchor band anchor_bound hn

end GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ChebyshevBand
