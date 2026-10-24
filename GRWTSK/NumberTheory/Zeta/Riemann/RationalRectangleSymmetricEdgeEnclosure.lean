/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleConjugateSymmetry
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Symmetry-compressed rational rectangle enclosures

The exact zeta conjugation calculation proves that the normalized top edge is
the conjugate of the normalized bottom edge and that both normalized vertical
edges are real. Therefore a quantitative rectangle report needs only three
independently source-correct complex balls:

* one for the normalized bottom edge;
* one for the normalized right edge;
* one for the normalized left edge.

The top edge is derived, not re-certified. The real index center and radius are

  center = 2 * bottom.center.re + right.center.re + left.center.re,
  radius = 2 * bottom.radius + right.radius + left.radius.

Every analytic uncertainty is retained. Horizontal uncertainty is doubled to
cover the conjugate pair; no cancellation between independent error balls is
assumed. After the pole/trivial/two-sign correction, the positive-count interval
has width exactly this compressed radius.

The three semantic containment proofs remain indispensable. This file performs
no zeta evaluation, quadrature, error analysis, count isolation, or source
acceptance by itself.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.RationalRectangleSymmetricEdgeEnclosure

open GRWTSK.Analysis.ComplexAnalysis.RationalComplexBall
open GRWTSK.Analysis.ComplexAnalysis.RationalComplexBall.Ball
open CanonicalZeroDivisor
open AdmissibleRectangles
open PositiveHeightCountDeficit
open RationalPositiveHeightCountIsolation
open CanonicalPositiveTuringBridge
open CanonicalRectangleCountIsolation
open CanonicalRectangleCompleteRegularization
open CanonicalRectangleTuringPacket
open CanonicalRectangleConjugateSymmetry
open RationalRectangleEdgeEnclosure
open GRWTSK.NumberTheory.Zeta.Riemann
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight

noncomputable section

/-- Three source-correct edge balls. The top edge is recovered exactly from the
bottom edge by conjugation. -/
structure SymmetricRectangleEdgeEnclosure (N : ℕ) where
  bottom : Ball
  right : Ball
  left : Ball
  bottom_contains : bottom.Contains (normalizedBottomContribution N)
  right_contains : right.Contains (normalizedRightContribution N)
  left_contains : left.Contains (normalizedLeftContribution N)

namespace SymmetricRectangleEdgeEnclosure

/-- Exact rational center of the real symmetry-compressed index enclosure. -/
def compressedCenter {N : ℕ}
    (report : SymmetricRectangleEdgeEnclosure N) : ℚ :=
  2 * report.bottom.center.re + report.right.center.re +
    report.left.center.re

/-- Complete rational radius. The horizontal radius is doubled for the
conjugate pair; both vertical radii are retained once. -/
def compressedRadius {N : ℕ}
    (report : SymmetricRectangleEdgeEnclosure N) : ℚ :=
  2 * report.bottom.radius + report.right.radius + report.left.radius

/-- The compressed error is nonnegative. -/
theorem compressedRadius_nonneg {N : ℕ}
    (report : SymmetricRectangleEdgeEnclosure N) :
    0 ≤ report.compressedRadius := by
  unfold compressedRadius
  linarith [report.bottom.radius_nonneg, report.right.radius_nonneg,
    report.left.radius_nonneg]

@[simp] theorem cast_compressedCenter {N : ℕ}
    (report : SymmetricRectangleEdgeEnclosure N) :
    (report.compressedCenter : ℝ) =
      2 * (report.bottom.center.re : ℝ) +
        (report.right.center.re : ℝ) +
        (report.left.center.re : ℝ) := by
  simp [compressedCenter]

@[simp] theorem cast_compressedRadius {N : ℕ}
    (report : SymmetricRectangleEdgeEnclosure N) :
    (report.compressedRadius : ℝ) =
      2 * (report.bottom.radius : ℝ) +
        (report.right.radius : ℝ) +
        (report.left.radius : ℝ) := by
  simp [compressedRadius]

/-- Rational interval centered on the symmetry-compressed real contribution. -/
def indexInterval {N : ℕ}
    (report : SymmetricRectangleEdgeEnclosure N) : RationalCountInterval where
  lower := report.compressedCenter - report.compressedRadius
  upper := report.compressedCenter + report.compressedRadius
  valid := by
    linarith [report.compressedRadius_nonneg]

@[simp] theorem indexInterval_lower {N : ℕ}
    (report : SymmetricRectangleEdgeEnclosure N) :
    report.indexInterval.lower =
      report.compressedCenter - report.compressedRadius := rfl

@[simp] theorem indexInterval_upper {N : ℕ}
    (report : SymmetricRectangleEdgeEnclosure N) :
    report.indexInterval.upper =
      report.compressedCenter + report.compressedRadius := rfl

/-- The three source balls enclose the real part of the exact normalized index.
The top contribution is supplied by the exact source symmetry theorem. -/
theorem indexInterval_contains {N : ℕ}
    (report : SymmetricRectangleEdgeEnclosure N) :
    report.indexInterval.Contains (normalizedRectangleIndex N).re := by
  rcases report.bottom_contains.contains_re_bounds with ⟨bottomLower, bottomUpper⟩
  rcases report.right_contains.contains_re_bounds with ⟨rightLower, rightUpper⟩
  rcases report.left_contains.contains_re_bounds with ⟨leftLower, leftUpper⟩
  unfold RationalCountInterval.Contains
  change
    (((report.compressedCenter - report.compressedRadius : ℚ) : ℝ) ≤
        (normalizedRectangleIndex N).re ∧
      (normalizedRectangleIndex N).re ≤
        ((report.compressedCenter + report.compressedRadius : ℚ) : ℝ))
  rw [Rat.cast_sub, Rat.cast_add, cast_compressedCenter,
    cast_compressedRadius,
    normalizedRectangleIndex_re_eq_symmetric_sum]
  constructor <;> linarith

/-- Exact width of the normalized-index interval. -/
theorem indexInterval_width {N : ℕ}
    (report : SymmetricRectangleEdgeEnclosure N) :
    report.indexInterval.upper - report.indexInterval.lower =
      2 * report.compressedRadius := by
  unfold indexInterval
  dsimp
  ring

/-- Undoing the two height signs divides the index width by two. Thus the
corrected positive-count interval has width exactly the compressed radius. -/
theorem positiveCountInterval_width {N : ℕ}
    (report : SymmetricRectangleEdgeEnclosure N) :
    (positiveCountInterval N report.indexInterval).upper -
        (positiveCountInterval N report.indexInterval).lower =
      report.compressedRadius := by
  have hwidth := report.indexInterval_width
  unfold positiveCountInterval
  dsimp
  linarith

/-- Radius below one makes the corrected interval narrower than one, but does
not by itself prove that any proposed natural count lies inside it. -/
theorem positiveCountInterval_width_lt_one {N : ℕ}
    (report : SymmetricRectangleEdgeEnclosure N)
    (small : report.compressedRadius < 1) :
    (positiveCountInterval N report.indexInterval).upper -
        (positiveCountInterval N report.indexInterval).lower < 1 := by
  rw [report.positiveCountInterval_width]
  exact small

/-- Combine the three edge enclosures with the completed qualitative argument
principle. -/
noncomputable def toCanonicalRectangleIndexEnclosure {N : ℕ}
    (report : SymmetricRectangleEdgeEnclosure N) :
    CanonicalRectangleIndexEnclosure N where
  interval := report.indexInterval
  argument_principle :=
    CanonicalRectangleCompleteRegularization.normalizedRectangleIndex_eq_expected N
  contains_index := report.indexInterval_contains

/-- Decidable strict count isolation after the exact correction. -/
def accepts {N : ℕ} (report : SymmetricRectangleEdgeEnclosure N)
    (count : ℕ) : Bool :=
  report.toCanonicalRectangleIndexEnclosure.accepts count

@[simp] theorem accepts_iff {N : ℕ}
    (report : SymmetricRectangleEdgeEnclosure N) (count : ℕ) :
    report.accepts count = true ↔
      (positiveCountInterval N report.indexInterval).Isolates count := by
  change report.toCanonicalRectangleIndexEnclosure.accepts count = true ↔ _
  simpa [toCanonicalRectangleIndexEnclosure] using
    report.toCanonicalRectangleIndexEnclosure.accepts_iff count

/-- A passing three-edge report and strict isolation give the exact maintained
positive-height count. -/
theorem exact_positive_count_of_accepts {N : ℕ}
    (report : SymmetricRectangleEdgeEnclosure N) (count : ℕ)
    (accepted : report.accepts count = true) :
    positiveHeightCount (contourHeight N) = count :=
  report.toCanonicalRectangleIndexEnclosure.exact_positive_count_of_accepts
    count accepted

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- Construct the canonical typed packet from three edge enclosures and one
canonically aligned family of actual zeros. -/
noncomputable def packetOfSymmetricEdgeEnclosure
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : SymmetricRectangleEdgeEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true) :
    CanonicalPositiveTuringPacket family :=
  packetOfRectangleIndex N alignment
    report.toCanonicalRectangleIndexEnclosure count accepted

@[simp] theorem packet_totalCount
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : SymmetricRectangleEdgeEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true) :
    (packetOfSymmetricEdgeEnclosure N alignment report count accepted).
        certificate.totalCount = count :=
  rfl

/-- Fewer than two omitted positive-height multiplicity units imply bounded RH. -/
theorem rhThrough_of_symmetric_edge_count_margin
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : SymmetricRectangleEdgeEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true)
    (strict : count < family.certifiedCount + 2) :
    RHThrough N :=
  rhThrough_of_rectangle_count_margin N alignment
    report.toCanonicalRectangleIndexEnclosure count accepted strict

/-- Equality of isolated total and certified multiplicity gives exact positive
head coverage. -/
theorem knownPoints_eq_positiveHeightHead_of_symmetric_edge_count_eq
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : SymmetricRectangleEdgeEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true)
    (complete : family.certifiedCount = count) :
    alignment.knownPoints = positiveHeightHead (contourHeight N) :=
  knownPoints_eq_positiveHeightHead_of_rectangle_count_eq N alignment
    report.toCanonicalRectangleIndexEnclosure count accepted complete

/-- Equality also produces a zero-gap packet for the complete bounded-divisor
and prime-side consumers. -/
theorem packet_gap_eq_zero_of_symmetric_edge_count_eq
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : SymmetricRectangleEdgeEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true)
    (complete : family.certifiedCount = count) :
    (packetOfSymmetricEdgeEnclosure N alignment report count accepted).
        certificate.gap = 0 := by
  simpa [packetOfSymmetricEdgeEnclosure] using
    packet_gap_eq_zero_of_rectangle_count_eq N alignment
      report.toCanonicalRectangleIndexEnclosure count accepted complete

/-- A width bound cannot replace candidate containment. This is the same
hostile narrow-but-missed interval pattern retained at the compressed boundary. -/
theorem narrow_width_does_not_supply_candidate_fixture :
    (149 / 10 : ℚ) - 141 / 10 < 1 ∧
      ¬ ({ lower := 141 / 10, upper := 149 / 10,
            valid := by norm_num } : RationalCountInterval).Isolates 14 := by
  constructor
  · norm_num
  · norm_num [RationalCountInterval.Isolates]

end SymmetricRectangleEdgeEnclosure

end

end GRWTSK.RiemannHypothesis.RationalRectangleSymmetricEdgeEnclosure
