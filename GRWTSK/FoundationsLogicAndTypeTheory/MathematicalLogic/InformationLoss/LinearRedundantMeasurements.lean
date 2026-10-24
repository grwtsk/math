/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED; no root import.
-/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss.LinearObservationKernels

/-!
# Redundant linear measurements and invisible directions

A second linear measurement A obtained by postcomposing P cannot shrink
the common kernel. Conversely, an added measurement that removes a
particular invisible direction does not factor through P.

This is pointwise algebra only. No minimal measurement count, norm bound,
closed range, stability or spectral/analytic assertion is made.
-/
set_option autoImplicit false

universe u v w t
namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss

variable {K : Type*} [Field K]
variable {V : Type u} [AddCommGroup V] [Module K V]
variable {Y : Type v} [AddCommGroup Y] [Module K Y]
variable {W : Type w} [AddCommGroup W] [Module K W]
variable {Z : Type t} [AddCommGroup Z] [Module K Z]

/-- Postprocessing an existing linear observation adds no new invisible
direction information. -/
theorem postprocessed_linear_observation_kernel_iff
    (P : V →ₗ[K] Y) (B : Y →ₗ[K] W) (h : V) :
    P h = 0 ∧ (B.comp P) h = 0 ↔ P h = 0 := by
  constructor
  · exact And.left
  · intro hp
    constructor
    · exact hp
    · simp [LinearMap.comp_apply, hp]

/-- Adding postprocessed observations cannot repair a kernel-containment
failure: recovery of R from the pair is equivalent to recovery from P. -/
theorem postprocessed_augmented_reconstruction_iff
    (P : V →ₗ[K] Y) (B : Y →ₗ[K] W) (R : V →ₗ[K] Z) :
    (∀ h : V, P h = 0 → (B.comp P) h = 0 → R h = 0) ↔
      (∀ h : V, P h = 0 → R h = 0) := by
  constructor
  · intro ha h hp
    exact ha h hp (by simp [LinearMap.comp_apply, hp])
  · intro hr h hp _
    exact hr h hp

/-- Detecting an old invisible direction certifies that the additional
linear observation cannot itself be a postprocessing of the old one. -/
theorem detecting_invisible_direction_not_postprocessed
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W)
    (h : V) (hp : P h = 0) (ha : A h ≠ 0) :
    ¬ ∃ B : Y →ₗ[K] W, A = B.comp P := by
  rintro ⟨B, hfactor⟩
  apply ha
  rw [hfactor]
  simp [LinearMap.comp_apply, hp]

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss
