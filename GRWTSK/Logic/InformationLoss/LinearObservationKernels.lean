/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No root import.
-/
import GRWTSK.Logic.InformationLoss.AugmentedRepairCriterion
import Mathlib.LinearAlgebra.Basic

/-!
# Linear observations: exact invisible directions and additional measurements

These lemmas identify the invisible directions of a paired linear observation
and connect kernel containment to constancy on its observation fibers.
Reconstruction on the *observed image* then follows through the previously
authored general fiber theorem. This is purely algebraic: it does not assert
bounded inverse, topological closure, spectral reconstruction or RH.
-/

set_option autoImplicit false
noncomputable section

universe u v w t

namespace GRWTSK.Logic.InformationLoss

variable {K : Type*} [Field K]
variable {V : Type u} [AddCommGroup V] [Module K V]
variable {Y : Type v} [AddCommGroup Y] [Module K Y]
variable {W : Type w} [AddCommGroup W] [Module K W]
variable {Z : Type t} [AddCommGroup Z] [Module K Z]

def pairedLinearObservation (P : V →ₗ[K] Y) (A : V →ₗ[K] W) :
    V → Y × W := fun x => (P x, A x)

/-- Invisible directions of a pair are exactly directions invisible to
both constituent linear observations. -/
theorem pairedLinear_zero_iff (P : V →ₗ[K] Y) (A : V →ₗ[K] W) (x : V) :
    pairedLinearObservation P A x = (0, 0) ↔ P x = 0 ∧ A x = 0 := by
  simp only [pairedLinearObservation, Prod.mk.injEq]

/-- For linear observations, the readout is constant on fibers exactly when
every invisible direction is also invisible to the readout. -/
theorem linear_fiberConstant_iff_kernelContainment
    (P : V →ₗ[K] Y) (R : V →ₗ[K] Z) :
    (∀ x y : V, P x = P y → R x = R y) ↔
      (∀ h : V, P h = 0 → R h = 0) := by
  constructor
  · intro hc h hp
    have hh := hc h 0
    simpa using hh (by simpa using hp)
  · intro hk x y hp
    have hzero : P (x - y) = 0 := by
      rw [map_sub, sub_eq_zero]
      exact hp
    have hread : R (x - y) = 0 := hk (x - y) hzero
    rw [map_sub, sub_eq_zero] at hread
    exact hread

/-- Exact criterion for reconstructing a linear readout from the paired
measurement on its actual observable image. The decoder obtained from the
generic theorem is merely a function, NOT a certified linear or continuous
map. -/
theorem linear_augmented_unique_reconstruction_iff
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W) (R : V →ₗ[K] Z) :
    (∃! decode : Set.range (pairedLinearObservation P A) → Z,
       (fun x : V => R x) =
         decode ∘ observedProfile (pairedLinearObservation P A)) ↔
      (∀ h : V, P h = 0 → A h = 0 → R h = 0) := by
  rw [existsUnique_decoder_observedProfile_iff]
  constructor
  · intro hc h hp ha
    have hz : pairedLinearObservation P A h =
        pairedLinearObservation P A 0 := by
      simp [pairedLinearObservation, hp, ha]
    have hh := hc h 0 hz
    simpa using hh
  · intro hk x y hpair
    have hp : P x = P y := congrArg Prod.fst hpair
    have ha : A x = A y := congrArg Prod.snd hpair
    have hP : P (x - y) = 0 := by
      rw [map_sub, sub_eq_zero]
      exact hp
    have hA : A (x - y) = 0 := by
      rw [map_sub, sub_eq_zero]
      exact ha
    have hR := hk (x - y) hP hA
    rw [map_sub, sub_eq_zero] at hR
    exact hR

end GRWTSK.Logic.InformationLoss
