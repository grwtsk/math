# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Primitive.Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3379ab09b4ede1424418336ca5eb40ad386f725` · SHA-256 `588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.Id

/-!
# Typed Euclidean primitives

These are incidence-free data shapes.  No metric, order, congruence, parallel,
or continuity law is smuggled into the point tuples.
-/

namespace Mathematics.Geometry

universe u

/-- An oriented pair of points.  Orientation is data, not a claim of order. -/
structure Segment (Point : Type u) where
  start : Point
  finish : Point

namespace Segment

/-- Reverse the presentation orientation of a segment. -/
def reverse {Point : Type u} (segment : Segment Point) : Segment Point where
  start := segment.finish
  finish := segment.start

@[simp] theorem reverse_start {Point : Type u} (segment : Segment Point) :
    segment.reverse.start = segment.finish := rfl

@[simp] theorem reverse_finish {Point : Type u} (segment : Segment Point) :
    segment.reverse.finish = segment.start := rfl

@[simp] theorem reverse_reverse {Point : Type u} (segment : Segment Point) :
    segment.reverse.reverse = segment := by
  cases segment
  rfl

end Segment

/-- Three labeled points; nondegeneracy must be supplied separately. -/
structure Triangle (Point : Type u) where
  first : Point
  second : Point
  third : Point

namespace Triangle

def firstSecond {Point : Type u} (triangle : Triangle Point) : Segment Point :=
  ⟨triangle.first, triangle.second⟩

def firstThird {Point : Type u} (triangle : Triangle Point) : Segment Point :=
  ⟨triangle.first, triangle.third⟩

def secondThird {Point : Type u} (triangle : Triangle Point) : Segment Point :=
  ⟨triangle.second, triangle.third⟩

end Triangle

/-- Three labeled points defining an angle presentation. -/
structure Angle (Point : Type u) where
  firstRayPoint : Point
  vertex : Point
  secondRayPoint : Point

end Mathematics.Geometry
```
