/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleCountIsolation
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPositiveTuringCountIsolation
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Canonical Turing packets from an admissible rectangle index

This module composes the concrete rectangle normalization with the existing canonical
count-isolation packet constructor. The public input now has the complete source chain:

1. the maintained admissible zeta rectangle and its exact oriented logarithmic-derivative integral;
2. an exact argument-principle identity for that integral;
3. a rational enclosure of the normalized rectangle index;
4. strict isolation of one corrected positive-height natural count;
5. a canonically aligned family of actual critical-line zeros.

The rectangle height lies strictly above its natural stage. Therefore a two-unit count
deficit at `contourHeight N` implies `RHThrough N`, even though the selected contour
height is nonintegral. Equality of the isolated total and certified multiplicity gives
exact bounded positive-head coverage.

No argument-principle proof, numerical enclosure, aligned family, passing packet, RH,
or prime theorem is constructed. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalRectangleTuringPacket

open CanonicalZeroDivisor
open AdmissibleRectangles
open PositiveHeightCountDeficit
open CanonicalPositiveTuringBridge
open CanonicalPositiveTuringCountIsolation
open CanonicalRectangleCountIsolation
open GRWTSK.NumberTheory.Zeta.Riemann
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight

noncomputable section

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- Construct the canonical packet directly from a source-bound rectangle report.
The certified-count consistency inequality is derived from canonical source inclusion. -/
noncomputable def packetOfRectangleIndex
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : CanonicalRectangleIndexEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true) :
    CanonicalPositiveTuringPacket family :=
  packetOfIsolatedCount alignment report.toCanonicalCountEnclosure count accepted

@[simp] theorem packet_height
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : CanonicalRectangleIndexEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true) :
    (packetOfRectangleIndex N alignment report count accepted).certificate.height =
      contourHeight N :=
  rfl

@[simp] theorem packet_totalCount
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : CanonicalRectangleIndexEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true) :
    (packetOfRectangleIndex N alignment report count accepted).certificate.totalCount =
      count :=
  rfl

/-- A source-aligned family cannot exceed the exact count isolated from the rectangle. -/
theorem isolated_rectangle_total_not_lt_certifiedCount
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : CanonicalRectangleIndexEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true) :
    ¬ count < family.certifiedCount :=
  isolated_total_not_lt_certifiedCount alignment
    report.toCanonicalCountEnclosure count accepted

/-- The arithmetic two-unit margin becomes the packet's exact gap condition. -/
theorem packet_gap_lt_two_of_rectangle_total_lt_certified_add_two
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : CanonicalRectangleIndexEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true)
    (strict : count < family.certifiedCount + 2) :
    (packetOfRectangleIndex N alignment report count accepted).certificate.gap < 2 := by
  simpa [packetOfRectangleIndex] using
    packet_gap_lt_two_of_total_lt_certified_add_two alignment
      report.toCanonicalCountEnclosure count accepted strict

/-- Fewer than two omitted positive-height multiplicity units exclude every off-line
reflection pair through the selected contour height. -/
theorem all_positive_on_line_of_rectangle_count_margin
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : CanonicalRectangleIndexEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true)
    (strict : count < family.certifiedCount + 2) :
    ∀ z ∈ positiveHeightHead (contourHeight N), z.1.re = 1 / 2 :=
  all_positive_on_line_of_isolated_count_margin alignment
    report.toCanonicalCountEnclosure count accepted strict

/-- The admissible contour lies above its natural stage, so its positive-height
classification implies the absolute-height `RHThrough N` statement. -/
theorem rhThrough_of_rectangle_count_margin
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : CanonicalRectangleIndexEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true)
    (strict : count < family.certifiedCount + 2) : RHThrough N := by
  have positiveOnLine := all_positive_on_line_of_rectangle_count_margin
    N alignment report count accepted strict
  have hNH : (N : ℝ) < contourHeight N := by
    linarith [(contourHeight_bounds N).1]
  intro s zero heightBound
  by_cases zeroHeight : s.im = 0
  · exact False.elim
      (CriticalStripHeightDescent.nontrivialZetaZero_im_ne_zero zero zeroHeight)
  by_cases positive : 0 < s.im
  · let z : ZeroPoint := ⟨s, zero⟩
    have member : z ∈ positiveHeightHead (contourHeight N) := by
      apply (mem_positiveHeightHead (contourHeight N) z).mpr
      constructor
      · exact positive
      · have absEq : |s.im| = s.im := abs_of_pos positive
        have him : s.im ≤ (N : ℝ) := by
          simpa only [absEq] using heightBound
        exact him.trans hNH.le
    exact positiveOnLine z member
  · have negative : s.im < 0 :=
      lt_of_le_of_ne (le_of_not_gt positive) zeroHeight
    let z : ZeroPoint := ⟨s, zero⟩
    have heightBoundH : height z ≤ contourHeight N := by
      change |s.im| ≤ contourHeight N
      exact heightBound.trans hNH.le
    have member : conjugated z ∈ positiveHeightHead (contourHeight N) :=
      conjugated_mem_positiveHeightHead z negative heightBoundH
    have line := positiveOnLine (conjugated z) member
    simpa only [conjugated_re] using line

/-- Equality of the isolated total and certified multiplicity gives exact bounded
positive-head coverage, not merely critical-line location. -/
theorem knownPoints_eq_positiveHeightHead_of_rectangle_count_eq
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : CanonicalRectangleIndexEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true)
    (complete : family.certifiedCount = count) :
    alignment.knownPoints = positiveHeightHead (contourHeight N) :=
  knownPoints_eq_positiveHeightHead_of_isolated_count_eq alignment
    report.toCanonicalCountEnclosure count accepted complete

/-- Equality gives zero gap for the explicitly constructed rectangle packet. -/
theorem packet_gap_eq_zero_of_rectangle_count_eq
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : CanonicalRectangleIndexEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true)
    (complete : family.certifiedCount = count) :
    (packetOfRectangleIndex N alignment report count accepted).certificate.gap = 0 := by
  simpa [packetOfRectangleIndex] using
    packet_gap_eq_zero_of_certifiedCount_eq alignment
      report.toCanonicalCountEnclosure count accepted complete

/-- A one-unit rectangle deficit can prove location without proving coverage. -/
theorem rectangle_one_unit_deficit_not_complete_fixture :
    (21 : ℕ) ≤ 22 ∧ 22 < 21 + 2 ∧ 21 ≠ 22 := by
  norm_num

end

end GRWTSK.RiemannHypothesis.CanonicalRectangleTuringPacket
