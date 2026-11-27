/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeRationalRampWindow
import Mathlib.Order.Interval.Finset.Nat

/-!
# A smaller rational prime-ramp product

Rounding each exponent down after scaling by n gives a positive rational
product. The aggregate logarithmic loss is at most n·log n. On the original
ramp scale this costs just one unit of the integer threshold m.
-/

namespace GRWTSK.XiAlpogeRoundedProduct
open XiAlpogeRationalRampWindow

/-- The floor of n·(n/(p-1)−1) at every tested prime. -/
def roundedExponent (n p : ℕ) : ℕ := (n*n)/(p-1)-n

/-- Exact positive rational product with scale n in place of n!. -/
def roundedValue (n : ℕ) (E : ℚ) : ℚ :=
  (E/((n:ℚ)*(n+1)))^(n*n) * ∏ p ∈ primes n, (p:ℚ)^roundedExponent n p

private theorem prime_data {n p : ℕ} (hp : p ∈ primes n) : p.Prime ∧ p ≤ n := by
  obtain ⟨h,hp⟩ := Finset.mem_filter.mp hp
  exact ⟨hp, by have := Finset.mem_range.mp h; omega⟩

/-- Fractional loss in each exponent is nonnegative and less than one. -/
theorem exponent_loss {n p : ℕ} (hp : p ∈ primes n) :
    0 ≤ (n:ℝ)*((n:ℝ)/((p:ℝ)-1)-1)-roundedExponent n p ∧
    (n:ℝ)*((n:ℝ)/((p:ℝ)-1)-1)-roundedExponent n p < 1 := by
  obtain ⟨hpr,hpn⟩ := prime_data hp
  have hp2 := hpr.two_le
  let d := p-1
  let q := n*n/d
  have hd : 0 < d := by dsimp [d]; omega
  have hdn : d ≤ n := by dsimp [d]; omega
  have hq : n ≤ q := (Nat.le_div_iff_mul_le hd).mpr (Nat.mul_le_mul_left n hdn)
  have hlow : q*d ≤ n*n := Nat.div_mul_le_self _ _
  have hhigh : n*n < (q+1)*d := (Nat.div_lt_iff_lt_mul hd).mp (Nat.lt_succ_self q)
  have hp1 : 1 ≤ p := by omega
  have hdcast : (d:ℝ) = (p:ℝ)-1 := by simp [d, Nat.cast_sub hp1]
  have hdR : (0:ℝ) < d := by exact_mod_cast hd
  have hlowR : (q:ℝ)*d ≤ (n:ℝ)*n := by exact_mod_cast hlow
  have hhighR : (n:ℝ)*n < ((q:ℝ)+1)*d := by exact_mod_cast hhigh
  have hc : (roundedExponent n p:ℝ) = (q:ℝ)-n := Nat.cast_sub hq
  rw [← hdcast, hc]
  have hre : (n:ℝ)*(n/(d:ℝ)-1)-((q:ℝ)-n) = (n:ℝ)*n/d-q := by ring
  rw [hre]
  exact ⟨sub_nonneg.mpr ((le_div_iff₀ hdR).mpr hlowR),
    by linarith [(div_lt_iff₀ hdR).mpr hhighR]⟩

private theorem value_pos {n : ℕ} (hn : 0 < n) {E : ℚ} (hE : 0 < E) :
    0 < roundedValue n E := by
  unfold roundedValue
  apply mul_pos (pow_pos (by positivity) _)
  exact Finset.prod_pos fun p hp => pow_pos (by exact_mod_cast (prime_data hp).1.pos) _

private theorem log_gap {n : ℕ} (hn : 0 < n) {E : ℚ} (hE : 0 < E) :
    n*score n E - Real.log (roundedValue n E:ℝ) =
      ∑ p ∈ primes n, ((n:ℝ)*((n:ℝ)/((p:ℝ)-1)-1)-roundedExponent n p)*Real.log p := by
  have hE' : (0:ℝ) < (E:ℝ) := by exact_mod_cast hE
  have hn' : (0:ℝ) < n := by exact_mod_cast hn
  have hbase : ((E:ℝ)/((n:ℝ)*(n+1)))^(n*n) ≠ 0 := by positivity
  have hp (p : ℕ) (hp : p ∈ primes n) : (p:ℝ)^roundedExponent n p ≠ 0 :=
    pow_ne_zero _ (by exact_mod_cast (prime_data hp).1.ne_zero)
  unfold roundedValue score
  push_cast
  rw [Real.log_mul hbase (Finset.prod_ne_zero_iff.mpr hp), Real.log_prod hp, Real.log_pow, Nat.cast_mul]
  simp_rw [Real.log_pow]
  conv_lhs =>
    lhs
    rw [mul_add, Finset.mul_sum]
  calc
    _ = (∑ p ∈ primes n, (n:ℝ)*(((n:ℝ)/((p:ℝ)-1)-1)*Real.log p)) -
          ∑ p ∈ primes n, (roundedExponent n p:ℝ)*Real.log p := by ring
    _ = _ := by
      rw [← Finset.sum_sub_distrib]
      apply Finset.sum_congr rfl
      intro p hp'
      ring

/-- The loss on the original score scale lies between zero and log n. -/
theorem rounded_score_bounds {n : ℕ} (hn : 0 < n) {E : ℚ} (hE : 0 < E) :
    Real.log (roundedValue n E : ℝ)/n ≤ score n E ∧
    score n E ≤ Real.log (roundedValue n E : ℝ)/n + Real.log n := by
  have hn' : (0:ℝ) < n := by exact_mod_cast hn
  have hn1 : 1 ≤ n := hn
  have hl : 0 ≤ Real.log (n:ℝ) := Real.log_nonneg (by exact_mod_cast hn1)
  have hterm (p : ℕ) (hp : p ∈ primes n) :
      0 ≤ ((n:ℝ)*(n/((p:ℝ)-1)-1)-roundedExponent n p)*Real.log p ∧
      ((n:ℝ)*(n/((p:ℝ)-1)-1)-roundedExponent n p)*Real.log p ≤ Real.log n := by
    obtain ⟨hpr,hpn⟩ := prime_data hp
    have hp1 : (1:ℝ) ≤ p := by exact_mod_cast hpr.one_le
    have hlp := Real.log_nonneg hp1
    obtain ⟨h₁,h₂⟩ := exponent_loss hp
    refine ⟨mul_nonneg h₁ hlp,?_⟩
    calc
      _ ≤ 1*Real.log p := mul_le_mul_of_nonneg_right h₂.le hlp
      _ ≤ Real.log n := by
        rw [one_mul]
        exact Real.log_le_log (by linarith) (by exact_mod_cast hpn)
  have hsub : primes n ⊆ Finset.Icc 1 n := fun p hp =>
    Finset.mem_Icc.mpr ⟨(prime_data hp).1.one_le,(prime_data hp).2⟩
  have hcard : (primes n).card ≤ n := by simpa using Finset.card_le_card hsub
  have hlow : 0 ≤ n*score n E - Real.log (roundedValue n E:ℝ) := by
    rw [log_gap hn hE]
    exact Finset.sum_nonneg fun p hp => (hterm p hp).1
  have hhigh : n*score n E - Real.log (roundedValue n E:ℝ) ≤ n*Real.log n := by
    rw [log_gap hn hE]
    calc
      _ ≤ ∑ _p ∈ primes n, Real.log (n:ℝ) := Finset.sum_le_sum fun p hp => (hterm p hp).2
      _ = ((primes n).card:ℝ)*Real.log n := by simp
      _ ≤ _ := mul_le_mul_of_nonneg_right (by exact_mod_cast hcard) hl
  constructor
  · apply (div_le_iff₀ hn').mpr
    linarith
  · have hl' : score n E - Real.log n ≤ Real.log (roundedValue n E:ℝ)/n := by
      apply (le_div_iff₀ hn').mpr
      nlinarith
    linarith

private theorem rounded_le_log {n : ℕ} (hn : 0 < n) (m : ℕ) {E : ℚ} (hE : 0 < E) :
    roundedValue n E ≤ (n:ℚ)^(n*m) ↔
      Real.log (roundedValue n E : ℝ)/n ≤ m*Real.log n := by
  have h₁ : (0:ℝ) < (roundedValue n E:ℝ) := by exact_mod_cast value_pos hn hE
  have hn' : (0:ℝ) < n := by exact_mod_cast hn
  have hc : roundedValue n E ≤ (n:ℚ)^(n*m) ↔ (roundedValue n E:ℝ) ≤ (n:ℝ)^(n*m) := by
    rw [← Rat.cast_le (K := ℝ)]
    push_cast
    rfl
  rw [hc, ← Real.log_le_log_iff h₁ (pow_pos hn' _), Real.log_pow, Nat.cast_mul, div_le_iff₀ hn']
  ring_nf

/-- An exact factorial-scale pass implies a rounded pass at the same m. -/
theorem rounded_of_exact {n : ℕ} (hn : 0 < n) (m : ℕ) {E : ℚ} (hE : 0 < E)
    (h : value n E ≤ (n:ℚ)^(n.factorial*m)) : roundedValue n E ≤ (n:ℚ)^(n*m) :=
  (rounded_le_log hn m hE).mpr ((rounded_score_bounds hn hE).1.trans ((rational_iff_score hn m hE).mp h))

/-- A rounded pass at m implies an exact factorial-scale pass at m+1. -/
theorem exact_succ_of_rounded {n : ℕ} (hn : 0 < n) (m : ℕ) {E : ℚ} (hE : 0 < E)
    (h : roundedValue n E ≤ (n:ℚ)^(n*m)) : value n E ≤ (n:ℚ)^(n.factorial*(m+1)) := by
  apply (rational_iff_score hn (m+1) hE).mpr
  have hpass := (rounded_le_log hn m hE).mp h
  have hscore := (rounded_score_bounds hn hE).2
  rw [Nat.cast_add, Nat.cast_one]
  nlinarith

end GRWTSK.XiAlpogeRoundedProduct
