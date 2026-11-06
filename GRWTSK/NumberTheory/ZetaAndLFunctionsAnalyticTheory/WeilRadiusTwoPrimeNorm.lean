/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddWeightedPrimeNorm
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimePrices
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
# An outward weighted prime row budget at radius two

The row is even in the spatial variable, so take `0 ≤ t ≤ 2`. With
`E = 739/100 > exp 2` and `k = floor (E * exp t)`, one has
`exp t ≥ max E k / E`. A positive shift by `log q` can be present only
if `q * max E k ≤ E²`. A negative shift can be present only if `q ≤ k`.
For weight `exp (5 * |t| / 16)`, the sixteenth powers of the corresponding
ratios are `q^5` for the positive shift, and `1/q^5` or
`q^5/(exp t)^10` for the negative shift, depending on which side of zero
the neighbor lies. The certified integer root bounds enclose all of these
possibilities in each of the 48 cells.

This bounds the prime term alone on the literal real `L²` support domain.
The gamma, boundary and scalar pole still use their own source estimates.
Independent analytical review is pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPrimeNorm

open LowSchur OddSineForm OddWeightedPrimeNorm RadiusTwoPrimePrices

private theorem exp_two_bounds : (738 / 100 : ℝ) < Real.exp 2 ∧ Real.exp 2 < 739 / 100 := by
  rw [show (2 : ℝ) = (2 : ℕ) * (1 : ℝ) by norm_num, Real.exp_nat_mul]
  constructor
  · nlinarith [Real.exp_one_gt_d9, sq_nonneg (Real.exp 1 - 2.7182818283)]
  · have h := pow_lt_pow_left₀ Real.exp_one_lt_d9 (Real.exp_pos 1).le (by decide : 2 ≠ 0)
    exact h.trans (by norm_num)

/-- The support cutoff retains every integer from 2 through 54, with
zero weight at integers that are not prime powers. -/
theorem activePrimePowers_two : activePrimePowers 2 = Finset.Icc 2 54 := by
  have hExp : (54 : ℝ) < Real.exp (2 * 2) ∧ Real.exp (2 * 2) < 55 := by
    rw [show (2 * 2 : ℝ) = (2 : ℕ) * (2 : ℝ) by norm_num, Real.exp_nat_mul]
    exact ⟨lt_trans (by norm_num : (54 : ℝ) < (738 / 100 : ℝ) ^ 2)
        (pow_lt_pow_left₀ exp_two_bounds.1 (by norm_num) (by decide)),
      (pow_lt_pow_left₀ exp_two_bounds.2 (Real.exp_pos 2).le (by decide)).trans (by norm_num)⟩
  ext q
  simp only [activePrimePowers, Finset.mem_filter, Finset.mem_range, Nat.lt_ceil,
    Finset.mem_Icc]
  constructor
  · intro h
    refine ⟨h.2.1, ?_⟩
    have hq : q < 55 := by exact_mod_cast h.1.trans hExp.2
    omega
  · rintro ⟨hq, hq'⟩
    have hlt := (show (q : ℝ) ≤ 54 by exact_mod_cast hq').trans_lt hExp.1
    exact ⟨hlt, hq, hlt⟩

private def cell (t : ℝ) : ℕ := ⌊(739 / 100 : ℝ) * Real.exp t⌋₊

private def baseNumerator (k : ℕ) : ℕ := max 739 (100 * k)

private theorem baseNumerator_pos (k : ℕ) : 0 < baseNumerator k :=
  (by decide : 0 < 739).trans_le (le_max_left _ _)

private theorem cell_mem {t : ℝ} (ht : 0 ≤ t) (ht' : t ≤ 2) : cell t ∈ Finset.Icc 7 54 := by
  have h1 := Real.one_le_exp_iff.mpr ht
  have h2 := (Real.exp_le_exp.mpr ht').trans_lt exp_two_bounds.2
  have hexp := Real.exp_pos t
  have hlow : (7 : ℝ) ≤ (739 / 100 : ℝ) * Real.exp t := by linarith
  have hhigh : (739 / 100 : ℝ) * Real.exp t < 55 := by linarith
  have hk : cell t < 55 := (Nat.floor_lt (by positivity)).2 (by exact hhigh)
  exact Finset.mem_Icc.mpr ⟨Nat.le_floor hlow, by omega⟩

private theorem cell_base_le_exp {t : ℝ} (ht : 0 ≤ t) :
    (baseNumerator (cell t) : ℝ) / 739 ≤ Real.exp t := by
  have h1 := Real.one_le_exp_iff.mpr ht
  have h2 : (cell t : ℝ) ≤ (739 / 100 : ℝ) * Real.exp t := Nat.floor_le (by positivity)
  apply (div_le_iff₀ (by norm_num : (0 : ℝ) < 739)).2
  push_cast [baseNumerator]
  exact max_le (by linarith) (by linarith)

private def plusNumerator (k q : ℕ) : ℕ :=
  if 100 * q * baseNumerator k ≤ 739 ^ 2 then ratioNumerator (q ^ 5) 1 else 0

private def minusNumerator (k q : ℕ) : ℕ :=
  if q ≤ k then max (ratioNumerator 1 (q ^ 5))
    (ratioNumerator (q ^ 5 * 739 ^ 10) (baseNumerator k ^ 10)) else 0

private theorem neighbor_plus_le {t : ℝ} (ht : 0 ≤ t) {q : ℕ} (hq : 2 ≤ q) :
    neighbor 2 (5 / 16) (Real.log q) t ≤ (plusNumerator (cell t) q : ℝ) / 10000 := by
  classical
  have hq0 : (0 : ℝ) < q := by exact_mod_cast (show 0 < q by omega)
  have hq1 : (1 : ℝ) ≤ q := by exact_mod_cast (show 1 ≤ q by omega)
  have hr := Real.log_nonneg hq1
  unfold neighbor
  split_ifs with hmem
  · have hExp := (Real.exp_le_exp.mpr hmem.2).trans exp_two_bounds.2.le
    rw [Real.exp_add, Real.exp_log hq0, mul_comm] at hExp
    have hbase := (mul_le_mul_of_nonneg_left (cell_base_le_exp ht) hq0.le).trans hExp
    have hProduct : (100 : ℝ) * q * baseNumerator (cell t) ≤ (739 : ℝ) ^ 2 := by
      have h := mul_le_mul_of_nonneg_left hbase (by norm_num : (0 : ℝ) ≤ 73900)
      linarith only [h]
    have hProductNat : 100 * q * baseNumerator (cell t) ≤ 739 ^ 2 := by exact_mod_cast hProduct
    simp only [plusNumerator, hProductNat, ite_true, abs_of_nonneg (add_nonneg ht hr),
      abs_of_nonneg ht, add_sub_cancel_left]
    apply ratio_le (by decide : 0 < 1)
    rw [← Real.exp_nat_mul, show (16 : ℕ) * ((5 / 16 : ℝ) * Real.log q) =
      (5 : ℕ) * Real.log q by norm_num; ring, Real.exp_nat_mul, Real.exp_log hq0]
    norm_num
  · positivity

private theorem neighbor_minus_le {t : ℝ} (ht : 0 ≤ t) {q : ℕ} (hq : 2 ≤ q) :
    neighbor 2 (5 / 16) (-Real.log q) t ≤ (minusNumerator (cell t) q : ℝ) / 10000 := by
  classical
  have hqNat : 0 < q := by omega
  have hq0 : (0 : ℝ) < q := by exact_mod_cast hqNat
  unfold neighbor
  split_ifs with hmem
  · have hlog : Real.log q ≤ t + 2 := by linarith [hmem.1]
    have hExp := Real.exp_le_exp.mpr hlog
    rw [Real.exp_log hq0, Real.exp_add] at hExp
    have hCell : q ≤ cell t := by
      apply Nat.le_floor
      rw [mul_comm]
      exact hExp.trans (mul_le_mul_of_nonneg_left exp_two_bounds.2.le (Real.exp_pos _).le)
    simp only [minusNumerator, hCell, ite_true, abs_of_nonneg ht]
    by_cases hsign : 0 ≤ t + -Real.log q
    · rw [abs_of_nonneg hsign, add_sub_cancel_left]
      have hpow : Real.exp ((5 / 16 : ℝ) * -Real.log q) ^ 16 ≤ ((1 : ℕ) : ℝ) / (q ^ 5 : ℕ) := by
        rw [← Real.exp_nat_mul, show (16 : ℕ) * ((5 / 16 : ℝ) * -Real.log q) =
          -((5 : ℕ) * Real.log q) by norm_num; ring,
          Real.exp_neg, Real.exp_nat_mul, Real.exp_log hq0]
        push_cast
        rw [one_div]
      refine (ratio_le (pow_pos hqNat 5) hpow).trans (div_le_div_of_nonneg_right ?_ (by norm_num))
      exact_mod_cast (le_max_left (ratioNumerator 1 (q ^ 5))
        (ratioNumerator (q ^ 5 * 739 ^ 10) (baseNumerator (cell t) ^ 10)))
    · rw [abs_of_neg (lt_of_not_ge hsign), show -(t + -Real.log q) - t = Real.log q - 2*t by ring]
      let b := baseNumerator (cell t)
      have hb : 0 < b := baseNumerator_pos _
      have hbR : 0 < (b : ℝ) := by exact_mod_cast hb
      have hbase : (b : ℝ) / 739 ≤ Real.exp t := cell_base_le_exp ht
      have hpow : Real.exp ((5 / 16 : ℝ) * (Real.log q - 2*t)) ^ 16 ≤
          ((q ^ 5 * 739 ^ 10 : ℕ) : ℝ) / (b ^ 10 : ℕ) := by
        rw [← Real.exp_nat_mul, show (16 : ℕ) * ((5 / 16 : ℝ) * (Real.log q - 2*t)) =
          (5 : ℕ) * Real.log q - (10 : ℕ) * t by norm_num; ring,
          Real.exp_sub, Real.exp_nat_mul, Real.exp_nat_mul, Real.exp_log hq0]
        calc
          _ ≤ (q : ℝ) ^ 5 / ((b : ℝ) / 739) ^ 10 :=
            div_le_div_of_nonneg_left (by positivity) (by positivity)
              (pow_le_pow_left₀ (by positivity) hbase 10)
          _ = _ := by
            push_cast
            rw [div_pow, div_div_eq_mul_div]
            norm_num
      refine (ratio_le (pow_pos hb 10) hpow).trans (div_le_div_of_nonneg_right ?_ (by norm_num))
      exact_mod_cast (le_max_right (ratioNumerator 1 (q ^ 5))
        (ratioNumerator (q ^ 5 * 739 ^ 10) (b ^ 10)))
  · positivity

private def cellBudget (k : ℕ) : ℕ :=
  ∑ q ∈ Finset.Icc 2 54, weightNumerator q * (plusNumerator k q + minusNumerator k q)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
private theorem checkedCellBudget : ∀ i : Fin 48, cellBudget (i.val + 7) ≤ 940000000 := by
  decide +kernel

private theorem rowMass_le_of_nonneg {t : ℝ} (ht : 0 ≤ t) (ht' : t ≤ 2) :
    rowMass 2 (5 / 16) t ≤ 47 / 5 := by
  have hk := Finset.mem_Icc.mp (cell_mem ht ht')
  let i : Fin 48 := ⟨cell t - 7, by omega⟩
  have hi : i.val + 7 = cell t := by dsimp [i]; omega
  have hbudget := checkedCellBudget i
  rw [hi] at hbudget
  unfold rowMass
  rw [activePrimePowers_two]
  calc
    _ ≤ ∑ q ∈ Finset.Icc 2 54,
        (weightNumerator q * (plusNumerator (cell t) q + minusNumerator (cell t) q) : ℕ) /
          (10000 : ℝ)^2 := by
      apply Finset.sum_le_sum
      intro q hq
      have hq2 := (Finset.mem_Icc.mp hq).1
      have hplus := neighbor_plus_le ht hq2
      have hminus := neighbor_minus_le ht hq2
      push_cast
      calc
        _ ≤ ((weightNumerator q : ℝ) / 10000) *
            (((plusNumerator (cell t) q : ℝ) + minusNumerator (cell t) q) / 10000) := by
          apply mul_le_mul (primeWeight_le q hq)
          · unfold orientations
            linarith only [hplus, hminus]
          · exact add_nonneg (neighbor_nonneg _ _ _ _) (neighbor_nonneg _ _ _ _)
          · positivity
        _ = _ := by ring
    _ = (cellBudget (cell t) : ℝ) / (10000 : ℝ)^2 := by
      simp only [cellBudget, Nat.cast_sum, Finset.sum_div]
    _ ≤ _ := by
      have h : (cellBudget (cell t) : ℝ) ≤ 940000000 := by exact_mod_cast hbudget
      linarith only [h]

/-- The outward weighted budget includes both orientations of each prime
power for every point of the literal radius-two window. -/
theorem rowMass_le (t : ℝ) (ht : t ∈ Icc (-2 : ℝ) 2) :
    rowMass 2 (5 / 16) t ≤ 47 / 5 := by
  by_cases h : 0 ≤ t
  · exact rowMass_le_of_nonneg h ht.2
  · rw [← rowMass_neg]
    exact rowMass_le_of_nonneg (by linarith) (by linarith [ht.1])

/-- The real prime energy for radius two is bounded in absolute value by
`47/5` times the squared Lebesgue norm. -/
theorem abs_primeEnergy_two_le {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-2 : ℝ) 2 → f t = 0) :
    |primeEnergy 2 f| ≤ (47 / 5) * ∫ t : ℝ, f t ^ 2 :=
  OddWeightedPrimeNorm.abs_primeEnergy_le (a := 5 / 16) (by norm_num) hf hs rowMass_le

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPrimeNorm
