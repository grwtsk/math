import Boolean.Cube.ListTools

/-!
# Null-centered direction frames

Dimension-parametric generalization of the binary directed edge case. A
direction frame is finite syntax/data: it does not construct a sphere, a
prism, a prismatic site, or an analytic object unless a realization
certificate is supplied. Finite geometry syntax is not prismatic theorem
authority.

Object index: `DirectionFrame`, `OppositeDirectionPair`, `DirectionOrbit`,
`binaryDirectionFrame`, `binary_opposite_involutive`.
-/

universe u

namespace Boolean
namespace Cube
namespace PrismaticGeometry

/--
A null-centered direction frame: a finite dimension tag, a direction type
with an opposite involution, polarity grades, and a dyadic/rational phase
coordinate around the null point. The `directionIndexSound` field is
bookkeeping metadata for the indexing map.
-/
structure DirectionFrame where
  dim : Nat
  Direction : Type u
  directionIndex : Direction → Nat
  directionIndexSound : Prop
  directionIndexProof : directionIndexSound

  nullLabel : String

  opposite : Direction → Direction
  opposite_involutive :
    ∀ d : Direction, opposite (opposite d) = d

  polarity : Direction → Int

  /-- A finite denominator for full rotation around the null point. For the
  binary circle this is 2 half-turns; for an m-gon it is m arcs. -/
  fullTurnDenominator : Nat
  fullTurnPositive : fullTurnDenominator > 0

  /-- Directional phase coordinate as an integer numerator modulo
  `fullTurnDenominator`. This is syntax/metadata unless interpreted by a
  phase realization. -/
  phaseNumerator : Direction → Int

/-- A pair of opposite directions in a frame. -/
structure OppositeDirectionPair (F : DirectionFrame) where
  forward : F.Direction
  backward : F.Direction
  backward_eq_opposite : backward = F.opposite forward

/-- A finite orbit of directions cycling around the null point. The cycling
claim is a supplied proof field. -/
structure DirectionOrbit (F : DirectionFrame) where
  directions : List F.Direction
  cyclesAroundNull : Prop
  cyclesAroundNullProof : cyclesAroundNull

/-! ## Binary specialization -/

/-- The two binary directions `[0,1]` and `[1,0]`. -/
inductive BinaryDirection where
  | zeroToOne
  | oneToZero
deriving Repr, DecidableEq

/-- The dimension-1 binary direction frame: two opposite half-turns around
the balanced binary null point. -/
def binaryDirectionFrame : DirectionFrame where
  dim := 1
  Direction := BinaryDirection
  directionIndex := fun d =>
    match d with
    | .zeroToOne => 0
    | .oneToZero => 1
  directionIndexSound := True
  directionIndexProof := trivial
  nullLabel := "balanced binary null point"
  opposite := fun d =>
    match d with
    | .zeroToOne => .oneToZero
    | .oneToZero => .zeroToOne
  opposite_involutive := by
    intro d
    cases d <;> rfl
  polarity := fun d =>
    match d with
    | .zeroToOne => 1
    | .oneToZero => -1
  fullTurnDenominator := 2
  fullTurnPositive := by decide
  phaseNumerator := fun d =>
    match d with
    | .zeroToOne => 0
    | .oneToZero => 1

/-- The binary opposite involution, proved directly. -/
theorem binary_opposite_involutive :
    ∀ d : binaryDirectionFrame.Direction,
      binaryDirectionFrame.opposite
        (binaryDirectionFrame.opposite d) = d :=
  binaryDirectionFrame.opposite_involutive

/-- The binary opposite pair `[0,1]` / `[1,0]`. -/
def binaryOppositeDirectionPair :
    OppositeDirectionPair binaryDirectionFrame where
  forward := BinaryDirection.zeroToOne
  backward := BinaryDirection.oneToZero
  backward_eq_opposite := rfl

end PrismaticGeometry
end Cube
end Boolean
