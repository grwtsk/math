# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.RationalRectangleEdgeEnclosure

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03e91067d479a26a99b7d3ab0faa8f62ffcac67b` · SHA-256 `964291d29ce39c6f300dd69addd1165b6bfb377faa803c211646664ec3cf2ea5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalComplexBall
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleCompleteRegularization
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleTuringPacket
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Edgewise rational enclosures for the canonical rectangle index

The qualitative argument-principle identity is now source-drafted, but it is
noncomputable and does not by itself isolate a numerical zero count. This file
specifies the quantitative boundary between analysis and exact arithmetic.

Each of the four already oriented rectangle-edge contributions is normalized by
`(2 * pi * I)^(-1)` and enclosed in a rational complex ball. The four balls are
added using exact rational center arithmetic and the triangle inequality. The
real projection of the resulting ball is a rational interval containing the
actual normalized rectangle index.

The semantic edge-containment proofs are indispensable. Rational centers,
radii, sampled values, or a small final interval do not establish them. In
particular, this interface does not evaluate zeta, integrate an edge, choose a
quadrature rule, or derive an error estimate. It composes four independently
source-correct edge enclosures into the existing strict integer-isolation and
canonical Turing-packet consumers.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.RationalRectangleEdgeEnclosure

open MeasureTheory
open scoped Interval
open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open GRWTSK.Analysis.Complex.RationalComplexBall
open GRWTSK.Analysis.Complex.RationalComplexBall.Ball
open CanonicalZeroDivisor
open AdmissibleRectangles
open PositiveHeightCountDeficit
open RationalPositiveHeightCountIsolation
open CanonicalPositiveTuringBridge
open CanonicalRectangleCountIsolation
open CanonicalRectangleCompleteRegularization
open CanonicalRectangleTuringPacket
open GRWTSK.NumberTheory.Zeta.Riemann
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight

noncomputable section

/-- The exact normalization used by the rectangle argument principle. -/
def rectangleNormalizer : ℂ :=
  (2 * (Real.pi : ℂ) * Complex.I)⁻¹

/-- Normalized bottom-edge contribution, retaining its left-to-right orientation. -/
def normalizedBottomContribution (N : ℕ) : ℂ :=
  rectangleNormalizer *
    (∫ u in leftEdge N..2,
      logDeriv riemannZeta (bottomPoint N u))

/-- Normalized right-edge contribution, retaining `ds = I dt`. -/
def normalizedRightContribution (N : ℕ) : ℂ :=
  rectangleNormalizer *
    (∫ t in (-contourHeight N)..contourHeight N,
      logDeriv riemannZeta (rightPoint N t) * Complex.I)

/-- Normalized top-edge contribution, with reversed horizontal endpoints. -/
def normalizedTopContribution (N : ℕ) : ℂ :=
  rectangleNormalizer *
    (∫ u in 2..leftEdge N,
      logDeriv riemannZeta (topPoint N u))

/-- Normalized left-edge contribution, with downward endpoints and `ds = I dt`. -/
def normalizedLeftContribution (N : ℕ) : ℂ :=
  rectangleNormalizer *
    (∫ t in contourHeight N..(-contourHeight N),
      logDeriv riemannZeta (rectangleLeftPoint N t) * Complex.I)

/-- Exact decomposition of the normalized rectangle index into the four
source-oriented edge contributions. -/
theorem normalizedRectangleIndex_eq_edge_sum (N : ℕ) :
    normalizedRectangleIndex N =
      ((normalizedBottomContribution N + normalizedRightContribution N) +
        normalizedTopContribution N) + normalizedLeftContribution N := by
  unfold normalizedRectangleIndex rectangleLogDerivativeIntegral
    normalizedBottomContribution normalizedRightContribution
    normalizedTopContribution normalizedLeftContribution rectangleNormalizer
  ring

/-- Four semantic rational-ball enclosures for the exact normalized edge terms. -/
structure RectangleEdgeEnclosure (N : ℕ) where
  bottom : Ball
  right : Ball
  top : Ball
  left : Ball
  bottom_contains : bottom.Contains (normalizedBottomContribution N)
  right_contains : right.Contains (normalizedRightContribution N)
  top_contains : top.Contains (normalizedTopContribution N)
  left_contains : left.Contains (normalizedLeftContribution N)

namespace RectangleEdgeEnclosure

/-- Exact rational aggregation of all four edge balls. -/
def totalBall {N : ℕ} (report : RectangleEdgeEnclosure N) : Ball :=
  ((report.bottom.add report.right).add report.top).add report.left

@[simp] theorem totalBall_radius {N : ℕ}
    (report : RectangleEdgeEnclosure N) :
    report.totalBall.radius =
      ((report.bottom.radius + report.right.radius) + report.top.radius) +
        report.left.radius :=
  rfl

/-- The aggregate rational ball encloses the actual normalized rectangle index. -/
theorem total_contains {N : ℕ}
    (report : RectangleEdgeEnclosure N) :
    report.totalBall.Contains (normalizedRectangleIndex N) := by
  rw [normalizedRectangleIndex_eq_edge_sum]
  exact contains_add
    (contains_add
      (contains_add report.bottom_contains report.right_contains)
      report.top_contains)
    report.left_contains

/-- Rational real interval obtained from the aggregate complex ball. -/
def indexInterval {N : ℕ}
    (report : RectangleEdgeEnclosure N) : RationalCountInterval where
  lower := report.totalBall.realLower
  upper := report.totalBall.realUpper
  valid := report.totalBall.realLower_le_realUpper

@[simp] theorem indexInterval_lower {N : ℕ}
    (report : RectangleEdgeEnclosure N) :
    report.indexInterval.lower = report.totalBall.realLower := rfl

@[simp] theorem indexInterval_upper {N : ℕ}
    (report : RectangleEdgeEnclosure N) :
    report.indexInterval.upper = report.totalBall.realUpper := rfl

/-- The projected rational interval contains the real part of the exact index. -/
theorem indexInterval_contains {N : ℕ}
    (report : RectangleEdgeEnclosure N) :
    report.indexInterval.Contains (normalizedRectangleIndex N).re := by
  exact report.total_contains.contains_re_bounds

/-- The interval width charges every edge radius and no unproved cancellation. -/
theorem indexInterval_width {N : ℕ}
    (report : RectangleEdgeEnclosure N) :
    report.indexInterval.upper - report.indexInterval.lower =
      2 * report.totalBall.radius :=
  report.totalBall.realUpper_sub_realLower

/-- Convert edgewise source enclosures into the existing canonical rectangle
report. The argument-principle equality comes from the complete qualitative
regularization; the rational containment comes only from the edge balls. -/
noncomputable def toCanonicalRectangleIndexEnclosure {N : ℕ}
    (report : RectangleEdgeEnclosure N) :
    CanonicalRectangleIndexEnclosure N where
  interval := report.indexInterval
  argument_principle :=
    CanonicalRectangleCompleteRegularization.normalizedRectangleIndex_eq_expected N
  contains_index := report.indexInterval_contains

/-- Decidable count isolation after edge aggregation and the exact
pole/trivial/two-sign correction. -/
def accepts {N : ℕ} (report : RectangleEdgeEnclosure N)
    (count : ℕ) : Bool :=
  report.toCanonicalRectangleIndexEnclosure.accepts count

@[simp] theorem accepts_iff {N : ℕ}
    (report : RectangleEdgeEnclosure N) (count : ℕ) :
    report.accepts count = true ↔
      (positiveCountInterval N report.indexInterval).Isolates count := by
  change report.toCanonicalRectangleIndexEnclosure.accepts count = true ↔ _
  simpa [toCanonicalRectangleIndexEnclosure] using
    report.toCanonicalRectangleIndexEnclosure.accepts_iff count

/-- A passing edge report and strict rational isolation yield the exact
maintained positive-height count. -/
theorem exact_positive_count_of_accepts {N : ℕ}
    (report : RectangleEdgeEnclosure N) (count : ℕ)
    (accepted : report.accepts count = true) :
    positiveHeightCount (contourHeight N) = count :=
  report.toCanonicalRectangleIndexEnclosure.exact_positive_count_of_accepts
    count accepted

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- Construct the canonical typed packet directly from four source-correct edge
enclosures and a source-aligned zero family. -/
noncomputable def packetOfEdgeEnclosure
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : RectangleEdgeEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true) :
    CanonicalPositiveTuringPacket family :=
  packetOfRectangleIndex N alignment
    report.toCanonicalRectangleIndexEnclosure count accepted

@[simp] theorem packet_totalCount
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : RectangleEdgeEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true) :
    (packetOfEdgeEnclosure N alignment report count accepted).
        certificate.totalCount = count :=
  rfl

/-- A strict deficit below two multiplicity units gives bounded RH. -/
theorem rhThrough_of_edge_count_margin
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : RectangleEdgeEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true)
    (strict : count < family.certifiedCount + 2) :
    RHThrough N :=
  rhThrough_of_rectangle_count_margin N alignment
    report.toCanonicalRectangleIndexEnclosure count accepted strict

/-- Equality of isolated total and certified multiplicity gives exact positive
head coverage at the selected contour height. -/
theorem knownPoints_eq_positiveHeightHead_of_edge_count_eq
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : RectangleEdgeEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true)
    (complete : family.certifiedCount = count) :
    alignment.knownPoints = positiveHeightHead (contourHeight N) :=
  knownPoints_eq_positiveHeightHead_of_rectangle_count_eq N alignment
    report.toCanonicalRectangleIndexEnclosure count accepted complete

/-- Equality also produces a zero-gap packet for all downstream finite-divisor
and tent-kernel consumers. -/
theorem packet_gap_eq_zero_of_edge_count_eq
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : RectangleEdgeEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true)
    (complete : family.certifiedCount = count) :
    (packetOfEdgeEnclosure N alignment report count accepted).
        certificate.gap = 0 := by
  simpa [packetOfEdgeEnclosure] using
    packet_gap_eq_zero_of_rectangle_count_eq N alignment
      report.toCanonicalRectangleIndexEnclosure count accepted complete

/-- A small rational aggregate radius alone does not certify any count; the four
semantic edge-containment proofs and strict candidate isolation remain required. -/
theorem radius_only_not_count_fixture (r : ℚ) :
    0 ≤ r → r < 1 / 2 → r < 1 := by
  intro _ small
  linarith

end RectangleEdgeEnclosure

end

end GRWTSK.RiemannHypothesis.RationalRectangleEdgeEnclosure
```
