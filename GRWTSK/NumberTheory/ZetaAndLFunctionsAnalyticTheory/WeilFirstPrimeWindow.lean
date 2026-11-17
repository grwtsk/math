/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSourcePrimeCorrelation
import Mathlib.NumberTheory.PrimeCounting
import Mathlib.Algebra.IsPrimePow

/-!
# The first 95 prime bases in the signed Weil prime term

The original support cutoff is strict. Its integer index set includes zero
von Mangoldt terms, which may be removed before splitting by prime base.
The split is applied to the full complex character-correlation product before
taking its real part. See Bombieri, *Remarks on Weil's quadratic functional in
the theory of prime numbers, I* (2000), Theorem 2 for the zeta explicit formula.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open LowSchur CharacterWindow SourcePrimeCorrelation

theorem lastPrime : Nat.nth Nat.Prime 94 = 499 := by
  have hp : Nat.Prime 499 := by norm_num
  have hc : Nat.count Nat.Prime 499 = 94 := by decide +kernel
  simpa only [hc] using Nat.nth_count hp

theorem nextPrime : Nat.nth Nat.Prime 95 = 503 := by
  have hp : Nat.Prime 503 := by norm_num
  have hc : Nat.count Nat.Prime 503 = 95 := by decide +kernel
  simpa only [hc] using Nat.nth_count hp

/-- The base occupies one of the first 95 addresses in the ordinary prime order. -/
theorem prime_lt_nextPrime_iff {p : ℕ} (hp : p.Prime) :
    p < 503 ↔ ∃ j : Fin 95, Nat.nth Nat.Prime j = p := by
  have hm := Nat.nth_strictMono Nat.infinite_setOfPred_prime
  constructor
  · intro h
    have hn := Nat.nth_count hp
    have hj : Nat.count Nat.Prime p < 95 :=
      hm.lt_iff_lt.mp (by simpa only [hn, nextPrime] using h)
    exact ⟨⟨_, hj⟩, hn⟩
  · rintro ⟨j, rfl⟩
    simpa only [nextPrime] using hm j.isLt

/-- The active indices carrying von Mangoldt weight. -/
def supportedPowers (A : ℝ) : Finset ℕ :=
  (activePrimePowers A).filter IsPrimePow

/-- All supported powers with prime base in the first window. -/
def firstPowers (A : ℝ) : Finset ℕ :=
  (supportedPowers A).filter (fun n => n.minFac < 503)

/-- All supported powers with prime base in later windows. -/
def laterPowers (A : ℝ) : Finset ℕ :=
  (supportedPowers A).filter (fun n => 503 ≤ n.minFac)

private theorem mem_active_iff {A : ℝ} {n : ℕ} :
    n ∈ activePrimePowers A ↔ 2 ≤ n ∧ (n : ℝ) < Real.exp (2 * A) := by
  simp only [activePrimePowers, Finset.mem_filter, Finset.mem_range, Nat.lt_ceil]
  tauto

theorem pow_mem_firstPowers_iff {A : ℝ} {p m : ℕ} (hp : p.Prime) (hm : 0 < m) :
    p ^ m ∈ firstPowers A ↔ p < 503 ∧ ((p ^ m : ℕ) : ℝ) < Real.exp (2 * A) := by
  have hle : p ≤ p ^ m := by
    simpa using Nat.pow_le_pow_right hp.pos (show 1 ≤ m by omega)
  have hpow : IsPrimePow (p ^ m) := (isPrimePow_nat_iff _).2 ⟨p, m, hp, hm, rfl⟩
  simp only [firstPowers, supportedPowers, Finset.mem_filter, mem_active_iff,
    hpow, and_true, hp.pow_minFac hm.ne', hp.two_le.trans hle, true_and]
  tauto

theorem pow_mem_laterPowers_iff {A : ℝ} {p m : ℕ} (hp : p.Prime) (hm : 0 < m) :
    p ^ m ∈ laterPowers A ↔ 503 ≤ p ∧ ((p ^ m : ℕ) : ℝ) < Real.exp (2 * A) := by
  have hle : p ≤ p ^ m := by
    simpa using Nat.pow_le_pow_right hp.pos (show 1 ≤ m by omega)
  have hpow : IsPrimePow (p ^ m) := (isPrimePow_nat_iff _).2 ⟨p, m, hp, hm, rfl⟩
  simp only [laterPowers, supportedPowers, Finset.mem_filter, mem_active_iff,
    hpow, and_true, hp.pow_minFac hm.ne', hp.two_le.trans hle, true_and]
  tauto

theorem mem_firstPowers_iff {A : ℝ} {n : ℕ} :
    n ∈ firstPowers A ↔ ∃ (j : Fin 95) (m : ℕ),
      0 < m ∧ n = (Nat.nth Nat.Prime j) ^ m ∧ (n : ℝ) < Real.exp (2 * A) := by
  constructor
  · intro hn
    have hs := (Finset.mem_filter.mp hn).1
    obtain ⟨p, m, hp, hm, rfl⟩ := (isPrimePow_nat_iff n).1 (Finset.mem_filter.mp hs).2
    obtain ⟨hbase, hcut⟩ := (pow_mem_firstPowers_iff hp hm).1 hn
    obtain ⟨j, hj⟩ := (prime_lt_nextPrime_iff hp).1 hbase
    exact ⟨j, m, hm, by rw [hj], hcut⟩
  · rintro ⟨j, m, hm, rfl, hcut⟩
    have hp := Nat.prime_nth_prime j
    exact (pow_mem_firstPowers_iff hp hm).2 ⟨(prime_lt_nextPrime_iff hp).2 ⟨j, rfl⟩, hcut⟩

theorem laterPowers_eq_empty_iff (A : ℝ) :
    laterPowers A = ∅ ↔ Real.exp (2 * A) ≤ 503 := by
  have hp : Nat.Prime 503 := by norm_num
  constructor
  · intro h
    by_contra! hlt
    have hm := (pow_mem_laterPowers_iff (A := A) hp (by decide : 0 < 1)).2
      ⟨le_rfl, by norm_num; exact hlt⟩
    simp [h] at hm
  · intro h
    apply Finset.eq_empty_iff_forall_notMem.mpr
    intro n hn
    have ha := (Finset.mem_filter.mp (Finset.mem_filter.mp hn).1).1
    have hbase := (Finset.mem_filter.mp hn).2
    have hn' := mem_active_iff.mp ha
    have hle : 503 ≤ n := hbase.trans (Nat.minFac_le (by omega))
    exact (not_lt_of_ge (show (503 : ℝ) ≤ n by exact_mod_cast hle)) (hn'.2.trans_le h)

/-- At cutoff above 512 the ninth power of 2 belongs to the first window. -/
theorem two_pow_nine_mem_firstPowers {A : ℝ} (h : 512 < Real.exp (2 * A)) :
    512 ∈ firstPowers A := by
  have hm := (pow_mem_firstPowers_iff (A := A) Nat.prime_two (by decide : 0 < 9)).2
    ⟨by decide, by norm_num; exact h⟩
  norm_num at hm ⊢
  exact hm

/-- When all 95 bases first fit, these are exactly the additional powers. -/
theorem higherPowers_at_first_full_window {A : ℝ}
    (hlo : 499 < Real.exp (2 * A)) (hhi : Real.exp (2 * A) ≤ 503) :
    (firstPowers A).filter (fun n => ¬ n.Prime) =
      {4, 8, 9, 16, 25, 27, 32, 49, 64, 81, 121, 125, 128, 169, 243, 256, 289, 343, 361} := by
  have hs : firstPowers A = (Finset.Ico 2 503).filter IsPrimePow := by
    ext n
    simp only [firstPowers, supportedPowers, Finset.mem_filter, mem_active_iff, Finset.mem_Ico]
    constructor
    · rintro ⟨⟨⟨h₂, hcut⟩, hp⟩, _⟩
      exact ⟨⟨h₂, by exact_mod_cast hcut.trans_le hhi⟩, hp⟩
    · rintro ⟨⟨h₂, hl⟩, hp⟩
      have hn : n ≤ 499 := by
        by_contra! hn
        interval_cases n <;> exact (by decide +kernel : ¬ IsPrimePow _) hp
      refine ⟨⟨⟨h₂, ?_⟩, hp⟩, (Nat.minFac_le (by omega)).trans_lt hl⟩
      exact (show (n : ℝ) ≤ 499 by exact_mod_cast hn).trans_lt hlo
  rw [hs]
  decide +kernel

variable {q : ℕ}

/-- Keep the dual phase and test correlation as a complex atom. The real part
and its reflected factor of two are applied only in the signed readout. -/
def primeAtom (χ : DirichletCharacter ℂ q) (C : ℕ → ℂ) (n : ℕ) : ℂ :=
  (primeWeight n : ℂ) * (conj (χ n) * C n)

def primeReadout (s : Finset ℕ) (atoms : ℕ → ℂ) : ℝ :=
  2 * ∑ n ∈ s, (atoms n).re

theorem abs_primeReadout_sub_le (s : Finset ℕ) (a b : ℕ → ℂ) :
    |primeReadout s a - primeReadout s b| ≤ 2 * ∑ n ∈ s, ‖a n - b n‖ := by
  unfold primeReadout
  rw [← mul_sub, ← Finset.sum_sub_distrib, abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun n _ => ?_)
  rw [← Complex.sub_re]
  exact Complex.abs_re_le_norm _

theorem twistedPrime_eq_window_add_later (A : ℝ) (χ : DirichletCharacter ℂ q) (C : ℕ → ℂ) :
    twistedPrime A χ C = primeReadout (firstPowers A) (primeAtom χ C) +
      primeReadout (laterPowers A) (primeAtom χ C) := by
  have hs : ∑ n ∈ supportedPowers A, (primeAtom χ C n).re =
      ∑ n ∈ activePrimePowers A, (primeAtom χ C n).re := by
    apply Finset.sum_subset (Finset.filter_subset _ _)
    intro n hn hnot
    have hp : ¬ IsPrimePow n := fun h => hnot (Finset.mem_filter.mpr ⟨hn, h⟩)
    simp [primeAtom, primeWeight, ArithmeticFunction.vonMangoldt_apply, hp]
  unfold twistedPrime primeReadout firstPowers laterPowers
  rw [← mul_add]
  congr 1
  simp only [← not_lt]
  rw [Finset.sum_filter_add_sum_filter_not, hs]
  simp [primeAtom, Complex.mul_re]

/-- The omitted signed prime contribution, even for complex phases, is bounded
by its positive von Mangoldt mass times the original test energy. -/
theorem abs_later_readout_le (A : ℝ) (χ : DirichletCharacter ℂ q) {f : ℝ → ℂ}
    (hf : MeasureTheory.MemLp f 2 MeasureTheory.volume) :
    |primeReadout (laterPowers A) (primeAtom χ (fun n => correlation f (Real.log n)))| ≤
      (2 * ∑ n ∈ laterPowers A, primeWeight n) * energy f := by
  unfold primeReadout
  rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2), mul_assoc, Finset.sum_mul]
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun n _ => ?_)
  calc
    |(primeAtom χ (fun n => correlation f (Real.log n)) n).re| ≤
        ‖primeAtom χ (fun n => correlation f (Real.log n)) n‖ := Complex.abs_re_le_norm _
    _ = primeWeight n * (‖χ n‖ * ‖correlation f (Real.log n)‖) := by
      rw [primeAtom, norm_mul, Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg (primeWeight_nonneg _), norm_mul, Complex.norm_conj]
    _ ≤ primeWeight n * energy f := by
      apply mul_le_mul_of_nonneg_left _ (primeWeight_nonneg n)
      exact (mul_le_of_le_one_left (norm_nonneg _) (DirichletCharacter.norm_le_one χ n)).trans
        (norm_correlation_le_energy hf _)

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
