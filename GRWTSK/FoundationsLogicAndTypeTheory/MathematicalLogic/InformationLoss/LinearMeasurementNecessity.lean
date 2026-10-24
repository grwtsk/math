/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Not imported by public root.
-/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss.LinearRedundantMeasurements

/-!
# Measurement necessity witnessed by invisible directions

An added observation capable of recovering a readout must detect each
old-invisible direction on which that readout is nonzero. This gives a
source-level necessary condition without dimension, rank or topology.
It is not a minimal-sensor-count theorem.
-/
set_option autoImplicit false
universe u v w t
namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss

variable {K : Type*} [Field K]
variable {V : Type u} [AddCommGroup V] [Module K V]
variable {Y : Type v} [AddCommGroup Y] [Module K Y]
variable {W : Type w} [AddCommGroup W] [Module K W]
variable {Z : Type t} [AddCommGroup Z] [Module K Z]

/-- A paired measurement that recovers R must detect an old invisible
direction whenever the desired readout detects that direction. -/
theorem extra_detects_relevant_invisible_direction
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W) (R : V →ₗ[K] Z)
    (hrecover : ∀ h : V, P h = 0 → A h = 0 → R h = 0)
    (h : V) (hp : P h = 0) (hr : R h ≠ 0) :
    A h ≠ 0 := by
  intro ha
  exact hr (hrecover h hp ha)

/-- A concrete old-invisible direction that remains invisible to the
added measurement but not to R refutes unique reconstruction on the image. -/
theorem unresolved_direction_refutes_unique_reconstruction
    (P : V →ₗ[K] Y) (A : V →ₗ[K] W) (R : V →ₗ[K] Z)
    (h : V) (hp : P h = 0) (ha : A h = 0) (hr : R h ≠ 0) :
    ¬ (∃! decode : Set.range (pairedLinearObservation P A) → Z,
       (fun x : V => R x) =
         decode ∘ observedProfile (pairedLinearObservation P A)) := by
  intro hunique
  have hk :=
    (linear_augmented_unique_reconstruction_iff P A R).1 hunique
  exact hr (hk h hp ha)

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss
