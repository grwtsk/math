/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib.Tactic

/-!
# Integer witnesses and prime logarithm budgets

The full factorization of `n.natAbs` pays for every finite subset of prime
valuations. A two-witness consequence retains the exceptional auxiliary prime
of each witness. See `IntegerPrimeLogBudget.md` for the mathematical consumer,
source correspondence, and verification scope.
-/

namespace GRWTSK.NumberTheory.IntegerPrimeLogBudget

open scoped BigOperators

/-- Every finite partial sum of the logarithmic prime factorization is bounded
by the full sum. The totalized values also make this true at `n = 0`. -/
theorem sum_factorization_mul_log_le (n : ℕ) (s : Finset ℕ) :
    ∑ p ∈ s, (n.factorization p : ℝ) * Real.log p ≤ Real.log n := by
  classical
  let f : ℕ → ℝ := fun p => (n.factorization p : ℝ) * Real.log p
  have hf (p : ℕ) : 0 ≤ f p :=
    mul_nonneg (Nat.cast_nonneg _) (Real.log_natCast_nonneg p)
  have hzero (p : ℕ) (hp : p ∉ n.factorization.support) : f p = 0 := by
    simp only [Finsupp.mem_support_iff, not_not] at hp
    simp [f, hp]
  calc
    ∑ p ∈ s, f p ≤ ∑ p ∈ s ∪ n.factorization.support, f p :=
      Finset.sum_le_sum_of_subset_of_nonneg Finset.subset_union_left
        (fun p _ _ => hf p)
    _ = ∑ p ∈ n.factorization.support, f p :=
      (Finset.sum_subset Finset.subset_union_right (fun p _ hp => hzero p hp)).symm
    _ = Real.log n := (Real.log_nat_eq_sum_factorization n).symm

/-- The exact finite-prime logarithmic budget for an integer witness.
The theorem also holds at zero under Mathlib's totalized valuation/logarithm
conventions; applications to arithmetic witnesses use a nonzero integer. -/
theorem sum_prime_valuation_mul_log_le (n : ℤ) (s : Finset Nat.Primes) :
    ∑ p ∈ s, (padicValInt p n : ℝ) * Real.log (p : ℕ) ≤ Real.log |(n : ℝ)| := by
  classical
  have h := sum_factorization_mul_log_le n.natAbs
    (s.image (fun p : Nat.Primes => (p : ℕ)))
  rw [Finset.sum_image] at h
  · calc
      ∑ p ∈ s, (padicValInt p n : ℝ) * Real.log (p : ℕ) =
          ∑ p ∈ s, (n.natAbs.factorization (p : ℕ) : ℝ) * Real.log (p : ℕ) := by
        apply Finset.sum_congr rfl
        intro p _
        rw [Nat.factorization_def _ p.property]
        rfl
      _ ≤ Real.log (n.natAbs : ℝ) := h
      _ = Real.log |(n : ℝ)| := by rw [Nat.cast_natAbs, Int.cast_abs]
  · intro p _ q _ hpq
    exact Subtype.ext hpq

/-- Independent reconstruction of the submitted `corG_sum_log` statement,
with its original nonzero-witness hypothesis and factor order. -/
theorem prime_log_budget (n : ℤ) (_hn : n ≠ 0) (s : Finset Nat.Primes) :
    ∑ p ∈ s, Real.log (p : ℕ) * (padicValInt p n : ℝ) ≤ Real.log |(n : ℝ)| := by
  simpa only [mul_comm] using sum_prime_valuation_mul_log_le n s

/-- A pointwise valuation estimate turns into a global logarithmic budget.
No sign hypothesis on the observed quantity `a` is needed. -/
theorem weighted_sum_le_log_budget (n : ℤ) (s : Finset Nat.Primes)
    (a : Nat.Primes → ℝ) (c : ℝ) (hc : 0 ≤ c)
    (ha : ∀ p ∈ s, a p ≤ c * (padicValInt p n : ℝ)) :
    ∑ p ∈ s, Real.log (p : ℕ) * a p ≤ c * Real.log |(n : ℝ)| := by
  calc
    ∑ p ∈ s, Real.log (p : ℕ) * a p ≤
        ∑ p ∈ s, Real.log (p : ℕ) * (c * (padicValInt p n : ℝ)) :=
      Finset.sum_le_sum (fun p hp =>
        mul_le_mul_of_nonneg_left (ha p hp) (Real.log_natCast_nonneg _))
    _ = c * ∑ p ∈ s, (padicValInt p n : ℝ) * Real.log (p : ℕ) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro p _
      ring
    _ ≤ c * Real.log |(n : ℝ)| :=
      mul_le_mul_of_nonneg_left (sum_prime_valuation_mul_log_le n s) hc

/-- Two different exceptional primes are covered by two integer witnesses.
At each prime, at least one of the original valuation bounds applies. -/
theorem two_witness_log_budget (n₁ n₂ : ℤ) (s : Finset Nat.Primes)
    (a : Nat.Primes → ℝ) (p₁ p₂ : ℕ) (hp : p₁ ≠ p₂)
    (c : ℝ) (hc : 0 ≤ c)
    (h₁ : ∀ p ∈ s, (p : ℕ) ≠ p₁ → a p ≤ c * (padicValInt p n₁ : ℝ))
    (h₂ : ∀ p ∈ s, (p : ℕ) ≠ p₂ → a p ≤ c * (padicValInt p n₂ : ℝ)) :
    ∑ p ∈ s, Real.log (p : ℕ) * a p ≤
      c * (Real.log |(n₁ : ℝ)| + Real.log |(n₂ : ℝ)|) := by
  have ha (p : Nat.Primes) (hps : p ∈ s) :
      a p ≤ c * (padicValInt p n₁ : ℝ) + c * (padicValInt p n₂ : ℝ) := by
    by_cases hpp : (p : ℕ) = p₁
    · have hpp' : (p : ℕ) ≠ p₂ := fun h => hp (hpp.symm.trans h)
      exact (h₂ p hps hpp').trans (le_add_of_nonneg_left
        (mul_nonneg hc (Nat.cast_nonneg _)))
    · exact (h₁ p hps hpp).trans (le_add_of_nonneg_right
        (mul_nonneg hc (Nat.cast_nonneg _)))
  calc
    ∑ p ∈ s, Real.log (p : ℕ) * a p ≤
        ∑ p ∈ s, Real.log (p : ℕ) *
          (c * (padicValInt p n₁ : ℝ) + c * (padicValInt p n₂ : ℝ)) :=
      Finset.sum_le_sum (fun p hp =>
        mul_le_mul_of_nonneg_left (ha p hp) (Real.log_natCast_nonneg _))
    _ = c * (∑ p ∈ s, (padicValInt p n₁ : ℝ) * Real.log (p : ℕ)) +
        c * (∑ p ∈ s, (padicValInt p n₂ : ℝ) * Real.log (p : ℕ)) := by
      rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro p _
      ring
    _ ≤ c * Real.log |(n₁ : ℝ)| + c * Real.log |(n₂ : ℝ)| :=
      add_le_add (mul_le_mul_of_nonneg_left (sum_prime_valuation_mul_log_le n₁ s) hc)
        (mul_le_mul_of_nonneg_left (sum_prime_valuation_mul_log_le n₂ s) hc)
    _ = c * (Real.log |(n₁ : ℝ)| + Real.log |(n₂ : ℝ)|) := by ring

end GRWTSK.NumberTheory.IntegerPrimeLogBudget
