/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilLowSchurEnclosure
import Mathlib.Analysis.SpecialFunctions.Pow.NthRootLemmas
import Mathlib.Data.Nat.Sqrt

/-!
# Rational scalar bounds for the radius-two prime costs

Local attribution is to grwtsk contributors.

The weights are the literal von Mangoldt values divided by square roots.
For each prime power through 54, multiply the proposed rational weight
by an integer-square-root lower bound for its denominator. A checked
positive exponential partial sum at this argument reaches the least
prime factor. The logarithm inequality then proves the weight bound.
The zero weights follow from the exact prime-power test.

The weight profile of the radius-two Schur estimate uses sixteenth
powers of positive translation ratios. A power of two from the integer
bit length starts above the root. Every Newton step preserves the strict
upper estimate after adding one, so a fixed number of steps gives an
outward endpoint.
These scalar bounds feed the pointwise row test for the weighted prime
form. Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPrimePrices

open ArithmeticFunction

/-- Numerators of upper bounds for the literal weights on a grid of denominator 10000. -/
def weightNumerator (q : ℕ) : ℕ :=
  (#[0, 0, 4902, 6344, 3466, 7198, 0, 7355, 2451, 3663, 0, 7230, 0, 7114, 0, 0,
    1733, 6872, 0, 6756, 0, 0, 0, 6539, 0, 3219, 0, 2115, 0, 6253, 0, 6168, 1226,
    0, 0, 0, 0, 5937, 0, 0, 0, 5800, 0, 5736, 0, 0, 0, 5617, 0, 2780, 0, 0, 0,
    5454, 0] : Array ℕ)[q]!

private def sqrtLower (q : ℕ) : ℚ := (Nat.sqrt (q * 10000 ^ 2) : ℚ) / 10000

private theorem sqrtLower_le (q : ℕ) : (sqrtLower q : ℝ) ≤ Real.sqrt (q : ℝ) := by
  have hSq : (Nat.sqrt (q * 10000 ^ 2) : ℝ) ^ 2 ≤ (q : ℝ) * (10000 : ℝ) ^ 2 := by
    exact_mod_cast Nat.sqrt_le' (q * 10000 ^ 2)
  have hLo : 0 ≤ (sqrtLower q : ℝ) := by unfold sqrtLower; push_cast; positivity
  apply (sq_le_sq₀ hLo (Real.sqrt_nonneg _)).mp
  rw [Real.sq_sqrt (Nat.cast_nonneg _)]
  unfold sqrtLower
  push_cast
  rw [div_pow, div_le_iff₀ (by positivity)]
  exact hSq

private def expInput (q : ℕ) : ℚ := (weightNumerator q : ℚ) / 10000 * sqrtLower q

private def expPartial (q : ℕ) : ℚ :=
  ∑ i ∈ Finset.range 23, expInput q ^ i / (i.factorial : ℚ)

set_option maxRecDepth 4096 in
private theorem weightTable_check :
    ∀ q : Fin 55, IsPrimePow q.val → (q.val.minFac : ℚ) ≤ expPartial q.val := by
  decide +kernel

/-- The complete radius-two weight inventory has the displayed rational upper prices. -/
theorem primeWeight_le (q : ℕ) (hq : q ∈ Finset.Icc 2 54) :
    LowSchur.primeWeight q ≤ (weightNumerator q : ℝ) / 10000 := by
  obtain ⟨hq2, hq54⟩ := Finset.mem_Icc.mp hq
  have hqR : (0 : ℝ) < q := by exact_mod_cast (by omega : 0 < q)
  have hsqrt : 0 < Real.sqrt (q : ℝ) := Real.sqrt_pos_of_pos hqR
  unfold LowSchur.primeWeight
  rw [vonMangoldt_apply]
  by_cases hp : IsPrimePow q
  · rw [ite_eq_left hp]
    have hInput : 0 ≤ (expInput q : ℝ) := by unfold expInput sqrtLower; push_cast; positivity
    have hTable : (q.minFac : ℝ) ≤
        ∑ i ∈ Finset.range 23, (expInput q : ℝ) ^ i / (i.factorial : ℝ) := by
      have h := (Rat.cast_le (K := ℝ)).2 (weightTable_check ⟨q, by omega⟩ hp)
      simpa only [expPartial, Rat.cast_natCast, Rat.cast_sum, Rat.cast_div, Rat.cast_pow] using h
    have hFac : (0 : ℝ) < q.minFac := by exact_mod_cast Nat.minFac_pos q
    have hLog := (Real.log_le_iff_le_exp hFac).2 (hTable.trans (Real.sum_le_exp_of_nonneg hInput 23))
    simp only [expInput, Rat.cast_mul, Rat.cast_div, Rat.cast_natCast, Rat.cast_ofNat] at hLog
    apply (div_le_iff₀ hsqrt).2
    exact hLog.trans (mul_le_mul_of_nonneg_left (sqrtLower_le q) (by positivity))
  · rw [ite_eq_right hp, zero_div]
    positivity

private theorem rootStep_upper {a guess : ℕ} (fuel : ℕ) (h : a < (guess + 1) ^ 16) :
    a < (Nat.nthRoot.go 14 a fuel guess + 1) ^ 16 := by
  induction fuel generalizing guess with
  | zero => simpa only [Nat.nthRoot.go] using h
  | succ fuel ih =>
    rw [Nat.nthRoot.go]
    split
    · rename_i hNext
      have hg : guess ≠ 0 := by
        intro hZero
        subst guess
        exact Nat.not_lt_zero _ hNext
      exact ih (Nat.nthRoot.lt_pow_go_succ_aux (n := 15) (a := a) hg)
    · exact h

private def rootUpper (a : ℕ) : ℕ :=
  if a = 0 then 1 else Nat.nthRoot.go 14 a 32 (2 ^ (a.log2 / 16 + 1)) + 1

private theorem rootUpper_sound (a : ℕ) : a < rootUpper a ^ 16 := by
  unfold rootUpper
  split
  · rename_i h
    simp [h]
  · apply rootStep_upper
    let k := a.log2 / 16 + 1
    have hk : a.log2 + 1 ≤ k * 16 := by
      dsimp [k]
      omega
    calc
      a < 2 ^ (a.log2 + 1) := Nat.lt_log2_self
      _ ≤ 2 ^ (k * 16) := Nat.pow_le_pow_right (by decide) hk
      _ = (2 ^ k) ^ 16 := pow_mul 2 k 16
      _ ≤ (2 ^ k + 1) ^ 16 := Nat.pow_le_pow_left (Nat.le_succ _) _

/-- Upper grid numerator for a real quantity with a bounded sixteenth power. -/
def ratioNumerator (num den : ℕ) : ℕ :=
  rootUpper (num * 10000 ^ 16 / den)

theorem ratio_le {x : ℝ} {num den : ℕ} (hden : 0 < den)
    (hx : x ^ 16 ≤ (num : ℝ) / den) :
    x ≤ (ratioNumerator num den : ℝ) / 10000 := by
  have hRoot : num * 10000 ^ 16 / den < ratioNumerator num den ^ 16 :=
    rootUpper_sound _
  have hNat : num * 10000 ^ 16 < ratioNumerator num den ^ 16 * den :=
    (Nat.div_lt_iff_lt_mul hden).1 hRoot
  have hDenR : (0 : ℝ) < den := by exact_mod_cast hden
  have hPow : (num : ℝ) / den < ((ratioNumerator num den : ℝ) / 10000) ^ 16 := by
    rw [div_pow, div_lt_div_iff₀ hDenR (by positivity)]
    exact_mod_cast hNat
  exact (lt_of_pow_lt_pow_left₀ 16 (by positivity) (hx.trans_lt hPow)).le

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPrimePrices
