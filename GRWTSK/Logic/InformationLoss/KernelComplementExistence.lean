/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No root import.
-/
import GRWTSK.Logic.InformationLoss.KernelCoordinateCertificate

/-!
# Kernel retraction from an explicit subspace complement

A supplied complement S to ker P gives a decomposition v = k + s,
with k in ker P and s in S. Its kernel component defines a unique
linear retraction. The proof below uses Mathlib's submodule projection
onto the kernel along its supplied complement.

This is a genuine existence theorem **under IsCompl**. It does not
derive a complement from finite dimensionality; that next supplier
remains separate. No topological or analytic boundedness follows.
-/
set_option autoImplicit false
noncomputable section

universe u v
namespace GRWTSK.Logic.InformationLoss

variable {K : Type*} [Field K]
variable {V : Type u} [AddCommGroup V] [Module K V]
variable {Y : Type v} [AddCommGroup Y] [Module K Y]

/-- An explicit direct-sum complement supplies a linear retraction
from the source to its original invisible subspace. -/
theorem exists_kernel_retraction_of_isCompl
    (P : V →ₗ[K] Y)
    (S : Submodule K V)
    (hc : IsCompl P.ker S) :
    ∃ Q : V →ₗ[K] P.ker,
      ∀ x : P.ker, Q x.1 = x := by
  let Q : V →ₗ[K] P.ker := Submodule.linearProjOfIsCompl P.ker S hc
  refine ⟨Q, ?_⟩
  intro x
  exact Submodule.linearProjOfIsCompl_apply_left hc x

/-- With the supplied complement, there exists a sharp linear
additional measurement having the old kernel as its output. -/
theorem exists_sharp_measurement_of_isCompl
    (P : V →ₗ[K] Y)
    (S : Submodule K V)
    (hc : IsCompl P.ker S) :
    ∃ Q : V →ₗ[K] P.ker,
      Function.Injective (pairedLinearObservation P Q) := by
  obtain ⟨Q, hQ⟩ := exists_kernel_retraction_of_isCompl P S hc
  exact ⟨Q, sharp_extra_of_kernel_retraction P Q hQ⟩

end GRWTSK.Logic.InformationLoss
