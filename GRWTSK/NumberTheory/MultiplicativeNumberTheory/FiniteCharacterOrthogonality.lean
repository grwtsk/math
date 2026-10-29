/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Tactic

/-!
# Finite character orthogonality: an explicit conditional interface

No assertion is made that arbitrary functions form Dirichlet characters,
or that an arithmetic residue filter has a multiplicative-character
expansion. Those are separate mathematical obligations.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.FiniteCharacterOrthogonality

open scoped BigOperators

noncomputable section

/-- An exact finite orthogonality relation at a target coordinate. -/
def OrthogonalAt {ι κ : Type*} [Fintype ι] [Fintype κ]
    (χ : κ → ι → ℂ) (a : ι) : Prop :=
  ∀ b : ι, (∑ k : κ, χ k b * star (χ k a)) =
    if b = a then (Fintype.card κ : ℂ) else 0

/-- Orthogonality reconstructs the selected coefficient, without
assuming any number-theoretic character structure. -/
theorem reconstruct_coefficient
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (χ : κ → ι → ℂ) (w : ι → ℂ) (a : ι)
    (hχ : OrthogonalAt χ a) :
    (Fintype.card κ : ℂ) * w a =
      ∑ k : κ, (∑ b : ι, w b * χ k b) * star (χ k a) := by
  classical
  calc
    (Fintype.card κ : ℂ) * w a =
        ∑ b : ι, w b *
          (if b = a then (Fintype.card κ : ℂ) else 0) := by
            simp
            ring
    _ = ∑ b : ι, w b * (∑ k : κ, χ k b * star (χ k a)) := by
          apply Finset.sum_congr rfl
          intro b hb
          rw [hχ b]
    _ = ∑ b : ι, ∑ k : κ, w b * χ k b * star (χ k a) := by
          apply Finset.sum_congr rfl
          intro b hb
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro k hk
          ring
    _ = ∑ k : κ, ∑ b : ι, w b * χ k b * star (χ k a) := by
          rw [Finset.sum_comm]
    _ = ∑ k : κ, (∑ b : ι, w b * χ k b) * star (χ k a) := by
          apply Finset.sum_congr rfl
          intro k hk
          rw [Finset.sum_mul]
          apply Finset.sum_congr rfl
          intro b hb
          ring

end
end GRWTSK.NumberTheory.Primes.FiniteCharacterOrthogonality
