/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachDisjointSurvivorFailureSectors

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Source-disjoint atoms retain cross-index moment terms.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachSurvivorFailureCrossMoment
open GoldbachDisjointSurvivorFailureSectors GoldbachActualSurvivorDeficit

def leftFailureMass (S : Finset ℕ) (X N : ℕ) : ℝ :=
  ∑ p ∈ Finset.range (N+1),leftFailureAtom S X N p

def rightFailureMass (S : Finset ℕ) (X N : ℕ) : ℝ :=
  ∑ p ∈ Finset.range (N+1),rightFailureAfterPrimeAtom S X N p

theorem actual_failure_cross_index (S : Finset ℕ) (X N : ℕ) :
    leftFailureMass S X N*rightFailureMass S X N=
      ∑ p ∈ Finset.range (N+1), ∑ r ∈ Finset.range (N+1),
        if p=r then 0 else leftFailureAtom S X N p*rightFailureAfterPrimeAtom S X N r := by
  unfold leftFailureMass rightFailureMass
  rw [Finset.sum_mul_sum]
  apply Finset.sum_congr rfl
  intro p _
  apply Finset.sum_congr rfl
  intro r _
  by_cases he : p=r
  · subst r
    simp [actual_failure_atoms_disjoint]
  · simp [he]

theorem actual_deficit_square (S : Finset ℕ) (X N : ℕ) :
    (compositeSurvivorMass S X N)^2=(leftFailureMass S X N)^2+
      2*leftFailureMass S X N*rightFailureMass S X N+(rightFailureMass S X N)^2 := by
  rw [actual_failure_mass_split]
  unfold leftFailureMass rightFailureMass
  ring

theorem actual_failure_window_moment (S : Finset ℕ) (X : ℕ) (W : Finset ℕ)
    (ω : ℕ → ℝ) :
    (∑ N ∈ W,ω N*(compositeSurvivorMass S X N)^2)=
      (∑ N ∈ W,ω N*(leftFailureMass S X N)^2)+
      2*(∑ N ∈ W,ω N*leftFailureMass S X N*rightFailureMass S X N)+
      ∑ N ∈ W,ω N*(rightFailureMass S X N)^2 := by
  simp only [Finset.mul_sum,← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro N _
  rw [actual_deficit_square]
  ring

/- Atomic disjointness removes only p=r from the mixed double sum. Every
p≠r term remains, as does the full window cross moment. Arithmetic bounds
for these actual correlated sources and strict targetwise margins remain
unsupplied. No independence or average-to-every-target inference is used. -/
end GRWTSK.NumberTheory.Primes.GoldbachSurvivorFailureCrossMoment
