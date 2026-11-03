/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachFiniteSieveUpperComparison

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Both excluded-prime orientations and their intersection are retained.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachFiniteSieveBoundaryCorrection
open GoldbachWeighted GoldbachBoundarySignedPrimeMasks
open GoldbachBoundaryMarginalLowerBound GoldbachFiniteSieveUpperComparison
open GoldbachFullCutoffBoundarySplit

def actualBoundaryAtom (X N p : ℕ) : ℝ :=
  boundaryLogAtom X N p * primeMask p * primeMask (N-p)

def excludedBoundaryCorrection (S : Finset ℕ) (X N p : ℕ) : ℝ :=
  (if p ∈ S then actualBoundaryAtom X N p else 0) +
  (if N-p ∈ S then actualBoundaryAtom X N p else 0) -
  (if p ∈ S ∧ N-p ∈ S then actualBoundaryAtom X N p else 0)

theorem actual_atom_regular_correction (S : Finset ℕ) (X N p : ℕ) :
    actualBoundaryAtom X N p = regularBoundaryAtom S X N p +
      excludedBoundaryCorrection S X N p := by
  by_cases hp : p ∈ S <;> by_cases hq : N-p ∈ S
  all_goals simp [regularBoundaryAtom, excludedBoundaryCorrection,
    actualBoundaryAtom, hp, hq]

theorem full_boundary_regular_correction (S : Finset ℕ) (X N : ℕ) :
    firstBoundaryMass X N =
      (∑ p ∈ Finset.range (N+1), regularBoundaryAtom S X N p) +
      ∑ p ∈ Finset.range (N+1), excludedBoundaryCorrection S X N p := by
  rw [boundary_actual_mask_product, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p _
  exact actual_atom_regular_correction S X N p

theorem full_boundary_sieve_upper (S : Finset ℕ)
    (hS : ∀ ℓ ∈ S, Nat.Prime ℓ) (X N : ℕ) :
    firstBoundaryMass X N ≤
      (∑ p ∈ Finset.range (N+1), survivorBoundaryAtom S X N p) +
      ∑ p ∈ Finset.range (N+1), excludedBoundaryCorrection S X N p := by
  rw [full_boundary_regular_correction S X N]
  exact add_le_add_right (regular_boundary_le_survivor S hS X N) _

/- This identity works for every cutoff: neither orientation nor the
intersection can be discarded without additional support hypotheses.
The upper sieve comparison supplies no positive signed lower margin. -/
end GRWTSK.NumberTheory.Primes.GoldbachFiniteSieveBoundaryCorrection
