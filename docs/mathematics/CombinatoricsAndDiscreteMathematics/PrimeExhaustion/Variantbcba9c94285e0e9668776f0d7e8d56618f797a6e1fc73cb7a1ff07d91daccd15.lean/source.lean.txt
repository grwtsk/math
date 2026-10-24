import Folder.Rebuild.AnalyticNumberTheory.SmoothNumberReindexing
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Order.Interval.Finset.Nat

/-!
# Folder.Rebuild.AnalyticNumberTheory.PrimeExhaustion

Finite prime exhaustions and coverage of initial intervals by bounded smooth
numbers.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

def primesUpTo
    (N : Nat) : Finset Nat :=
  (Finset.Icc 2 N).filter Nat.Prime

theorem mem_primesUpTo_iff
    {p N : Nat} :
    p ∈ primesUpTo N ↔ Nat.Prime p ∧ p ≤ N := by
  unfold primesUpTo
  constructor
  · intro hp
    have h := Finset.mem_filter.mp hp
    exact ⟨h.2, (Finset.mem_Icc.mp h.1).2⟩
  · intro h
    exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨h.1.two_le, h.2⟩, h.1⟩

theorem primesUpTo_prime
    {p N : Nat}
    (hp : p ∈ primesUpTo N) :
    Nat.Prime p :=
  (mem_primesUpTo_iff.mp hp).1

theorem primesUpTo_pos
    {p N : Nat}
    (hp : p ∈ primesUpTo N) :
    0 < p :=
  (primesUpTo_prime hp).pos

theorem prime_factor_mem_primesUpTo_of_dvd_le
    {p n N : Nat}
    (hp : Nat.Prime p)
    (hpn : p ∣ n)
    (hnpos : 0 < n)
    (hnN : n ≤ N) :
    p ∈ primesUpTo N := by
  rw [mem_primesUpTo_iff]
  exact ⟨hp, (Nat.le_of_dvd hnpos hpn).trans hnN⟩

theorem factorization_le_self
    {n p : Nat}
    (hn : 0 < n) :
    Nat.factorization n p ≤ n := by
  by_cases hp : Nat.Prime p
  · have hdvd : p ^ Nat.factorization n p ∣ n := by
      exact (hp.pow_dvd_iff_le_factorization hn.ne').mpr (le_refl _)
    have hv2 : Nat.factorization n p ≤ 2 ^ Nat.factorization n p :=
      le_of_lt (Nat.factorization n p).lt_two_pow_self
    have h2p : 2 ^ Nat.factorization n p ≤ p ^ Nat.factorization n p :=
      Nat.pow_le_pow_left hp.two_le (Nat.factorization n p)
    have hpn : p ^ Nat.factorization n p ≤ n :=
      Nat.le_of_dvd hn hdvd
    exact hv2.trans (h2p.trans hpn)
  · rw [Nat.factorization_eq_zero_of_not_prime n hp]
    exact Nat.zero_le n

theorem factorization_support_subset_primesUpTo
    {n N p : Nat}
    (hnpos : 0 < n)
    (hnN : n ≤ N)
    (hp : Nat.factorization n p ≠ 0) :
    p ∈ primesUpTo N := by
  have hnot := (Nat.factorization_eq_zero_iff n p).not.mp hp
  have hprime : Nat.Prime p := by
    by_contra hnp
    exact hnot (Or.inl hnp)
  have hpdvd : p ∣ n := by
    by_contra hndvd
    exact hnot (Or.inr (Or.inl hndvd))
  exact prime_factor_mem_primesUpTo_of_dvd_le hprime hpdvd hnpos hnN

theorem nat_mem_boundedSmoothNumbers_primesUpTo_self
    {n N : Nat}
    (hnpos : 0 < n)
    (hnN : n ≤ N) :
    n ∈ boundedSmoothNumbers (primesUpTo N) N := by
  classical
  let e : ExponentVector (primesUpTo N) N := fun p =>
    ⟨ Nat.factorization n p.val
    , Nat.lt_succ_of_le ((factorization_le_self hnpos).trans hnN)
    ⟩
  have heq : exponentVectorNat (primesUpTo N) N e = n := by
    unfold exponentVectorNat
    have hsupport : (Nat.factorization n).support ⊆ primesUpTo N := by
      intro p hp
      exact
        factorization_support_subset_primesUpTo hnpos hnN
          (Finsupp.mem_support_iff.mp hp)
    have hprod :
        (Nat.factorization n).prod (fun p k => p ^ k) =
          ∏ p ∈ primesUpTo N, p ^ (Nat.factorization n p) := by
      exact
        @Finsupp.prod_of_support_subset Nat Nat Nat _ _
          (Nat.factorization n) (primesUpTo N)
          hsupport (fun p k => p ^ k) (by intro i hi; simp)
    have hrec := Nat.prod_factorization_pow_eq_self hnpos.ne'
    rw [← hrec]
    rw [hprod]
    simp [e]
  rw [← heq]
  exact exponentVectorNat_mem_boundedSmoothNumbers (primesUpTo N) N e

theorem Icc_subset_boundedSmoothNumbers_primesUpTo
    (N : Nat) :
    Finset.Icc 1 N ⊆ boundedSmoothNumbers (primesUpTo N) N := by
  intro n hn
  exact
    nat_mem_boundedSmoothNumbers_primesUpTo_self
      (lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hn).1)
      (Finset.mem_Icc.mp hn).2

end AnalyticNumberTheory
end Rebuild
end Folder
