/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI GPT-5.6 Pro.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.SetTheory.Cardinal.Finite

set_option autoImplicit false

/-! Finite dependent witness channels over a fixed three-phase base.
These types supply no arithmetic witness contents or analytic comparison. -/

namespace GRWTSK.Geometry.ThreePlusOne

universe u v

/-- A three-phase base has exactly three fixed phase positions.  The fourth
channel is represented separately, not by extending the phase index to
`Fin 4`. -/
abbrev TrianglePhase := Fin 3

/-- A dynamically sized witness channel over a triangular base state. -/
structure DynamicWitnessChannel (TriangleState : Type u) where
  WitnessIndex : TriangleState → Type v
  finiteWitness : ∀ state, Finite (WitnessIndex state)

/-- The total witness channel is a dependent sum over the triangular base. -/
def DynamicWitnessChannel.Total {TriangleState : Type u}
    (channel : DynamicWitnessChannel.{u, v} TriangleState) : Type (max u v) :=
  Σ state : TriangleState, channel.WitnessIndex state

/-- A stage-indexed version used when witness capacity grows with a cutoff or
resolution parameter. -/
structure StagedDynamicWitnessChannel (TriangleState : Type*) where
  WitnessIndex : ℕ → TriangleState → Type*
  finiteWitness : ∀ stage state, Finite (WitnessIndex stage state)
  stabilize :
    ∀ stage state, WitnessIndex stage state →
      WitnessIndex (stage + 1) state

/-- A varying witness channel need not have the cardinality of one fixed
fourth scalar coordinate. -/
def VaryingWitnessSize {TriangleState : Type*}
    (channel : DynamicWitnessChannel TriangleState) : Prop :=
  ∃ x y : TriangleState,
    Nat.card (channel.WitnessIndex x) ≠
      Nat.card (channel.WitnessIndex y)

end GRWTSK.Geometry.ThreePlusOne
