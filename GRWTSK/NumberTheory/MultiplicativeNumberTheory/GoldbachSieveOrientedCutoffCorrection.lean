/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachFiniteSieveBoundaryCorrection

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Above all excluded primes, the first boundary coordinate cannot be
excluded. The opposite-coordinate correction survives. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachSieveOrientedCutoffCorrection
open GoldbachBoundarySignedPrimeMasks GoldbachFiniteSieveUpperComparison
open GoldbachFiniteSieveBoundaryCorrection GoldbachFullCutoffBoundarySplit

theorem excluded_first_atom_zero (S : Finset ℕ) (X N p : ℕ)
    (hS : ∀ ℓ ∈ S, ℓ≤X) (hp : p ∈ S) : actualBoundaryAtom X N p=0 := by
  have hX : ¬X<p := not_lt.mpr (hS p hp)
  simp [actualBoundaryAtom,boundaryLogAtom,hX]

theorem cutoff_correction_right_only (S : Finset ℕ) (X N p : ℕ)
    (hS : ∀ ℓ ∈ S, ℓ≤X) :
    excludedBoundaryCorrection S X N p =
      if N-p ∈ S then actualBoundaryAtom X N p else 0 := by
  by_cases hp : p ∈ S
  · have hz := excluded_first_atom_zero S X N p hS hp
    simp [excludedBoundaryCorrection,hp,hz]
  · simp [excludedBoundaryCorrection,hp]

theorem full_boundary_oriented_sieve_split (S : Finset ℕ) (X N : ℕ)
    (hS : ∀ ℓ ∈ S, ℓ≤X) :
    firstBoundaryMass X N =
      (∑ p ∈ Finset.range (N+1), regularBoundaryAtom S X N p) +
      ∑ p ∈ Finset.range (N+1),
        if N-p ∈ S then actualBoundaryAtom X N p else 0 := by
  rw [full_boundary_regular_correction S X N]
  congr 1
  apply Finset.sum_congr rfl
  intro p _
  exact cutoff_correction_right_only S X N p hS

theorem full_boundary_oriented_sieve_upper (S : Finset ℕ) (X N : ℕ)
    (hprime : ∀ ℓ ∈ S, Nat.Prime ℓ) (hS : ∀ ℓ ∈ S, ℓ≤X) :
    firstBoundaryMass X N ≤
      (∑ p ∈ Finset.range (N+1), survivorBoundaryAtom S X N p) +
      ∑ p ∈ Finset.range (N+1),
        if N-p ∈ S then actualBoundaryAtom X N p else 0 := by
  rw [full_boundary_oriented_sieve_split S X N hS]
  exact add_le_add_right (regular_boundary_le_survivor S hprime X N) _

/- No factor two is introduced in this oriented boundary: the surviving
exception is the second coordinate only. This remains an upper comparison,
not a lower prime-pair supplier or a centered distribution estimate. -/
end GRWTSK.NumberTheory.Primes.GoldbachSieveOrientedCutoffCorrection
