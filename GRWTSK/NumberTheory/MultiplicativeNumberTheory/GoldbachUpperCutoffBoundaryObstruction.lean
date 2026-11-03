/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachAllCutoffWindowBoundary

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! At the upper cutoff endpoint, the truncated source has only its diagonal.
Composite cutoffs leave all full-source positivity in the boundary.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachUpperCutoffBoundaryObstruction
open GoldbachWeighted GoldbachTruncatedOddAggregate GoldbachFullCutoffBoundarySplit
open GoldbachAllCutoffWindowBoundary

theorem upper_cutoff_single_diagonal (X : ℕ) :
    truncatedOddMass X (2*X)=oddPrimeWeight X ^ 2 := by
  unfold truncatedOddMass
  rw [Finset.sum_eq_single (X,X)]
  · simp [show X+X=2*X by omega,pow_two]
  · intro uv hu hne
    have hb := mem_goldbachBox.mp hu
    have hs : uv.1+uv.2 ≠ 2*X := by
      intro he
      have h₁ : uv.1=X := by omega
      have h₂ : uv.2=X := by omega
      exact hne (Prod.ext h₁ h₂)
    simp [hs]
  · intro h
    exact (h (mem_goldbachBox.mpr ⟨le_rfl,le_rfl⟩)).elim

theorem composite_cutoff_truncated_zero (X : ℕ) (hX : ¬ Nat.Prime X) :
    truncatedOddMass X (2*X)=0 := by
  rw [upper_cutoff_single_diagonal]
  simp [oddPrimeWeight,primeLogWeight,hX]

theorem composite_endpoint_full_boundary (X : ℕ) (hlarge : 2<X)
    (hX : ¬ Nat.Prime X) :
    goldbachLogMass (2*X)=2*firstBoundaryMass X (2*X) := by
  rw [full_even_source_any_cutoff X (2*X) (le_refl _) (by omega)
    (by omega),composite_cutoff_truncated_zero X hX,zero_add]

end GRWTSK.NumberTheory.Primes.GoldbachUpperCutoffBoundaryObstruction
