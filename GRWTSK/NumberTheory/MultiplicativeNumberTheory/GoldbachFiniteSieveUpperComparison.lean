/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachBoundaryMarginalLowerBound

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual prime support implies finite sieve support outside the excluded
primes. The weighted comparison is an upper bound only.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachFiniteSieveUpperComparison
open GoldbachWeighted GoldbachBoundarySignedPrimeMasks
open GoldbachBoundaryMarginalLowerBound

def avoidsPrimeSet (S : Finset ℕ) (n : ℕ) : Prop :=
  ∀ ℓ ∈ S, ¬ ℓ ∣ n

theorem prime_avoids (S : Finset ℕ) (hS : ∀ ℓ ∈ S, Nat.Prime ℓ)
    (p : ℕ) (hp : Nat.Prime p) (hout : p ∉ S) : avoidsPrimeSet S p := by
  intro ℓ hℓ hd
  rcases (Nat.dvd_prime hp).mp hd with h | h
  · exact (hS ℓ hℓ).ne_one h
  · exact hout (h ▸ hℓ)

def regularBoundaryAtom (S : Finset ℕ) (X N p : ℕ) : ℝ :=
  if p ∉ S ∧ N-p ∉ S then
    boundaryLogAtom X N p * primeMask p * primeMask (N-p) else 0

def survivorBoundaryAtom (S : Finset ℕ) (X N p : ℕ) : ℝ :=
  if avoidsPrimeSet S p ∧ avoidsPrimeSet S (N-p) then
    boundaryLogAtom X N p else 0

theorem regular_atom_le_survivor (S : Finset ℕ)
    (hS : ∀ ℓ ∈ S, Nat.Prime ℓ) (X N p : ℕ) :
    regularBoundaryAtom S X N p ≤ survivorBoundaryAtom S X N p := by
  have hw := boundaryLogAtom_nonneg X N p
  have hs : 0 ≤ survivorBoundaryAtom S X N p := by
    unfold survivorBoundaryAtom
    split_ifs <;> positivity
  by_cases hout : p ∉ S ∧ N-p ∉ S
  · by_cases hp : Nat.Prime p
    · by_cases hq : Nat.Prime (N-p)
      · have ha := prime_avoids S hS p hp hout.1
        have hb := prime_avoids S hS (N-p) hq hout.2
        simp [regularBoundaryAtom, survivorBoundaryAtom, hout, ha, hb, primeMask, hp, hq]
      · simpa [regularBoundaryAtom, hout, primeMask, hp, hq] using hs
    · simpa [regularBoundaryAtom, hout, primeMask, hp] using hs
  · simpa [regularBoundaryAtom, hout] using hs

theorem regular_boundary_le_survivor (S : Finset ℕ)
    (hS : ∀ ℓ ∈ S, Nat.Prime ℓ) (X N : ℕ) :
    (∑ p ∈ Finset.range (N+1), regularBoundaryAtom S X N p) ≤
    ∑ p ∈ Finset.range (N+1), survivorBoundaryAtom S X N p := by
  exact Finset.sum_le_sum fun p _ => regular_atom_le_survivor S hS X N p

/- Excluded-prime pairs are retained separately by the regular predicate.
Neither a survivor count nor this upper comparison supplies a positive
actual prime-pair lower margin, or the missing centered window estimate. -/
end GRWTSK.NumberTheory.Primes.GoldbachFiniteSieveUpperComparison
