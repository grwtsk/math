/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Standalone leaf. No public root import.
-/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss.LinearMeasurementNecessity

/-!
# Exact joint-observation injectivity and its kernel test

An additional linear measurement separates all source vectors precisely
when the only common invisible direction is zero. This is a necessary
foundation for finite-dimensional measurement counts, not a rank theorem.
-/
set_option autoImplicit false

universe u v w
namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss

variable {K : Type*} [Field K]
variable {V : Type u} [AddCommGroup V] [Module K V]
variable {Y : Type v} [AddCommGroup Y] [Module K Y]
variable {W : Type w} [AddCommGroup W] [Module K W]

/-- Two linear observations distinguish all source vectors precisely when
they have no nonzero jointly invisible direction. -/
theorem pairedLinear_injective_iff_common_kernel_zero
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W) :
    Function.Injective (pairedLinearObservation P A) ↔
      ∀ h : V, P h = 0 → A h = 0 → h = 0 := by
  constructor
  · intro hinj h hp ha
    apply hinj
    simp [pairedLinearObservation, hp, ha]
  · intro hkernel x y hpair
    have hp : P x = P y := congrArg Prod.fst hpair
    have ha : A x = A y := congrArg Prod.snd hpair
    have hP : P (x - y) = 0 := by
      rw [map_sub, sub_eq_zero]
      exact hp
    have hA : A (x - y) = 0 := by
      rw [map_sub, sub_eq_zero]
      exact ha
    exact sub_eq_zero.mp (hkernel (x - y) hP hA)

/-- A jointly invisible nonzero direction certifies noninjectivity,
irrespective of how much redundancy is present in either observation. -/
theorem pairedLinear_not_injective_of_common_kernel
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W)
    (h : V) (hp : P h = 0) (ha : A h = 0) (hne : h ≠ 0) :
    ¬ Function.Injective (pairedLinearObservation P A) := by
  intro hinj
  exact hne ((pairedLinear_injective_iff_common_kernel_zero P A).1 hinj h hp ha)

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss
