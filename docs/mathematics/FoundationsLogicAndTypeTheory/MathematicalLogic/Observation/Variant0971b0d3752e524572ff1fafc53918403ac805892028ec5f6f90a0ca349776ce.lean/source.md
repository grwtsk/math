# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.Variant0971b0d3752e524572ff1fafc53918403ac805892028ec5f6f90a0ca349776ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1e3b2bcdba00028650d8aa11dc157178245742a` · SHA-256 `0971b0d3752e524572ff1fafc53918403ac805892028ec5f6f90a0ca349776ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Foundations

universe uEntity uControl uPoint

namespace FCRS.ControlledPlane

/-- A geometric projection paired with an independent control observation. -/
structure ControlledObservation
    (Entity : Type uEntity)
    (Control : Type uControl)
    (Point : Type uPoint) where
  project : Entity → Point
  control : Entity → Control

/-- The information-bearing observation is the geometric/control pair. -/
def combinedObservation
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    (O : ControlledObservation Entity Control Point) :
    Entity → Point × Control :=
  fun x => (O.project x, O.control x)

/-- Equality of both observations separates source entities. -/
def Separating
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    (O : ControlledObservation Entity Control Point) : Prop :=
  ∀ x y,
    O.project x = O.project y →
    O.control x = O.control y →
    x = y

/-- A total decoder that is a left inverse on controlled observations. -/
structure LosslessDecoder
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    (O : ControlledObservation Entity Control Point) where
  decode : Point → Control → Entity
  leftInverse :
    ∀ x, decode (O.project x) (O.control x) = x

/--
Controlled losslessness asks only for a decoder of the combined observation.
There is intentionally no requirement concerning injectivity of `project`.
-/
def ControlledLossless
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    (O : ControlledObservation Entity Control Point) : Prop :=
  Nonempty (LosslessDecoder O)

/-- A left-inverse decoder makes the controlled observation separating. -/
theorem separating_of_leftInverseDecoder
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    {O : ControlledObservation Entity Control Point}
    (D : LosslessDecoder O) : Separating O := by
  intro x y hProject hControl
  calc
    x = D.decode (O.project x) (O.control x) :=
      (D.leftInverse x).symm
    _ = D.decode (O.project y) (O.control y) := by
      rw [hProject, hControl]
    _ = y := D.leftInverse y

/-- Only the paired geometric/control map is proved injective. -/
theorem controlled_observation_injective
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    {O : ControlledObservation Entity Control Point}
    (D : LosslessDecoder O) :
    Function.Injective (combinedObservation O) := by
  intro x y h
  exact separating_of_leftInverseDecoder D x y
    (congrArg Prod.fst h)
    (congrArg Prod.snd h)

/-- Raw deterministic normalization and transition data. -/
structure ControlTransitionData
    (Entity : Type uEntity) (Control : Type uControl) where
  normalize : Entity → Control
  evolves : Entity → Entity → Prop
  transition : Control → Control → Prop

/--
The abstract CF-06 contract.  Determinism comes from `normalize` being a
function; collision distinction and transition soundness remain explicit.
-/
structure DeterministicControlContract
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    (O : ControlledObservation Entity Control Point)
    (T : ControlTransitionData Entity Control) : Prop where
  normalized : ∀ x, T.normalize x = O.control x
  transitionSound :
    ∀ {x y}, T.evolves x y → T.transition (O.control x) (O.control y)
  separatesCollisions : Separating O

/-- Distinct entities at one geometric point must have different controls. -/
theorem control_differs_at_distinct_collision
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    {O : ControlledObservation Entity Control Point}
    (hSeparating : Separating O)
    {x y : Entity}
    (hProject : O.project x = O.project y)
    (hDistinct : x ≠ y) :
    O.control x ≠ O.control y := by
  intro hControl
  exact hDistinct (hSeparating x y hProject hControl)

/-- Observation commutes with one explicitly designated binary operation. -/
def OperationHomomorphic
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    (source : BinaryOperation Entity)
    (observed : BinaryOperation (Point × Control))
    (O : ControlledObservation Entity Control Point) : Prop :=
  ∀ x y,
    combinedObservation O (source.op x y) =
      observed.op (combinedObservation O x) (combinedObservation O y)

/-- Apply a decoder to an already paired controlled observation. -/
def decodeObserved
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    {O : ControlledObservation Entity Control Point}
    (D : LosslessDecoder O) (z : Point × Control) : Entity :=
  D.decode z.1 z.2

/-- Operation-homomorphic observation reconstructs the source operation. -/
theorem decode_operation
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    {O : ControlledObservation Entity Control Point}
    (source : BinaryOperation Entity)
    (observed : BinaryOperation (Point × Control))
    (hHom : OperationHomomorphic source observed O)
    (D : LosslessDecoder O)
    (x y : Entity) :
    decodeObserved D
      (observed.op (combinedObservation O x) (combinedObservation O y)) =
      source.op x y := by
  calc
    _ = decodeObserved D (combinedObservation O (source.op x y)) :=
      congrArg (decodeObserved D) (hHom x y).symm
    _ = source.op x y := D.leftInverse (source.op x y)

end FCRS.ControlledPlane
```
