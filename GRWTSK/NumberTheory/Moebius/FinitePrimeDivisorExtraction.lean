/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's Mobius results retain Aaron Anderson's upstream authorship and
Apache-2.0 license; other imports retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.MertensPrimitive
import Mathlib.Data.Nat.Squarefree
import Mathlib.Tactic

/-!
# Exact finite prime-divisor extraction with an explicit repeated-prime correction

Only finite arithmetic identities are proved. The selected prime set is finite;
its primality is a hypothesis, not an axiom. The count is the number of DISTINCT
selected prime divisors of the same integer. The zero-count contribution is
retained separately. An unrestricted quotient sum requires the repeated-prime
correction: it cannot be deleted, even though the original Mobius coefficient
vanishes at prime squares. No analytic estimate or paper theorem is imported.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC

/-- Distinct selected divisors; the theorem interfaces separately require primality. -/
def selectedDivisors (P : Finset ℕ) (n : ℕ) : Finset ℕ :=
  P.filter (fun p => p ∣ n)

def divisorCount (P : Finset ℕ) (n : ℕ) : ℕ := (selectedDivisors P n).card

/-- The unsifted contribution is not discarded. -/
def unsifted (P : Finset ℕ) (n : ℕ) : ℝ :=
  if divisorCount P n = 0 then moebiusReal n else 0

/-- Unrestricted prime-quotient average; division by zero uses the real convention. -/
def primeAverage (P : Finset ℕ) (n : ℕ) : ℝ :=
  (∑ p ∈ selectedDivisors P n, moebiusReal (n / p)) / (divisorCount P n : ℝ)

/-- Explicit correction for selected p whose quotient still contains p. -/
def repeatedAverage (P : Finset ℕ) (n : ℕ) : ℝ :=
  (∑ p ∈ selectedDivisors P n,
    if p ∣ n / p then moebiusReal (n / p) else 0) / (divisorCount P n : ℝ)

theorem divisorCount_pos_of_mem {P : Finset ℕ} {p n : ℕ}
    (hp : p ∈ P) (hpn : p ∣ n) : 0 < divisorCount P n := by
  exact Finset.card_pos.mpr ⟨p, Finset.mem_filter.mpr ⟨hp, hpn⟩⟩

/-- Actual multiplicativity on the coprime case, and squarefreeness in the other case. -/
theorem moebiusReal_prime_mul {p m : ℕ} (hp : Nat.Prime p) :
    moebiusReal (p * m) = if p ∣ m then 0 else -moebiusReal m := by
  by_cases hm : p ∣ m
  · rw [if_pos hm]
    have hns : ¬ Squarefree (p * m) := by
      intro hs
      apply (Nat.squarefree_iff_prime_squarefree.mp hs p hp)
      obtain ⟨k, hk⟩ := hm
      exact ⟨k, by rw [hk]; ring⟩
    simp only [moebiusReal, ArithmeticFunction.moebius_eq_zero_of_not_squarefree hns,
      Int.cast_zero]
  · rw [if_neg hm]
    have hcop : Nat.Coprime p m := (hp.coprime_iff_not_dvd).mpr hm
    unfold moebiusReal
    rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hcop,
      ArithmeticFunction.moebius_apply_prime hp]
    push_cast
    ring

/-- Per-divisor identity before dividing by the number of selected prime divisors. -/
theorem moebiusReal_eq_neg_quotient_add_repeat {p n : ℕ}
    (hp : Nat.Prime p) (hpn : p ∣ n) :
    moebiusReal n = -moebiusReal (n / p) +
      (if p ∣ n / p then moebiusReal (n / p) else 0) := by
  have h := moebiusReal_prime_mul (m := n / p) hp
  rw [Nat.mul_div_cancel' hpn] at h
  by_cases hr : p ∣ n / p <;> simp only [hr, if_true, if_false] at h ⊢ <;> linarith

theorem count_mul_moebiusReal (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (n : ℕ) :
    (divisorCount P n : ℝ) * moebiusReal n =
      -(∑ p ∈ selectedDivisors P n, moebiusReal (n / p)) +
        ∑ p ∈ selectedDivisors P n,
          if p ∣ n / p then moebiusReal (n / p) else 0 := by
  calc
    _ = ∑ _p ∈ selectedDivisors P n, moebiusReal n := by
      simp [divisorCount]
    _ = ∑ p ∈ selectedDivisors P n,
        (-moebiusReal (n / p) +
          (if p ∣ n / p then moebiusReal (n / p) else 0)) := by
      apply Finset.sum_congr rfl
      intro p hp
      have hmem := Finset.mem_filter.mp hp
      exact moebiusReal_eq_neg_quotient_add_repeat (hP p hmem.1) hmem.2
    _ = _ := by rw [Finset.sum_add_distrib, Finset.sum_neg_distrib]

/-- Exact extraction, including the zero-count case and the full repeated-prime term. -/
theorem moebiusReal_eq_extraction (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (n : ℕ) :
    moebiusReal n = unsifted P n - primeAverage P n + repeatedAverage P n := by
  by_cases hk : divisorCount P n = 0
  · simp [unsifted, primeAverage, repeatedAverage, hk]
  · have hkR : (divisorCount P n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr hk
    have hcount := count_mul_moebiusReal P hP n
    unfold unsifted primeAverage repeatedAverage
    rw [if_neg hk]
    field_simp [hkR]
    nlinarith [hcount]

/-- Any finite real weight is preserved, with no positivity assumption or absolute values. -/
theorem weighted_sum_extraction (P S : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (F : ℕ → ℝ) :
    (∑ n ∈ S, F n * moebiusReal n) =
      (∑ n ∈ S, F n * unsifted P n) -
        (∑ n ∈ S, F n * primeAverage P n) +
        ∑ n ∈ S, F n * repeatedAverage P n := by
  rw [← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  rw [moebiusReal_eq_extraction P hP n]
  ring

/-- Exchange the original finite source index with the selected prime index exactly. -/
theorem primeAverage_sum_eq_prime_first (P S : Finset ℕ) (F : ℕ → ℝ) :
    (∑ n ∈ S, F n * primeAverage P n) =
      ∑ p ∈ P, ∑ n ∈ S,
        if p ∣ n then F n * moebiusReal (n / p) / (divisorCount P n : ℝ) else 0 := by
  calc
    _ = ∑ n ∈ S, ∑ p ∈ P,
        if p ∣ n then F n * moebiusReal (n / p) / (divisorCount P n : ℝ) else 0 := by
      apply Finset.sum_congr rfl
      intro n _
      unfold primeAverage selectedDivisors
      rw [Finset.sum_div, Finset.mul_sum, Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro p _
      by_cases hp : p ∣ n <;> simp [hp, mul_div_assoc]
    _ = _ := Finset.sum_comm

/-- The repeated-prime term receives the same source-preserving exchange. -/
theorem repeatedAverage_sum_eq_prime_first (P S : Finset ℕ) (F : ℕ → ℝ) :
    (∑ n ∈ S, F n * repeatedAverage P n) =
      ∑ p ∈ P, ∑ n ∈ S,
        if p ∣ n then
          (if p ∣ n / p then
            F n * moebiusReal (n / p) / (divisorCount P n : ℝ) else 0)
        else 0 := by
  calc
    _ = ∑ n ∈ S, ∑ p ∈ P,
        if p ∣ n then
          (if p ∣ n / p then
            F n * moebiusReal (n / p) / (divisorCount P n : ℝ) else 0)
        else 0 := by
      apply Finset.sum_congr rfl
      intro n _
      unfold repeatedAverage selectedDivisors
      rw [Finset.sum_div, Finset.mul_sum, Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro p _
      by_cases hp : p ∣ n <;> by_cases hr : p ∣ n / p <;>
        simp [hp, hr, mul_div_assoc]
    _ = _ := Finset.sum_comm

/-- Exact quotient reindexing of an ordinary shifted window. No rounding term is lost. -/
theorem sum_divisible_window_eq_quotient (h N p : ℕ) (hp : 0 < p) (F : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc (h + 1) (N + h), if p ∣ n then F n else 0) =
      ∑ m ∈ Finset.Icc 1 ((N + h) / p), if h < p * m then F (p * m) else 0 := by
  rw [← Finset.sum_filter, ← Finset.sum_filter]
  apply Finset.sum_bij (fun n _ => n / p)
  · intro n hn
    have hnI := Finset.mem_Icc.mp (Finset.mem_filter.mp hn).1
    have hpn := (Finset.mem_filter.mp hn).2
    have heq : p * (n / p) = n := Nat.mul_div_cancel' hpn
    refine Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨?_, ?_⟩, ?_⟩
    · apply Nat.one_le_iff_ne_zero.mpr
      intro hz
      rw [hz, mul_zero] at heq
      omega
    · apply (Nat.le_div_iff_mul_le hp).mpr
      calc
        n / p * p = n := Nat.div_mul_cancel hpn
        _ ≤ N + h := hnI.2
    · rw [heq]
      omega
  · intro n hn k hk he
    have hnEq : p * (n / p) = n := Nat.mul_div_cancel' (Finset.mem_filter.mp hn).2
    have hkEq : p * (k / p) = k := Nat.mul_div_cancel' (Finset.mem_filter.mp hk).2
    calc
      n = p * (n / p) := hnEq.symm
      _ = p * (k / p) := congrArg (fun z : ℕ => p * z) he
      _ = k := hkEq
  · intro m hm
    have hmI := Finset.mem_Icc.mp (Finset.mem_filter.mp hm).1
    have hlow := (Finset.mem_filter.mp hm).2
    have hupper : p * m ≤ N + h := by
      have hh := (Nat.le_div_iff_mul_le hp).mp hmI.2
      simpa only [Nat.mul_comm] using hh
    refine ⟨p * m, Finset.mem_filter.mpr
      ⟨Finset.mem_Icc.mpr ⟨by omega, hupper⟩, ⟨m, rfl⟩⟩, ?_⟩
    exact Nat.mul_div_cancel_left m hp
  · intro n hn
    have heq : p * (n / p) = n := Nat.mul_div_cancel' (Finset.mem_filter.mp hn).2
    exact congrArg F heq.symm

/-- Hostile fixture: the correction is nonzero at a selected prime square. -/
theorem repeatedAverage_singleton_square {p : ℕ} (hp : Nat.Prime p) :
    repeatedAverage {p} (p * p) = -1 := by
  have hdiv : p ∣ p * p := ⟨p, rfl⟩
  have hq : p * p / p = p := Nat.mul_div_cancel_left p hp.pos
  have hselected : selectedDivisors {p} (p * p) = {p} := by
    apply Finset.filter_eq_self.mpr
    intro q hq
    obtain rfl := Finset.mem_singleton.mp hq
    exact hdiv
  simp [repeatedAverage, divisorCount, hselected, hq,
    moebiusReal, ArithmeticFunction.moebius_apply_prime hp]

theorem primeAverage_singleton_square {p : ℕ} (hp : Nat.Prime p) :
    primeAverage {p} (p * p) = -1 := by
  have hdiv : p ∣ p * p := ⟨p, rfl⟩
  have hq : p * p / p = p := Nat.mul_div_cancel_left p hp.pos
  have hselected : selectedDivisors {p} (p * p) = {p} := by
    apply Finset.filter_eq_self.mpr
    intro q hq
    obtain rfl := Finset.mem_singleton.mp hq
    exact hdiv
  simp [primeAverage, divisorCount, hselected, hq,
    moebiusReal, ArithmeticFunction.moebius_apply_prime hp]

/-- Removing the repeated-prime correction would give the wrong answer at p squared. -/
theorem no_uncorrected_extraction_at_prime_square {p : ℕ} (hp : Nat.Prime p) :
    moebiusReal (p * p) ≠ unsifted {p} (p * p) - primeAverage {p} (p * p) := by
  have hdiv : p ∣ p * p := ⟨p, rfl⟩
  rw [moebiusReal_prime_mul hp, if_pos (dvd_refl p), primeAverage_singleton_square hp]
  simp [unsifted, divisorCount, selectedDivisors, hdiv]

@[simp] theorem unsifted_empty (n : ℕ) : unsifted ∅ n = moebiusReal n := by
  simp [unsifted, divisorCount, selectedDivisors]

@[simp] theorem primeAverage_empty (n : ℕ) : primeAverage ∅ n = 0 := by
  simp [primeAverage, divisorCount, selectedDivisors]

@[simp] theorem repeatedAverage_empty (n : ℕ) : repeatedAverage ∅ n = 0 := by
  simp [repeatedAverage, divisorCount, selectedDivisors]

end GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
