# Complete source: GRWTSK.Geometry.ThreePlusOne.DynamicWitnessChannel

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4764826f8e834778a76d3282e3b7fe44f5c007a6` · SHA-256 `668d52c4fa39b3eedc1866b88e91e280fe57de371443687004b0bfac9f459ea6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
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
```
