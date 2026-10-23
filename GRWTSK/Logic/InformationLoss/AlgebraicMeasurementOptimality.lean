/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Not a public root import.
-/
import GRWTSK.Logic.InformationLoss.AlgebraicKernelComplement

/-!
# Sharpness and lower bound for algebraic added measurements

When the algebraic complement existence chain is accepted, it supplies a
jointly injective added measurement with codomain exactly the old kernel.
Every jointly injective added linear measurement must have at least that
finrank. These two quantifiers give optimality within this algebraic
measurement class. Neither continuity nor effective selection follows.

This leaf transitively depends on the still-unverified pinned Mathlib
complement/projection APIs: it is NOT an independent proof receipt.
-/
set_option autoImplicit false
noncomputable section

universe u v w
namespace GRWTSK.Logic.InformationLoss

variable {K : Type*} [Field K]
variable {V : Type u} [AddCommGroup V] [Module K V]
variable {Y : Type v} [AddCommGroup Y] [Module K Y]
variable {W : Type w} [AddCommGroup W] [Module K W]

/-- Every extra output space of a jointly injective linear observation
has finrank at least that of the original invisible directions. -/
theorem every_joint_measurement_meets_kernel_bound
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W)
    (hpair : Function.Injective (pairedLinearObservation P A)) :
    Module.finrank K P.ker ≤ Module.finrank K W := by
  exact old_kernel_finrank_le_extra_finrank P A hpair

/-- There exists an algebraic added observation attaining the bound:
its target is literally the old kernel, so the rank equality is
definitionally exact. The nontrivial content is joint injectivity. -/
theorem exists_joint_measurement_at_kernel_capacity
    (P : V →ₗ[K] Y) :
    ∃ Q : V →ₗ[K] P.ker,
      Function.Injective (pairedLinearObservation P Q) ∧
        Module.finrank K (P.ker) = Module.finrank K (P.ker) := by
  obtain ⟨Q, hQ⟩ := exists_sharp_extra_algebraically P
  exact ⟨Q, hQ, rfl⟩

end GRWTSK.Logic.InformationLoss
