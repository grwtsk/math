/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Real.RationalClosedInterval
import GRWTSK.NumberTheory.Zeta.Riemann.RationalRectangleSymmetricEdgeEnclosure
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Asymmetric real edge enclosures for the canonical rectangle count

The exact conjugation calculation already reduces the normalized rectangle index
to

  2 * Re(bottom) + Re(right) + Re(left).

A complex center-radius ball is sufficient for each term, but it can be
unnecessarily restrictive when the available analysis supplies asymmetric
one-sided real bounds. This file therefore accepts one rational closed interval
for each required real contribution.

The aggregate endpoints are

  lower = 2 * bottom.lower + right.lower + left.lower,
  upper = 2 * bottom.upper + right.upper + left.upper.

No cancellation or independence is assumed. After the exact pole, trivial-zero
and two-height-sign correction, the positive-count interval width is

  bottom.width + (right.width + left.width) / 2.

The prior symmetric complex-ball report maps into this interface without loss.
The semantic interval-containment proofs remain indispensable; narrow rational
data alone do not certify an edge integral or a zero count.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.RationalRectangleRealEdgeEnclosure

open GRWTSK.Analysis.Real.RationalClosedInterval
open GRWTSK.Analysis.ComplexAnalysis.RationalComplexBall
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
open RationalRectangleSymmetricEdgeEnclosure
open GRWTSK.NumberTheory.Zeta.Riemann
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight

noncomputable section

/-- Three source-correct real intervals for the independent normalized edge
contributions. The top edge is supplied exactly by bottom conjugation. -/
structure RealRectangleEdgeEnclosure (N : ℕ) where
  bottom : Interval
  right : Interval
  left : Interval
  bottom_contains :
    bottom.Contains (normalizedBottomContribution N).re
  right_contains :
    right.Contains (normalizedRightContribution N).re
  left_contains :
    left.Contains (normalizedLeftContribution N).re

namespace RealRectangleEdgeEnclosure

/-- Exact lower endpoint for the real normalized rectangle index. -/
def indexLower {N : ℕ} (report : RealRectangleEdgeEnclosure N) : ℚ :=
  2 * report.bottom.lower + report.right.lower + report.left.lower

/-- Exact upper endpoint for the real normalized rectangle index. -/
def indexUpper {N : ℕ} (report : RealRectangleEdgeEnclosure N) : ℚ :=
  2 * report.bottom.upper + report.right.upper + report.left.upper

/-- The aggregate rational interval. -/
def indexInterval {N : ℕ}
    (report : RealRectangleEdgeEnclosure N) : RationalCountInterval where
  lower := report.indexLower
  upper := report.indexUpper
  valid := by
    unfold indexLower indexUpper
    linarith [report.bottom.valid, report.right.valid, report.left.valid]

@[simp] theorem cast_indexLower {N : ℕ}
    (report : RealRectangleEdgeEnclosure N) :
    (report.indexLower : ℝ) =
      2 * (report.bottom.lower : ℝ) +
        (report.right.lower : ℝ) + (report.left.lower : ℝ) := by
  simp [indexLower]

@[simp] theorem cast_indexUpper {N : ℕ}
    (report : RealRectangleEdgeEnclosure N) :
    (report.indexUpper : ℝ) =
      2 * (report.bottom.upper : ℝ) +
        (report.right.upper : ℝ) + (report.left.upper : ℝ) := by
  simp [indexUpper]

/-- The three one-sided source intervals enclose the real normalized rectangle
index. -/
theorem indexInterval_contains {N : ℕ}
    (report : RealRectangleEdgeEnclosure N) :
    report.indexInterval.Contains (normalizedRectangleIndex N).re := by
  rcases report.bottom_contains with ⟨bottomLower, bottomUpper⟩
  rcases report.right_contains with ⟨rightLower, rightUpper⟩
  rcases report.left_contains with ⟨leftLower, leftUpper⟩
  unfold RationalCountInterval.Contains
  change
    ((report.indexLower : ℝ) ≤ (normalizedRectangleIndex N).re ∧
      (normalizedRectangleIndex N).re ≤ (report.indexUpper : ℝ))
  rw [cast_indexLower, cast_indexUpper,
    normalizedRectangleIndex_re_eq_symmetric_sum]
  constructor <;> linarith

/-- Exact width before the pole/trivial/two-sign correction. -/
theorem indexInterval_width {N : ℕ}
    (report : RealRectangleEdgeEnclosure N) :
    report.indexInterval.upper - report.indexInterval.lower =
      2 * report.bottom.width + report.right.width + report.left.width := by
  unfold indexInterval indexLower indexUpper
  dsimp
  unfold Interval.width
  ring

/-- Exact width after recovering the positive-height count. -/
theorem positiveCountInterval_width {N : ℕ}
    (report : RealRectangleEdgeEnclosure N) :
    (positiveCountInterval N report.indexInterval).upper -
        (positiveCountInterval N report.indexInterval).lower =
      report.bottom.width +
        (report.right.width + report.left.width) / 2 := by
  have hwidth := report.indexInterval_width
  unfold positiveCountInterval
  dsimp
  linarith

/-- Width below one is useful but does not by itself identify or contain a
natural count. -/
theorem positiveCountInterval_width_lt_one {N : ℕ}
    (report : RealRectangleEdgeEnclosure N)
    (small :
      report.bottom.width +
          (report.right.width + report.left.width) / 2 < 1) :
    (positiveCountInterval N report.indexInterval).upper -
        (positiveCountInterval N report.indexInterval).lower < 1 := by
  rw [report.positiveCountInterval_width]
  exact small

/-- Real projection of an existing rational complex ball. -/
def realProjection (ball : Ball) : Interval where
  lower := ball.realLower
  upper := ball.realUpper
  valid := ball.realLower_le_realUpper

/-- Complex-ball containment supplies containment in the projected real
interval. -/
theorem realProjection_contains {ball : Ball} {z : ℂ}
    (contained : ball.Contains z) :
    (realProjection ball).Contains z.re :=
  contained.contains_re_bounds

@[simp] theorem realProjection_width (ball : Ball) :
    (realProjection ball).width = 2 * ball.radius := by
  unfold realProjection Interval.width
  dsimp
  unfold Ball.realLower Ball.realUpper
  ring

/-- The previous three-complex-ball interface is a special case of the
asymmetric real-interval interface. -/
def ofSymmetricComplexBalls {N : ℕ}
    (report : SymmetricRectangleEdgeEnclosure N) :
    RealRectangleEdgeEnclosure N where
  bottom := realProjection report.bottom
  right := realProjection report.right
  left := realProjection report.left
  bottom_contains := realProjection_contains report.bottom_contains
  right_contains := realProjection_contains report.right_contains
  left_contains := realProjection_contains report.left_contains

/-- Projecting the previous complex balls retains exactly its aggregate width. -/
theorem ofSymmetricComplexBalls_indexInterval_width {N : ℕ}
    (report : SymmetricRectangleEdgeEnclosure N) :
    (ofSymmetricComplexBalls report).indexInterval.upper -
        (ofSymmetricComplexBalls report).indexInterval.lower =
      2 * report.compressedRadius := by
  rw [(ofSymmetricComplexBalls report).indexInterval_width]
  simp only [ofSymmetricComplexBalls, realProjection_width]
  unfold SymmetricRectangleEdgeEnclosure.compressedRadius
  ring

/-- Combine the three real edge intervals with the completed qualitative
argument principle. -/
noncomputable def toCanonicalRectangleIndexEnclosure {N : ℕ}
    (report : RealRectangleEdgeEnclosure N) :
    CanonicalRectangleIndexEnclosure N where
  interval := report.indexInterval
  argument_principle :=
    CanonicalRectangleCompleteRegularization.normalizedRectangleIndex_eq_expected N
  contains_index := report.indexInterval_contains

/-- Decidable strict count isolation after the exact affine correction. -/
def accepts {N : ℕ} (report : RealRectangleEdgeEnclosure N)
    (count : ℕ) : Bool :=
  report.toCanonicalRectangleIndexEnclosure.accepts count

@[simp] theorem accepts_iff {N : ℕ}
    (report : RealRectangleEdgeEnclosure N) (count : ℕ) :
    report.accepts count = true ↔
      (positiveCountInterval N report.indexInterval).Isolates count := by
  change report.toCanonicalRectangleIndexEnclosure.accepts count = true ↔ _
  simpa [toCanonicalRectangleIndexEnclosure] using
    report.toCanonicalRectangleIndexEnclosure.accepts_iff count

/-- A passing real-edge report gives the exact maintained positive-height
count. -/
theorem exact_positive_count_of_accepts {N : ℕ}
    (report : RealRectangleEdgeEnclosure N) (count : ℕ)
    (accepted : report.accepts count = true) :
    positiveHeightCount (contourHeight N) = count :=
  report.toCanonicalRectangleIndexEnclosure.exact_positive_count_of_accepts
    count accepted

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- Construct the canonical typed packet from real edge intervals and one
canonically aligned family of actual zeros. -/
noncomputable def packetOfRealEdgeEnclosure
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : RealRectangleEdgeEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true) :
    CanonicalPositiveTuringPacket family :=
  packetOfRectangleIndex N alignment
    report.toCanonicalRectangleIndexEnclosure count accepted

@[simp] theorem packet_totalCount
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : RealRectangleEdgeEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true) :
    (packetOfRealEdgeEnclosure N alignment report count accepted).
        certificate.totalCount = count :=
  rfl

/-- Fewer than two omitted positive-height multiplicity units imply bounded RH. -/
theorem rhThrough_of_real_edge_count_margin
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : RealRectangleEdgeEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true)
    (strict : count < family.certifiedCount + 2) :
    RHThrough N :=
  rhThrough_of_rectangle_count_margin N alignment
    report.toCanonicalRectangleIndexEnclosure count accepted strict

/-- Equality of the isolated total and certified multiplicity gives exact
positive-head coverage. -/
theorem knownPoints_eq_positiveHeightHead_of_real_edge_count_eq
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : RealRectangleEdgeEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true)
    (complete : family.certifiedCount = count) :
    alignment.knownPoints = positiveHeightHead (contourHeight N) :=
  knownPoints_eq_positiveHeightHead_of_rectangle_count_eq N alignment
    report.toCanonicalRectangleIndexEnclosure count accepted complete

/-- Equality also produces a zero-gap packet for the complete bounded-divisor
and prime-side consumers. -/
theorem packet_gap_eq_zero_of_real_edge_count_eq
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : RealRectangleEdgeEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true)
    (complete : family.certifiedCount = count) :
    (packetOfRealEdgeEnclosure N alignment report count accepted).
        certificate.gap = 0 := by
  simpa [packetOfRealEdgeEnclosure] using
    packet_gap_eq_zero_of_rectangle_count_eq N alignment
      report.toCanonicalRectangleIndexEnclosure count accepted complete

/-- A narrow corrected interval still cannot replace candidate containment. -/
theorem narrow_real_interval_does_not_supply_candidate_fixture :
    (149 / 10 : ℚ) - 141 / 10 < 1 ∧
      ¬ ({ lower := 141 / 10, upper := 149 / 10,
            valid := by norm_num } : RationalCountInterval).Isolates 14 := by
  constructor
  · norm_num
  · norm_num [RationalCountInterval.Isolates]

end RealRectangleEdgeEnclosure

end

end GRWTSK.RiemannHypothesis.RationalRectangleRealEdgeEnclosure
