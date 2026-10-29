/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.MeasureAndIntegration.PickupPrimeBlockEnergy

/-!
# Absolute stage-transfer bounds and the negative prime-5 block

All actual same-core overlaps retain their signs. The auxiliary bound retains
the inverse-square-root cost of the newly inserted prime. The explicit negative
block is certified with rational square-root bounds, not floating evaluation.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupPrimeBlockTransfer

open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion

/-- A stage-overlap estimate with explicit prime dependence, independent of its sign. -/
theorem gram_dilate_abs_le (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (p : ℕ) (hp : Nat.Prime p) {T : ℝ} (hT : 0 ≤ T)
    (m : ℕ) (hm : 1 ≤ m) :
    |gram P T m (p * m)| ≤
      factor P ^ 2 * (Real.sqrt (p : ℝ))⁻¹ * pickupResponseGram T m m := by
  have hm' : 1 ≤ p * m := by nlinarith [hp.two_le]
  have hc := block_continuous P hP ⌊Real.exp T⌋₊ m hm
  have hd := block_continuous P hP ⌊Real.exp T⌋₊ (p * m) hm'
  have hr := pickupResponse_continuous hm
  have hpoint (u : ℝ) :
      |block P ⌊Real.exp T⌋₊ m u * block P ⌊Real.exp T⌋₊ (p * m) u| ≤
        (factor P ^ 2 * (Real.sqrt (p : ℝ))⁻¹) *
          (pickupResponse m u * pickupResponse m u) := by
    have h1 := block_abs_le P hP ⌊Real.exp T⌋₊ m hm u
    have h2 := (block_abs_le P hP ⌊Real.exp T⌋₊ (p * m) hm' u).trans
      (mul_le_mul_of_nonneg_left (response_dilate_le hp.one_lt.le hm u)
        (factor_nonnegative P))
    have hh := mul_le_mul h1 h2 (abs_nonneg _)
      (mul_nonneg (factor_nonnegative P) (response_nonneg hm u))
    rw [abs_mul]
    convert hh using 1 <;> ring
  calc
    |gram P T m (p * m)| ≤ ∫ u in (0 : ℝ)..T,
        |block P ⌊Real.exp T⌋₊ m u * block P ⌊Real.exp T⌋₊ (p * m) u| :=
      intervalIntegral.abs_integral_le_integral_abs hT
    _ ≤ ∫ u in (0 : ℝ)..T, (factor P ^ 2 * (Real.sqrt (p : ℝ))⁻¹) *
        (pickupResponse m u * pickupResponse m u) :=
      intervalIntegral.integral_mono_on hT (((hc.mul hd).abs).intervalIntegrable _ _)
        ((continuous_const.mul (hr.mul hr)).intervalIntegrable _ _)
        (fun u _ => hpoint u)
    _ = _ := by rw [intervalIntegral.integral_const_mul]; rfl

/-- Full same-core prime transfer, with actual rough coefficients and no positivity premise. -/
theorem credit_abs_le (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (p : ℕ) (hp : Nat.Prime p) {T : ℝ} (hT : 0 ≤ T) :
    |credit P p T| ≤ factor P ^ 2 * (Real.sqrt (p : ℝ))⁻¹ * pickupDiagonal T := by
  unfold credit pickupDiagonal
  calc
    |∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        rough (p :: P) m ^ 2 * gram P T m (p * m)| ≤
      ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        |rough (p :: P) m ^ 2 * gram P T m (p * m)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        (factor P ^ 2 * (Real.sqrt (p : ℝ))⁻¹) *
          (moebiusReal m ^ 2 * pickupResponseGram T m m) := by
      apply Finset.sum_le_sum
      intro m hm
      have hm1 := (Finset.mem_Icc.mp hm).1
      have hg := responseGram_nonneg hm1 hm1 hT
      have hc0 : 0 ≤ factor P ^ 2 * (Real.sqrt (p : ℝ))⁻¹ :=
        mul_nonneg (sq_nonneg _) (inv_nonneg.mpr (Real.sqrt_nonneg _))
      rw [abs_mul, abs_of_nonneg (sq_nonneg _)]
      calc
        _ ≤ rough (p :: P) m ^ 2 *
            (factor P ^ 2 * (Real.sqrt (p : ℝ))⁻¹ * pickupResponseGram T m m) :=
          mul_le_mul_of_nonneg_left (gram_dilate_abs_le P hP p hp hT m hm1) (sq_nonneg _)
        _ ≤ moebiusReal m ^ 2 *
            (factor P ^ 2 * (Real.sqrt (p : ℝ))⁻¹ * pickupResponseGram T m m) :=
          mul_le_mul_of_nonneg_right (rough_sq_le (p :: P) m) (mul_nonneg hc0 hg)
        _ = _ := by ring
    _ = _ := by rw [← Finset.mul_sum]

/-- Two changes in the bookkeeping must never be counted as two independent savings. -/
theorem diagonal_step_abs_le (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (p : ℕ) (hp : Nat.Prime p) (hfresh : p ∉ P) {T : ℝ} (hT : 0 ≤ T) :
    |diagonal (p :: P) T - diagonal P T| ≤
      2 * factor P ^ 2 * (Real.sqrt (p : ℝ))⁻¹ * pickupDiagonal T := by
  rw [diagonal_step P hP p hp hfresh]
  have he : diagonal P T - 2 * credit P p T - diagonal P T = -2 * credit P p T := by ring
  rw [he, abs_mul]
  norm_num only [abs_neg, abs_ofNat]
  have hh := mul_le_mul_of_nonneg_left (credit_abs_le P hP p hp hT) (by norm_num : (0 : ℝ) ≤ 2)
  nlinarith


/-- Rational lower certificate for an inverse square root. -/
theorem inverse_sqrt_lower {n l : ℝ} (hn : 0 < n) (hl : 0 ≤ l)
    (hs : l^2 * n ≤ 1) : l ≤ (Real.sqrt n)⁻¹ := by
  have hx := Real.sqrt_pos.mpr hn
  have hsq := Real.sq_sqrt hn.le
  have hp : 0 ≤ l * Real.sqrt n := mul_nonneg hl hx.le
  have hh : (l * Real.sqrt n)^2 ≤ 1 := by rw [mul_pow, hsq]; exact hs
  have hb : l * Real.sqrt n ≤ 1 := by nlinarith
  simpa only [one_div] using (le_div_iff₀ hx).mpr hb

/-- Rational upper certificate for an inverse square root. -/
theorem inverse_sqrt_upper {n r : ℝ} (hn : 0 < n) (hr : 0 ≤ r)
    (hs : 1 ≤ r^2 * n) : (Real.sqrt n)⁻¹ ≤ r := by
  have hx := Real.sqrt_pos.mpr hn
  have hsq := Real.sq_sqrt hn.le
  have hp : 0 ≤ r * Real.sqrt n := mul_nonneg hr hx.le
  have hh : 1 ≤ (r * Real.sqrt n)^2 := by rw [mul_pow, hsq]; exact hs
  have hb : 1 ≤ r * Real.sqrt n := by nlinarith
  simpa only [one_div] using (div_le_iff₀ hx).mpr hb

/-- The user's negative prime-5 example is certified by exact rational inequalities. -/
theorem prime_five_expression_negative :
    2 * (1 - (Real.sqrt 2)⁻¹ - (Real.sqrt 3)⁻¹ - (Real.sqrt 5)⁻¹ +
      (Real.sqrt 6)⁻¹ + (Real.sqrt 10)⁻¹) < 0 := by
  have h2 : (707106 / 1000000 : ℝ) ≤ (Real.sqrt 2)⁻¹ :=
    inverse_sqrt_lower (by norm_num) (by norm_num) (by norm_num)
  have h3 : (577350 / 1000000 : ℝ) ≤ (Real.sqrt 3)⁻¹ :=
    inverse_sqrt_lower (by norm_num) (by norm_num) (by norm_num)
  have h5 : (447213 / 1000000 : ℝ) ≤ (Real.sqrt 5)⁻¹ :=
    inverse_sqrt_lower (by norm_num) (by norm_num) (by norm_num)
  have h6 : (Real.sqrt 6)⁻¹ ≤ (408249 / 1000000 : ℝ) :=
    inverse_sqrt_upper (by norm_num) (by norm_num) (by norm_num)
  have h10 : (Real.sqrt 10)⁻¹ ≤ (316228 / 1000000 : ℝ) :=
    inverse_sqrt_upper (by norm_num) (by norm_num) (by norm_num)
  linarith

theorem response_at_log {n N : ℕ} (hn : 1 ≤ n) (hN : 1 ≤ N) (hnN : n ≤ N) :
    pickupResponse n (Real.log (N : ℝ)) =
      2 * ((Real.sqrt (n : ℝ))⁻¹ - (Real.sqrt (N : ℝ))⁻¹) := by
  have hl : Real.log (n : ℝ) ≤ Real.log (N : ℝ) :=
    Real.log_le_log (by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn))
      (by exact_mod_cast hnN)
  rw [pickupResponse, if_pos hl,
    pickup_exp_negative_log_half hN]

/-- All eight divisor terms are represented; 15 and 30 vanish before birth. -/
theorem block_235_at_log_ten :
    block [5, 3, 2] 10 1 (Real.log 10) =
      2 * (1 - (Real.sqrt 2)⁻¹ - (Real.sqrt 3)⁻¹ - (Real.sqrt 5)⁻¹ +
        (Real.sqrt 6)⁻¹ + (Real.sqrt 10)⁻¹) := by
  have h1 := response_at_log (n := 1) (N := 10) (by norm_num) (by norm_num) (by norm_num)
  have h2 := response_at_log (n := 2) (N := 10) (by norm_num) (by norm_num) (by norm_num)
  have h3 := response_at_log (n := 3) (N := 10) (by norm_num) (by norm_num) (by norm_num)
  have h5 := response_at_log (n := 5) (N := 10) (by norm_num) (by norm_num) (by norm_num)
  have h6 := response_at_log (n := 6) (N := 10) (by norm_num) (by norm_num) (by norm_num)
  have h10 := response_at_log (n := 10) (N := 10) (by norm_num) (by norm_num) (by norm_num)
  norm_num [block, h1, h2, h3, h5, h6, h10]
  <;> ring

theorem block_235_negative : block [5, 3, 2] 10 1 (Real.log 10) < 0 := by
  rw [block_235_at_log_ten]
  exact prime_five_expression_negative

/-- A squared-difference identity that remains valid across a block sign change. -/
theorem signed_stage_square (a b : ℝ) : (a - b)^2 = a^2 + b^2 - 2 * a * b := by ring

end GRWTSK.NumberTheory.Moebius.PickupPrimeBlockTransfer
