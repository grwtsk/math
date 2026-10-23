/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleUnitPoleWinding
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleRegularization
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleTuringPacket
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Canonical rectangle argument principle after the geometric winding proof

The maintained rectangle count path previously required two independent global
inputs:

* an analytic extension of `logDeriv zeta - rectanglePrincipalPart` through the
  complete finite singular head;
* a universal unit-pole winding theorem for the rectangle.

`CanonicalRectangleUnitPoleWinding` proves the second input by branch-safe
logarithmic primitives. Consequently the only remaining qualitative analytic
input is a genuine `RectangleRegularExtension`. This file threads that extension
through the exact rectangle index, rational count enclosure, canonical Turing
packet, bounded critical-line criterion, and zero-gap completeness result.

The rational interval still has to be source-correct and narrow enough to isolate
one natural count. The aligned zero family still has to identify actual canonical
zeros and multiplicities. No numerical count, passing packet, RH result, or prime
theorem is constructed here.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalRectangleArgumentPrinciple

open CanonicalZeroDivisor
open AdmissibleRectangles
open PositiveHeightCountDeficit
open CanonicalPositiveTuringBridge
open CanonicalRectangleCountIsolation
open CanonicalRectangleResidueAccounting
open CanonicalRectanglePrincipalPartWinding
open CanonicalRectangleRegularization
open CanonicalRectangleUnitPoleWinding
open CanonicalRectangleTuringPacket
open GRWTSK.NumberTheory.Zeta.Riemann
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight

noncomputable section

/-- The universal rectangle winding theorem is no longer a caller premise. A
source-correct regular extension alone yields the exact normalized index. -/
theorem normalizedRectangleIndex_eq_expected {N : ℕ}
    (extension : RectangleRegularExtension N) :
    normalizedRectangleIndex N = (expectedRectangleIndex N : ℂ) :=
  extension.normalizedRectangleIndex_eq_expected
    (rectangleUnitPoleWindingCertificate N)

/-- Construct the source-bound rectangle index report from a regular extension
and a rational interval containing the fixed source target. -/
noncomputable def toCanonicalRectangleIndexEnclosure {N : ℕ}
    (extension : RectangleRegularExtension N)
    (interval : RationalPositiveHeightCountIsolation.RationalCountInterval)
    (containsExpected : interval.Contains (expectedRectangleIndex N)) :
    CanonicalRectangleIndexEnclosure N :=
  extension.toCanonicalRectangleIndexEnclosure
    (rectangleUnitPoleWindingCertificate N) interval containsExpected

@[simp] theorem enclosure_argument_principle {N : ℕ}
    (extension : RectangleRegularExtension N)
    (interval : RationalPositiveHeightCountIsolation.RationalCountInterval)
    (containsExpected : interval.Contains (expectedRectangleIndex N)) :
    (toCanonicalRectangleIndexEnclosure extension interval containsExpected).
        argument_principle =
      normalizedRectangleIndex_eq_expected extension :=
  rfl

/-- Exact count isolation after regularization and the now-proved geometric
winding theorem. -/
theorem exact_positive_count_of_accepts {N count : ℕ}
    (extension : RectangleRegularExtension N)
    (interval : RationalPositiveHeightCountIsolation.RationalCountInterval)
    (containsExpected : interval.Contains (expectedRectangleIndex N))
    (accepted :
      (toCanonicalRectangleIndexEnclosure extension interval containsExpected).
        accepts count = true) :
    positiveHeightCount (contourHeight N) = count :=
  (toCanonicalRectangleIndexEnclosure extension interval containsExpected).
    exact_positive_count_of_accepts count accepted

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- Construct the canonical Turing packet with no separate geometric winding
certificate and no caller-supplied certified-count consistency inequality. -/
noncomputable def packetOfRegularizedRectangle
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (extension : RectangleRegularExtension N)
    (interval : RationalPositiveHeightCountIsolation.RationalCountInterval)
    (containsExpected : interval.Contains (expectedRectangleIndex N))
    (count : ℕ)
    (accepted :
      (toCanonicalRectangleIndexEnclosure extension interval containsExpected).
        accepts count = true) :
    CanonicalPositiveTuringPacket family :=
  packetOfRectangleIndex N alignment
    (toCanonicalRectangleIndexEnclosure extension interval containsExpected)
    count accepted

@[simp] theorem packet_totalCount
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (extension : RectangleRegularExtension N)
    (interval : RationalPositiveHeightCountIsolation.RationalCountInterval)
    (containsExpected : interval.Contains (expectedRectangleIndex N))
    (count : ℕ)
    (accepted :
      (toCanonicalRectangleIndexEnclosure extension interval containsExpected).
        accepts count = true) :
    (packetOfRegularizedRectangle N alignment extension interval
      containsExpected count accepted).certificate.totalCount = count :=
  rfl

/-- A two-unit deficit after exact rectangle count isolation gives bounded RH.
The nonintegral contour height remains strictly above the natural stage. -/
theorem rhThrough_of_regularized_rectangle_count_margin
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (extension : RectangleRegularExtension N)
    (interval : RationalPositiveHeightCountIsolation.RationalCountInterval)
    (containsExpected : interval.Contains (expectedRectangleIndex N))
    (count : ℕ)
    (accepted :
      (toCanonicalRectangleIndexEnclosure extension interval containsExpected).
        accepts count = true)
    (strict : count < family.certifiedCount + 2) :
    RHThrough N :=
  rhThrough_of_rectangle_count_margin N alignment
    (toCanonicalRectangleIndexEnclosure extension interval containsExpected)
    count accepted strict

/-- Equality of isolated total and certified multiplicity gives exact positive
head coverage at the selected contour height. -/
theorem knownPoints_eq_positiveHeightHead_of_regularized_rectangle_count_eq
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (extension : RectangleRegularExtension N)
    (interval : RationalPositiveHeightCountIsolation.RationalCountInterval)
    (containsExpected : interval.Contains (expectedRectangleIndex N))
    (count : ℕ)
    (accepted :
      (toCanonicalRectangleIndexEnclosure extension interval containsExpected).
        accepts count = true)
    (complete : family.certifiedCount = count) :
    alignment.knownPoints = positiveHeightHead (contourHeight N) :=
  knownPoints_eq_positiveHeightHead_of_rectangle_count_eq N alignment
    (toCanonicalRectangleIndexEnclosure extension interval containsExpected)
    count accepted complete

/-- The same equality produces a zero-gap typed packet. -/
theorem packet_gap_eq_zero_of_regularized_rectangle_count_eq
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (extension : RectangleRegularExtension N)
    (interval : RationalPositiveHeightCountIsolation.RationalCountInterval)
    (containsExpected : interval.Contains (expectedRectangleIndex N))
    (count : ℕ)
    (accepted :
      (toCanonicalRectangleIndexEnclosure extension interval containsExpected).
        accepts count = true)
    (complete : family.certifiedCount = count) :
    (packetOfRegularizedRectangle N alignment extension interval
      containsExpected count accepted).certificate.gap = 0 := by
  simpa [packetOfRegularizedRectangle] using
    packet_gap_eq_zero_of_rectangle_count_eq N alignment
      (toCanonicalRectangleIndexEnclosure extension interval containsExpected)
      count accepted complete

/-- The geometric winding calculation does not remove the strictness of the
reflection-pair deficit criterion. -/
theorem exact_two_unit_deficit_still_rejected_fixture :
    ¬ ((23 : ℕ) < 21 + 2) := by
  norm_num

end

end GRWTSK.RiemannHypothesis.CanonicalRectangleArgumentPrinciple
