import Boolean.Cube.PrismaticGeometry.DirectionFrame

/-!
# Angles as ratios around the null point

Angles are finite ratios: an integer numerator over a positive denominator
of arcs in one full turn around the null point. No complex analytic theorem
is asserted here; an "e^{πi}-style" interpretation is a `PhaseRealization`
certificate, never a built-in theorem. Finite geometry syntax is not
prismatic theorem authority.

Object index: `AngleRatio`, `AngleRatio.fullTurn`, `AngleRatio.zero`,
`DirectionFrame.angleOf`, `DirectionFrame.orientedAngle`,
`binary_zeroToOne_to_oneToZero_half_turn`, `PhaseRealization`.
-/

universe u

namespace Boolean
namespace Cube
namespace PrismaticGeometry

/-- A finite angle ratio around the null point. -/
structure AngleRatio where
  numerator : Int
  denominator : Nat
  denominatorPositive : denominator > 0
deriving Repr

/-- One full turn, expressed with denominator `d`. -/
def AngleRatio.fullTurn (d : Nat) (h : d > 0) : AngleRatio :=
  { numerator := Int.ofNat d
    denominator := d
    denominatorPositive := h }

/-- The zero angle, expressed with denominator `d`. -/
def AngleRatio.zero (d : Nat) (h : d > 0) : AngleRatio :=
  { numerator := 0
    denominator := d
    denominatorPositive := h }

/-- The angle coordinate of a direction in its frame. -/
def DirectionFrame.angleOf
    (F : DirectionFrame)
    (d : F.Direction) : AngleRatio :=
  { numerator := F.phaseNumerator d
    denominator := F.fullTurnDenominator
    denominatorPositive := F.fullTurnPositive }

/-- The oriented angle from one direction to another. -/
def DirectionFrame.orientedAngle
    (F : DirectionFrame)
    (a b : F.Direction) : AngleRatio :=
  { numerator := F.phaseNumerator b - F.phaseNumerator a
    denominator := F.fullTurnDenominator
    denominatorPositive := F.fullTurnPositive }

/-- In the binary frame, the oriented angle from `[0,1]` to `[1,0]` is
measured in half-turns. -/
theorem binary_zeroToOne_to_oneToZero_half_turn :
    (binaryDirectionFrame.orientedAngle
      BinaryDirection.zeroToOne
      BinaryDirection.oneToZero).denominator = 2 :=
  rfl

/--
A phase realization of a direction frame into a target carrier. Unit-circle
membership, full-turn periodicity, and the opposite-is-half-turn property
are explicit proof fields; nothing analytic is built in.
-/
structure PhaseRealization (F : DirectionFrame) (Target : Type u) where
  phase : F.Direction → Target
  unitCircleSound : Prop
  unitCircleProof : unitCircleSound
  fullTurnSound : Prop
  fullTurnProof : fullTurnSound
  oppositeIsHalfTurn : Prop
  oppositeIsHalfTurnProof : oppositeIsHalfTurn

end PrismaticGeometry
end Cube
end Boolean
