import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring

/-!
# Euclidean runtime vocabulary

Small exact semantic records for the finite two-dimensional geometry exposed by
the client. They specify the mathematical objects; they do not prove that a
floating-point JavaScript implementation realizes them.
-/

namespace BitMatrix.Geometry.Euclidean

/-- A point of the real affine plane. -/
structure Point where
  x : ℝ
  y : ℝ

/-- Squared Euclidean distance, avoiding an unnecessary square root. -/
def squaredDistance (left right : Point) : ℝ :=
  (left.x - right.x) ^ 2 + (left.y - right.y) ^ 2

/-- A positive-radius Euclidean circle. -/
structure Circle where
  center : Point
  radius : ℝ
  radiusPositive : 0 < radius

/-- Circle membership in squared-distance form. -/
def Circle.Contains (circle : Circle) (point : Point) : Prop :=
  squaredDistance circle.center point = circle.radius ^ 2

/-- Three points together with a circle containing all three. -/
structure CircumcircleDatum where
  first : Point
  second : Point
  third : Point
  circle : Circle
  firstOnCircle : circle.Contains first
  secondOnCircle : circle.Contains second
  thirdOnCircle : circle.Contains third

/-- Display orientation is configuration, not geometric orientation. -/
inductive YAxisDirection where
  | up
  | down
  deriving DecidableEq, Repr

/-- Orientation of a directed circular arc. -/
inductive ArcOrientation where
  | clockwise
  | counterclockwise
  deriving DecidableEq, Repr

/-- A directed arc retains its circle, endpoints, and orientation. -/
structure DirectedArc where
  circle : Circle
  startPoint : Point
  endPoint : Point
  startOnCircle : circle.Contains startPoint
  endOnCircle : circle.Contains endPoint
  orientation : ArcOrientation

/-- Winding is integral; floating-point angle accumulation is only a runtime representation. -/
abbrev WindingNumber := ℤ

/-- The affine half-turn about a designated center. -/
def halfTurn (center point : Point) : Point where
  x := 2 * center.x - point.x
  y := 2 * center.y - point.y

@[simp]
theorem halfTurn_involutive (center point : Point) :
    halfTurn center (halfTurn center point) = point := by
  cases center
  cases point
  simp [halfTurn]

end BitMatrix.Geometry.Euclidean
