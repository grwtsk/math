/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachSieveOrientedCutoffCorrection
import Mathlib.Algebra.BigOperators.Intervals

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact finite excluded-prime correction. The endpoint hypothesis S≤N
is explicit. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachExcludedPrimeReindex
open GoldbachWeighted GoldbachBoundarySignedPrimeMasks
open GoldbachFiniteSieveBoundaryCorrection

theorem finite_right_coordinate_reindex (S : Finset ℕ) (N : ℕ)
    (hSN : ∀ ℓ ∈ S, ℓ≤N) (f : ℕ → ℝ) :
    (∑ p ∈ Finset.range (N+1), if N-p ∈ S then f p else 0) =
      ∑ ℓ ∈ S, f (N-ℓ) := by
  rw [← Finset.sum_range_reflect (fun p => if N-p ∈ S then f p else 0) (N+1)]
  simp only [Nat.add_sub_cancel]
  calc
    _ = ∑ ℓ ∈ Finset.range (N+1), if ℓ ∈ S then f (N-ℓ) else 0 := by
      apply Finset.sum_congr rfl
      intro ℓ hℓ
      have hl : ℓ≤N := by simpa only [Finset.mem_range,Nat.lt_succ_iff] using hℓ
      rw [Nat.sub_sub_self hl]
    _ = ∑ ℓ ∈ S, if ℓ ∈ S then f (N-ℓ) else 0 := by
      symm
      apply Finset.sum_subset
      · intro ℓ hℓ
        exact Finset.mem_range.mpr (Nat.lt_succ_of_le (hSN ℓ hℓ))
      · intro ℓ _ hℓ
        simp [hℓ]
    _ = _ := by apply Finset.sum_congr rfl; intro ℓ hℓ; simp [hℓ]

theorem actual_excluded_prime_correction (S : Finset ℕ) (X N : ℕ)
    (hprime : ∀ ℓ ∈ S, Nat.Prime ℓ) (hSN : ∀ ℓ ∈ S, ℓ≤N) :
    (∑ p ∈ Finset.range (N+1),
      if N-p ∈ S then actualBoundaryAtom X N p else 0) =
      ∑ ℓ ∈ S, if X<N-ℓ then
        primeLogWeight (N-ℓ)*Real.log (ℓ : ℝ) else 0 := by
  rw [finite_right_coordinate_reindex S N hSN]
  apply Finset.sum_congr rfl
  intro ℓ hℓ
  have hp := hprime ℓ hℓ
  have hl := hSN ℓ hℓ
  by_cases hX : X<N-ℓ <;> by_cases hq : Nat.Prime (N-ℓ)
  all_goals simp [actualBoundaryAtom,boundaryLogAtom,primeMask,primeLogWeight,
    Nat.sub_sub_self hl,hp,hq,hX]

/- Combined with full_boundary_oriented_sieve_split when S≤X, this is the
entire surviving exception sum. No reverse sieve inequality, positive
regular-prime margin or uniform centered error is supplied. -/
end GRWTSK.NumberTheory.Primes.GoldbachExcludedPrimeReindex
