# Complete source: GRWTSK.Geometry.MetricGeometry.MetricSpaces.ZeroDistanceQuotient.SetoidAndSeparation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac9cdaff72f7c25b2fc6a1b413053509277226a4` · SHA-256 `1f98f39795ae396faf03bbfeefc6f9717c292abd0c34af8d1bd0bb25b2ad9485`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# Uncompiled source split candidate: Pseudometric zero-distance setoid and separation

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established
model mechanisms or final per-declaration authorship. Existing notices remain
preserved in the exact source archives and copied source documentation.
Source original SHA256: c9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc
Source regions: bytes 3650..5348. Review: attribution-254-review-000003.
Original documentation below describes the unsplit source context.
No Lean compilation, proof acceptance or public umbrella admission is asserted.
-/

import Mathlib.Data.Real.Basic
import Mathlib.Data.Fintype.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic.Linarith

/-!
# Separated weighted-Hamming geometry

The concrete metric uses strictly positive real weights.  A separate generic
pseudometric record exposes the zero-distance quotient boundary rather than
silently identifying zero distance with equality.
-/

namespace GRWTSK.Geometry.MetricGeometry.MetricSpaces.ZeroDistanceQuotient.SetoidAndSeparation

structure PseudometricData (X : Type) where
  distance : X → X → ℝ
  nonnegative : ∀ left right, 0 ≤ distance left right
  selfZero : ∀ point, distance point point = 0
  symmetric : ∀ left right, distance left right = distance right left
  triangle :
    ∀ left middle right,
      distance left right ≤
        distance left middle + distance middle right

def ZeroDistance
    {X : Type}
    (metric : PseudometricData X)
    (left right : X) : Prop :=
  metric.distance left right = 0

theorem zeroDistance_equivalence
    {X : Type}
    (metric : PseudometricData X) :
    Equivalence (ZeroDistance metric) where
  refl point := metric.selfZero point
  symm relation := by
    rw [ZeroDistance, metric.symmetric]
    exact relation
  trans := by
    intro left middle right leftMiddle middleRight
    have upper := metric.triangle left middle right
    rw [leftMiddle, middleRight] at upper
    exact le_antisymm (by simpa using upper) (metric.nonnegative left right)

def zeroDistanceSetoid
    {X : Type}
    (metric : PseudometricData X) :
    Setoid X where
  r := ZeroDistance metric
  iseqv := zeroDistance_equivalence metric

abbrev SeparatedQuotient
    {X : Type}
    (metric : PseudometricData X) :=
  Quotient (zeroDistanceSetoid metric)

theorem quotient_identifies_exactly_zero_distance
    {X : Type}
    (metric : PseudometricData X)
    (left right : X) :
    Quotient.mk (zeroDistanceSetoid metric) left =
        Quotient.mk (zeroDistanceSetoid metric) right ↔
      ZeroDistance metric left right :=
  Quotient.eq

def Separated
    {X : Type}
    (metric : PseudometricData X) : Prop :=
  ∀ left right, ZeroDistance metric left right → left = right

end GRWTSK.Geometry.MetricGeometry.MetricSpaces.ZeroDistanceQuotient.SetoidAndSeparation
```
