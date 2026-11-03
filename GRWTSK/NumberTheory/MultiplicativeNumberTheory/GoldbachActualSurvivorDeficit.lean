/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachSieveCorrectedEvenSource

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact actual composite-survivor deficit, not a sieve lower estimate.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachActualSurvivorDeficit
open GoldbachBoundarySignedPrimeMasks GoldbachFiniteSieveUpperComparison
open GoldbachSieveCorrectedEvenSource

def compositeSurvivorAtom (S : Finset ℕ) (X N p : ℕ) : ℝ :=
  if avoidsPrimeSet S p ∧ avoidsPrimeSet S (N-p) then
    boundaryLogAtom X N p*(1-primeMask p*primeMask (N-p)) else 0

theorem avoids_excludes_membership (S : Finset ℕ) (n : ℕ)
    (hn : avoidsPrimeSet S n) : n ∉ S := by
  intro h
  exact hn n h (dvd_refl n)

theorem actual_survivor_atom_split (S : Finset ℕ)
    (hS : ∀ ℓ ∈ S, Nat.Prime ℓ) (X N p : ℕ) :
    survivorBoundaryAtom S X N p = regularBoundaryAtom S X N p+
      compositeSurvivorAtom S X N p := by
  by_cases ha : avoidsPrimeSet S p ∧ avoidsPrimeSet S (N-p)
  · have hout := And.intro (avoids_excludes_membership S p ha.1)
      (avoids_excludes_membership S (N-p) ha.2)
    simp only [survivorBoundaryAtom,regularBoundaryAtom,compositeSurvivorAtom,
      if_pos ha,if_pos hout]
    ring
  · have hz : regularBoundaryAtom S X N p=0 := by
      by_cases hout : p ∉ S ∧ N-p ∉ S
      · by_cases hp : Nat.Prime p
        · by_cases hq : Nat.Prime (N-p)
          · exact (ha ⟨prime_avoids S hS p hp hout.1,
              prime_avoids S hS (N-p) hq hout.2⟩).elim
          · simp [regularBoundaryAtom,hout,primeMask,hq]
        · simp [regularBoundaryAtom,hout,primeMask,hp]
      · simp [regularBoundaryAtom,hout]
    simp [survivorBoundaryAtom,compositeSurvivorAtom,ha,hz]

def survivorMass (S : Finset ℕ) (X N : ℕ) : ℝ :=
  ∑ p ∈ Finset.range (N+1), survivorBoundaryAtom S X N p

def compositeSurvivorMass (S : Finset ℕ) (X N : ℕ) : ℝ :=
  ∑ p ∈ Finset.range (N+1), compositeSurvivorAtom S X N p

theorem actual_survivor_mass_split (S : Finset ℕ)
    (hS : ∀ ℓ ∈ S, Nat.Prime ℓ) (X N : ℕ) :
    survivorMass S X N=regularMass S X N+compositeSurvivorMass S X N := by
  unfold survivorMass regularMass compositeSurvivorMass
  rw [← Finset.sum_add_distrib]
  exact Finset.sum_congr rfl (fun p _ => actual_survivor_atom_split S hS X N p)

theorem actual_regular_positive_iff (S : Finset ℕ)
    (hS : ∀ ℓ ∈ S, Nat.Prime ℓ) (X N : ℕ) :
    0<regularMass S X N ↔ compositeSurvivorMass S X N<survivorMass S X N := by
  rw [actual_survivor_mass_split S hS X N]
  constructor <;> intro h <;> linarith

/- A strict actual deficit bound is UNSUPPLIED. Finite residue survivor
counts do not control which surviving coordinates are composite, so they
cannot supply this regular-prime positivity criterion by themselves. -/
end GRWTSK.NumberTheory.Primes.GoldbachActualSurvivorDeficit
