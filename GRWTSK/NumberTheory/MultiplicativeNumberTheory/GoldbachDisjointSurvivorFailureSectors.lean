/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachFullSurvivorDeficitMargin

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Disjoint actual arithmetic failure sectors, with no independence
assumption. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachDisjointSurvivorFailureSectors
open GoldbachBoundarySignedPrimeMasks GoldbachFiniteSieveUpperComparison
open GoldbachBoundaryMarginalLowerBound GoldbachActualSurvivorDeficit

def leftFailureAtom (S : Finset ℕ) (X N p : ℕ) : ℝ :=
  if avoidsPrimeSet S p ∧ avoidsPrimeSet S (N-p) then
    boundaryLogAtom X N p*(1-primeMask p) else 0

def rightFailureAfterPrimeAtom (S : Finset ℕ) (X N p : ℕ) : ℝ :=
  if avoidsPrimeSet S p ∧ avoidsPrimeSet S (N-p) then
    boundaryLogAtom X N p*primeMask p*(1-primeMask (N-p)) else 0

theorem actual_failure_atom_split (S : Finset ℕ) (X N p : ℕ) :
    compositeSurvivorAtom S X N p=leftFailureAtom S X N p+
      rightFailureAfterPrimeAtom S X N p := by
  unfold compositeSurvivorAtom leftFailureAtom rightFailureAfterPrimeAtom
  split_ifs <;> ring

theorem actual_failure_atoms_disjoint (S : Finset ℕ) (X N p : ℕ) :
    leftFailureAtom S X N p*rightFailureAfterPrimeAtom S X N p=0 := by
  by_cases hp : Nat.Prime p
  all_goals simp [leftFailureAtom,rightFailureAfterPrimeAtom,primeMask,hp]

theorem actual_failure_atoms_nonnegative (S : Finset ℕ) (X N p : ℕ) :
    0≤leftFailureAtom S X N p ∧ 0≤rightFailureAfterPrimeAtom S X N p := by
  have hw := boundaryLogAtom_nonneg X N p
  by_cases hp : Nat.Prime p <;> by_cases hq : Nat.Prime (N-p)
  all_goals simp [leftFailureAtom,rightFailureAfterPrimeAtom,primeMask,hp,hq]
  all_goals split_ifs <;> positivity

theorem actual_failure_mass_split (S : Finset ℕ) (X N : ℕ) :
    compositeSurvivorMass S X N=
      (∑ p ∈ Finset.range (N+1),leftFailureAtom S X N p)+
      ∑ p ∈ Finset.range (N+1),rightFailureAfterPrimeAtom S X N p := by
  unfold compositeSurvivorMass
  rw [← Finset.sum_add_distrib]
  exact Finset.sum_congr rfl (fun p _ => actual_failure_atom_split S X N p)

/- The first sector includes both-composite survivors; the second requires
an actual prime first coordinate and a nonprime second coordinate. Their
pointwise product vanishes, but products of their total masses need not.
Their sum still needs a strict arithmetic upper margin at each target;
no sieve count or independence assertion supplies that estimate. -/
end GRWTSK.NumberTheory.Primes.GoldbachDisjointSurvivorFailureSectors
