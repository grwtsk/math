# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerArithmeticPackingCoordinate

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a46244a5608a93ba6c9522e5412ac03458f0c147` · SHA-256 `e1eae36933ce0824a876225fbd2263e992334b25c16bcae41e51078923b57e80`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.MechanismPackingRecurrenceRule
import GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticScaleBijectiveWitness
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Canonical prime-power arithmetic packing coordinates

A prime-power event is represented directly by its unique prime label and a
positive exponent.  Its canonical unweighted packing coordinate is

  (k * log p, log p).

The first coordinate is the exact Archimedean logarithmic scale of the formal
p-primary exponent.  The second is the von-Mangoldt prime-power amplitude
before any test-function / explicit-formula weight is applied.

The geometric recurrence therefore no longer chooses arbitrary points once a
prime-power event is selected.  An exact explicit-formula convention may later
multiply the second coordinate by its source-derived test weight; that
transport is kept separate and source-bound.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXPLICIT_FORMULA_WEIGHT_TRANSPORT_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.ArithmeticScale

/-- One actual prime-power event p^k with k>0. -/
structure PrimePowerEvent where
  prime : PrimeIndex
  exponent : ℕ
  exponent_pos : 0 < exponent

namespace PrimePowerEvent

/-- Natural-number value p^k carried by the event. -/
def natValue (event : PrimePowerEvent) : ℕ :=
  event.prime.1 ^ event.exponent

/-- Exact logarithmic scale k log p. -/
def logScale (event : PrimePowerEvent) : ℝ :=
  (event.exponent : ℝ) * Real.log (event.prime.1 : ℝ)

/-- Raw von-Mangoldt amplitude on the prime power p^k: log p. -/
def mangoldtScale (event : PrimePowerEvent) : ℝ :=
  Real.log (event.prime.1 : ℝ)

/-- Canonical unweighted planar arithmetic coordinate. -/
def packingPoint (event : PrimePowerEvent) : PackingPoint :=
  ⟨event.logScale, event.mangoldtScale⟩

/-- The logarithmic coordinate is exactly the Archimedean realization of the
corresponding p-primary exponent in the free-abelian arithmetic scale. -/
theorem logScale_eq_archimedean_primary (event : PrimePowerEvent) :
    event.logScale =
      archimedeanLogRealization
        (pPrimaryEmbedding event.prime (event.exponent : ℤ)) := by
  rw [archimedeanLogRealization_pPrimaryEmbedding]
  norm_num [logScale]

end PrimePowerEvent

/-- A natural-number label is accepted exactly when it is represented by an
actual prime-power event. -/
def IsPrimePowerEventValue (q : ℕ) : Prop :=
  ∃ event : PrimePowerEvent, event.natValue = q

/-- Source-bound explicit-formula weighting of the raw von-Mangoldt coordinate.
The arithmetic coordinate itself is fixed; only the exact source theorem may
supply this additional weight. -/
structure ExplicitFormulaPrimePowerWeight where
  sourceId : String
  revision : String
  normalization : String
  testWeight : PrimePowerEvent → ℝ

namespace ExplicitFormulaPrimePowerWeight

/-- Weighted point used only after an exact explicit-formula normalization is
selected: (k log p, testWeight(p^k) * log p). -/
def packingPoint
    (weight : ExplicitFormulaPrimePowerWeight)
    (event : PrimePowerEvent) : PackingPoint :=
  ⟨event.logScale, weight.testWeight event * event.mangoldtScale⟩

@[simp]
theorem packingPoint_x
    (weight : ExplicitFormulaPrimePowerWeight)
    (event : PrimePowerEvent) :
    (weight.packingPoint event).x = event.logScale := by
  rfl

@[simp]
theorem packingPoint_y
    (weight : ExplicitFormulaPrimePowerWeight)
    (event : PrimePowerEvent) :
    (weight.packingPoint event).y =
      weight.testWeight event * event.mangoldtScale := by
  rfl

end ExplicitFormulaPrimePowerWeight

/-- Prime-power recurrence data: after choosing the exact source weight, the
geometry is determined by actual prime-power events rather than arbitrary
packing points. -/
structure PrimePowerCoordinateRecurrence
    (Source Local : Type*)
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local] where
  accepted : SourceBoundMechanismBridgeAccepted Source Local
  weight : ExplicitFormulaPrimePowerWeight
  initialEvent : Fin 3 → PrimePowerEvent
  initial_order01 :
    (initialEvent 0).natValue < (initialEvent 1).natValue
  initial_order12 :
    (initialEvent 1).natValue < (initialEvent 2).natValue
  nextEvent :
    Local → ℕ → ThreePointPackingState IsPrimePowerEventValue →
      PrimePowerEvent
  next_order :
    ∀ localData n state,
      state.thirdSource < (nextEvent localData n state).natValue

namespace PrimePowerCoordinateRecurrence

/-- Initial three-point state determined by the first three actual prime-power
events and the selected exact source weight. -/
def initialState
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (data : PrimePowerCoordinateRecurrence Source Local) :
    ThreePointPackingState IsPrimePowerEventValue where
  first := data.weight.packingPoint (data.initialEvent 0)
  second := data.weight.packingPoint (data.initialEvent 1)
  third := data.weight.packingPoint (data.initialEvent 2)
  firstSource := (data.initialEvent 0).natValue
  secondSource := (data.initialEvent 1).natValue
  thirdSource := (data.initialEvent 2).natValue
  firstSource_ok := ⟨data.initialEvent 0, rfl⟩
  secondSource_ok := ⟨data.initialEvent 1, rfl⟩
  thirdSource_ok := ⟨data.initialEvent 2, rfl⟩

/-- Specialize the generic packing recurrence program.  Once an event is
selected, both the point and source label are forced by that event. -/
def toPackingProgram
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (data : PrimePowerCoordinateRecurrence Source Local) :
    SourceBoundPackingRecurrenceProgram Source Local where
  accepted := data.accepted
  IsPrimePowerSource := IsPrimePowerEventValue
  initial := fun _ => data.initialState
  nextPoint := fun localData n state =>
    data.weight.packingPoint (data.nextEvent localData n state)
  nextSource := fun localData n state =>
    (data.nextEvent localData n state).natValue
  nextSource_ok := fun localData n state =>
    ⟨data.nextEvent localData n state, rfl⟩

/-- The generated recurrence's new point is definitionally the canonical
weighted coordinate of the selected next prime-power event. -/
@[simp]
theorem nextPoint_eq_weighted_primePower_coordinate
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (data : PrimePowerCoordinateRecurrence Source Local)
    (localData : Local) (n : ℕ)
    (state : ThreePointPackingState IsPrimePowerEventValue) :
    data.toPackingProgram.nextPoint localData n state =
      data.weight.packingPoint (data.nextEvent localData n state) := by
  rfl

/-- The generated source label is the actual natural prime-power value. -/
@[simp]
theorem nextSource_eq_primePower_value
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (data : PrimePowerCoordinateRecurrence Source Local)
    (localData : Local) (n : ℕ)
    (state : ThreePointPackingState IsPrimePowerEventValue) :
    data.toPackingProgram.nextSource localData n state =
      (data.nextEvent localData n state).natValue := by
  rfl

/-- The selected next event strictly advances beyond the current third source
label; ordering is an arithmetic property, not a geometric fit. -/
theorem nextEvent_strictly_advances
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (data : PrimePowerCoordinateRecurrence Source Local)
    (localData : Local) (n : ℕ)
    (state : ThreePointPackingState IsPrimePowerEventValue) :
    state.thirdSource <
      data.toPackingProgram.nextSource localData n state :=
  data.next_order localData n state

end PrimePowerCoordinateRecurrence

end GRWTSK.RiemannHypothesis
```
