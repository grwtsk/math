/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeRationalRampCenter
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Nat.Cast.Field
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Finite rational comparisons for the principal prime ramp

At each integer n, multiplication by n! clears all p−1 denominators in the
prime weights. Exponentiation then replaces the one-sided logarithmic ramp
comparison with an exact comparison of positive rationals. The final
equivalence specializes the positive rational factor to the explicit finite
product used to approximate the linear centering term.
-/

namespace GRWTSK.XiAlpogeRationalRampWindow

/-- The primes up to and including the tested integer. -/
def primes (n : ℕ) : Finset ℕ := (Finset.range (n+1)).filter Nat.Prime

/-- An integer exponent in the rational product. -/
def exponent (n p : ℕ) : ℕ := (n-(p-1))*(n.factorial/(p-1))

/-- The finite rational quantity for a given positive centering factor. -/
def value (n : ℕ) (E : ℚ) : ℚ :=
  (E/((n:ℚ)*(n+1)))^(n*n.factorial) * ∏ p ∈ primes n, (p:ℚ)^(exponent n p)

/-- The real logarithmic comparison on the original scale. -/
noncomputable def score (n : ℕ) (E : ℚ) : ℝ :=
  (∑ p ∈ primes n, ((n:ℝ)/((p:ℝ)-1)-1)*Real.log p) +
    n*Real.log ((E:ℝ)/((n:ℝ)*(n+1)))

private theorem prime_data {n p : ℕ} (hp : p ∈ primes n) : p.Prime ∧ p ≤ n := by
  obtain ⟨hr,h⟩ := Finset.mem_filter.mp hp
  exact ⟨h, by have := Finset.mem_range.mp hr; omega⟩

/-- Clearing p−1 is exact for each term, including the largest prime in the window. -/
theorem cast_exponent {n p : ℕ} (hp : p ∈ primes n) :
    (exponent n p : ℝ) = (n.factorial:ℝ)*((n:ℝ)/((p:ℝ)-1)-1) := by
  obtain ⟨hprime,hpn⟩ := prime_data hp
  have hp2 := hprime.two_le
  have hd : p-1 ∣ n.factorial := Nat.dvd_factorial (by omega) (by omega)
  have hpn' : p-1 ≤ n := by omega
  have hp' : 1 ≤ p := by omega
  have hpR : (p:ℝ)-1 ≠ 0 := by
    have : (2:ℝ) ≤ p := by exact_mod_cast hp2
    linarith
  simp only [exponent, Nat.cast_mul, Nat.cast_sub hpn', Nat.cast_div_charZero hd,
    Nat.cast_sub hp', Nat.cast_one]
  field_simp

theorem value_pos {n : ℕ} (hn : 0 < n) {E : ℚ} (hE : 0 < E) : 0 < value n E := by
  unfold value
  apply mul_pos (pow_pos (by positivity) _)
  apply Finset.prod_pos
  intro p hp
  exact pow_pos (by exact_mod_cast (prime_data hp).1.pos) _

/-- The logarithm of the rational comparison is exactly n! times the original score. -/
theorem log_value {n : ℕ} (hn : 0 < n) {E : ℚ} (hE : 0 < E) :
    Real.log (value n E : ℝ) = (n.factorial:ℝ)*score n E := by
  have hE' : (0:ℝ) < (E:ℝ) := by exact_mod_cast hE
  have hn' : (0:ℝ) < (n:ℝ) := by exact_mod_cast hn
  have h₁ : ((E:ℝ)/((n:ℝ)*(n+1)))^(n*n.factorial) ≠ 0 := by positivity
  have hp (p : ℕ) (hp : p ∈ primes n) : (p:ℝ)^exponent n p ≠ 0 :=
    pow_ne_zero _ (by exact_mod_cast (prime_data hp).1.ne_zero)
  unfold value score
  push_cast
  rw [Real.log_mul h₁ (Finset.prod_ne_zero_iff.mpr hp), Real.log_prod hp, Real.log_pow]
  conv_rhs => rw [mul_add, Finset.mul_sum]
  have hs : (∑ p ∈ primes n, Real.log ((p:ℝ)^exponent n p)) =
      ∑ p ∈ primes n, (n.factorial:ℝ)*(((n:ℝ)/((p:ℝ)-1)-1)*Real.log p) := by
    apply Finset.sum_congr rfl
    intro p hp
    rw [Real.log_pow, cast_exponent hp]
    ring
  rw [hs, Nat.cast_mul]
  ring

/-- Any natural ceiling multiplier may be supplied, with no real arithmetic
required to decide the rational side. -/
theorem rational_iff_score {n : ℕ} (hn : 0 < n) (m : ℕ) {E : ℚ} (hE : 0 < E) :
    value n E ≤ (n:ℚ)^(n.factorial*m) ↔ score n E ≤ (m:ℝ)*Real.log n := by
  have h₁ : (0:ℝ) < (value n E:ℝ) := by exact_mod_cast value_pos hn hE
  have hn' : (0:ℝ) < n := by exact_mod_cast hn
  have h₂ : (0:ℝ) < (n:ℝ)^(n.factorial*m) := pow_pos hn' _
  have hc : (value n E ≤ (n:ℚ)^(n.factorial*m)) ↔
      (value n E:ℝ) ≤ (n:ℝ)^(n.factorial*m) := by
    rw [← Rat.cast_le (K := ℝ)]
    push_cast
    rfl
  rw [hc, ← Real.log_le_log_iff h₁ h₂, log_value hn hE, Real.log_pow, Nat.cast_mul,
    mul_assoc, mul_le_mul_iff_right₀ (by exact_mod_cast n.factorial_pos : (0:ℝ) < n.factorial)]

/-- The concrete all-rational test with no free real parameter. -/
theorem center_rational_iff_score {n : ℕ} (hn : 2 ≤ n) (m : ℕ) :
    value n (XiAlpogeRationalRampCenter.approxExp n) ≤ (n:ℚ)^(n.factorial*m) ↔
      score n (XiAlpogeRationalRampCenter.approxExp n) ≤ (m:ℝ)*Real.log n :=
  rational_iff_score (by omega) m (XiAlpogeRationalRampCenter.approxExp_pos n)

end GRWTSK.XiAlpogeRationalRampWindow
