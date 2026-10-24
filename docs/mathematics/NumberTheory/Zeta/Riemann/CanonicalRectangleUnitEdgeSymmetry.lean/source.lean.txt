/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleUnitEdgeBounds
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Half-interval symmetry suppliers for canonical rectangle edges

The unit-interval supplier for the canonical zeta rectangle asks for pointwise
real bounds on three transported edge densities. The right and left vertical
parameters are centered at zero, and the actual zeta logarithmic derivative is
compatible with complex conjugation. After retaining the argument-principle
normalizer, the vertical tangent and the downward orientation of the left edge,
this yields the exact reflections

  conj (rightUnitDensity N x) = rightUnitDensity N (1 - x),
  conj (leftUnitDensity N x)  = leftUnitDensity N (1 - x).

Their real parts are therefore invariant under `x ↦ 1 - x`. Bounds for the two
vertical real densities on `[0, 1 / 2]` extend to `[0, 1]`; the bottom density
still requires a bound on the complete unit interval. The resulting report
constructs the existing unit-edge and real-edge enclosures and feeds the same
finite-height count and bounded-RH consumers.

This file proves no pointwise estimate for `zeta'/zeta`, no count isolation and
no positivity statement. The half-interval hypotheses remain universal analytic
obligations; finitely many samples do not discharge them.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalRectangleUnitEdgeSymmetry

open MeasureTheory Set
open scoped Interval ComplexConjugate
open GRWTSK.Analysis.Real.RationalClosedInterval
open AdmissibleRectangles
open PositiveHeightCountDeficit
open CanonicalRectangleConjugateSymmetry
open RationalRectangleEdgeEnclosure
open RationalRectangleRealEdgeEnclosure
open CanonicalRectangleUnitEdgeBounds
open CanonicalPositiveTuringBridge
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight

noncomputable section

/-- Reflection of the upward right-edge affine parameter. -/
@[simp] theorem rightParameter_one_sub (N : ℕ) (x : ℝ) :
    rightParameter N (1 - x) = -rightParameter N x := by
  unfold rightParameter verticalSpeed
  ring

/-- Reflection of the downward left-edge affine parameter. -/
@[simp] theorem leftParameter_one_sub (N : ℕ) (x : ℝ) :
    leftParameter N (1 - x) = -leftParameter N x := by
  unfold leftParameter verticalSpeed
  ring

/-- The complete normalized right unit density is conjugation-reflected. The
sign of the imaginary normalizer and the sign from the vertical integrand
cancel exactly. -/
theorem conj_rightUnitDensity (N : ℕ) (x : ℝ) :
    conj (rightUnitDensity N x) =
      rightUnitDensity N (1 - x) := by
  unfold rightUnitDensity
  rw [RCLike.conj_smul, map_mul, conj_rectangleNormalizer,
    conj_rightEdgeIntegrand, rightParameter_one_sub]
  simp only [RCLike.real_smul_eq_coe_mul]
  ring

/-- The complete normalized left unit density is conjugation-reflected. The
negative affine speed is retained, so this theorem does not reverse the
maintained downward contour orientation. -/
theorem conj_leftUnitDensity (N : ℕ) (x : ℝ) :
    conj (leftUnitDensity N x) =
      leftUnitDensity N (1 - x) := by
  unfold leftUnitDensity
  rw [RCLike.conj_smul, map_mul, conj_rectangleNormalizer,
    conj_leftEdgeIntegrand, leftParameter_one_sub]
  simp only [RCLike.real_smul_eq_coe_mul]
  ring

/-- Reflection invariance of the real right unit density. -/
theorem rightUnitDensity_re_one_sub (N : ℕ) (x : ℝ) :
    (rightUnitDensity N (1 - x)).re =
      (rightUnitDensity N x).re := by
  have h := congrArg Complex.re (conj_rightUnitDensity N x)
  simpa only [Complex.conj_re] using h.symm

/-- Reflection invariance of the real left unit density. -/
theorem leftUnitDensity_re_one_sub (N : ℕ) (x : ℝ) :
    (leftUnitDensity N (1 - x)).re =
      (leftUnitDensity N x).re := by
  have h := congrArg Complex.re (conj_leftUnitDensity N x)
  simpa only [Complex.conj_re] using h.symm

/-- Every point of the unit interval is either in the left half or has its
reflection in the left half. -/
theorem mem_left_half_or_reflection_mem_left_half {x : ℝ}
    (member : x ∈ Icc (0 : ℝ) 1) :
    x ∈ Icc (0 : ℝ) (1 / 2) ∨
      1 - x ∈ Icc (0 : ℝ) (1 / 2) := by
  by_cases half : x ≤ 1 / 2
  · exact Or.inl ⟨member.1, half⟩
  · have half_lt : (1 / 2 : ℝ) < x := lt_of_not_ge half
    exact Or.inr ⟨by linarith [member.2], by linarith [half_lt]⟩

/-- Analytic supplier boundary after exact vertical reflection.

Only the right and left pointwise bounds are reduced to `[0, 1 / 2]`. Complex
and real-part interval integrability are kept explicit, and the bottom edge
retains its complete `[0,1]` bound. -/
structure HalfUnitRectangleEdgeBounds (N : ℕ) where
  bottom : Interval
  right : Interval
  left : Interval
  bottom_integrable :
    IntervalIntegrable (bottomUnitDensity N) volume 0 1
  right_integrable :
    IntervalIntegrable (rightUnitDensity N) volume 0 1
  left_integrable :
    IntervalIntegrable (leftUnitDensity N) volume 0 1
  bottom_re_integrable :
    IntervalIntegrable (fun x => (bottomUnitDensity N x).re) volume 0 1
  right_re_integrable :
    IntervalIntegrable (fun x => (rightUnitDensity N x).re) volume 0 1
  left_re_integrable :
    IntervalIntegrable (fun x => (leftUnitDensity N x).re) volume 0 1
  bottom_bounds :
    ∀ x ∈ Icc (0 : ℝ) 1, bottom.Contains (bottomUnitDensity N x).re
  right_half_bounds :
    ∀ x ∈ Icc (0 : ℝ) (1 / 2), right.Contains (rightUnitDensity N x).re
  left_half_bounds :
    ∀ x ∈ Icc (0 : ℝ) (1 / 2), left.Contains (leftUnitDensity N x).re

namespace HalfUnitRectangleEdgeBounds

/-- A right-edge bound on the left half extends to the whole unit interval. -/
theorem right_full_bounds {N : ℕ}
    (report : HalfUnitRectangleEdgeBounds N) :
    ∀ x ∈ Icc (0 : ℝ) 1,
      report.right.Contains (rightUnitDensity N x).re := by
  intro x member
  rcases mem_left_half_or_reflection_mem_left_half member with direct | reflected
  · exact report.right_half_bounds x direct
  · have bound := report.right_half_bounds (1 - x) reflected
    rw [rightUnitDensity_re_one_sub N x] at bound
    exact bound

/-- A left-edge bound on the left half extends to the whole unit interval. -/
theorem left_full_bounds {N : ℕ}
    (report : HalfUnitRectangleEdgeBounds N) :
    ∀ x ∈ Icc (0 : ℝ) 1,
      report.left.Contains (leftUnitDensity N x).re := by
  intro x member
  rcases mem_left_half_or_reflection_mem_left_half member with direct | reflected
  · exact report.left_half_bounds x direct
  · have bound := report.left_half_bounds (1 - x) reflected
    rw [leftUnitDensity_re_one_sub N x] at bound
    exact bound

/-- Exact conversion to the complete unit-interval supplier. -/
noncomputable def toUnitRectangleEdgeBounds {N : ℕ}
    (report : HalfUnitRectangleEdgeBounds N) :
    UnitRectangleEdgeBounds N where
  bottom := report.bottom
  right := report.right
  left := report.left
  bottom_integrable := report.bottom_integrable
  right_integrable := report.right_integrable
  left_integrable := report.left_integrable
  bottom_re_integrable := report.bottom_re_integrable
  right_re_integrable := report.right_re_integrable
  left_re_integrable := report.left_re_integrable
  bottom_bounds := report.bottom_bounds
  right_bounds := report.right_full_bounds
  left_bounds := report.left_full_bounds

/-- Exact conversion to the real edge enclosure consumed by count isolation. -/
noncomputable def toRealRectangleEdgeEnclosure {N : ℕ}
    (report : HalfUnitRectangleEdgeBounds N) :
    RealRectangleEdgeEnclosure N :=
  report.toUnitRectangleEdgeBounds.toRealRectangleEdgeEnclosure

/-- A passing half-unit report gives the exact canonical positive-height count. -/
theorem exact_positive_count_of_accepts {N : ℕ}
    (report : HalfUnitRectangleEdgeBounds N) (count : ℕ)
    (accepted : report.toRealRectangleEdgeEnclosure.accepts count = true) :
    positiveHeightCount (contourHeight N) = count :=
  report.toRealRectangleEdgeEnclosure.exact_positive_count_of_accepts
    count accepted

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- Half-interval vertical bounds, complete bottom bounds, strict count
isolation and a deficit below two positive-height multiplicity units imply the
existing bounded RH conclusion. -/
theorem rhThrough_of_half_unit_edge_count_margin
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : HalfUnitRectangleEdgeBounds N)
    (count : ℕ)
    (accepted : report.toRealRectangleEdgeEnclosure.accepts count = true)
    (strict : count < family.certifiedCount + 2) :
    RHThrough N :=
  RealRectangleEdgeEnclosure.rhThrough_of_real_edge_count_margin
    N alignment report.toRealRectangleEdgeEnclosure count accepted strict

end HalfUnitRectangleEdgeBounds

end

end GRWTSK.RiemannHypothesis.CanonicalRectangleUnitEdgeSymmetry
