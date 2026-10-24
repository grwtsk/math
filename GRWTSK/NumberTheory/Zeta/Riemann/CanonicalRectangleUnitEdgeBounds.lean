/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RationalRectangleRealEdgeEnclosure
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Unit-interval suppliers for canonical rectangle edge enclosures

The existing finite-height Riemann-hypothesis consumer accepts three semantic
rational intervals containing the real normalized bottom, right and left edge
contributions. This file supplies one exact intermediate theorem layer between
pointwise analytic estimates and that consumer.

Each oriented edge is transported affinely to the unit interval. The Jacobian,
argument-principle normalizer and the downward orientation of the left edge are
retained in the unit densities. A rational interval that contains the real part
of one density at every point of `[0,1]`, together with the stated interval
integrability, therefore contains the corresponding normalized edge integral.
Three such reports construct the existing `RealRectangleEdgeEnclosure` and feed
its exact positive-height count and bounded-RH theorems.

This is an order-enclosure theorem, not a positivity theorem. It does not
construct pointwise zeta bounds, a quadrature certificate, an isolated count,
a certified zero family, or a passing RH margin. Finite samples do not replace
the universal pointwise hypotheses.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalRectangleUnitEdgeBounds

open MeasureTheory Set
open scoped Interval
open GRWTSK.Analysis.RealAnalysis.RationalClosedInterval
open AdmissibleRectangles
open PositiveHeightCountDeficit
open CanonicalRectangleCountIsolation
open CanonicalRectangleConjugateSymmetry
open RationalRectangleEdgeEnclosure
open RationalRectangleRealEdgeEnclosure
open CanonicalPositiveTuringBridge
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight

noncomputable section

/-- Positive horizontal affine speed from the left edge to real part two. -/
def bottomSpeed (N : ℕ) : ℝ :=
  2 - leftEdge N

/-- Positive vertical affine speed from `-contourHeight N` to
`contourHeight N`. -/
def verticalSpeed (N : ℕ) : ℝ :=
  2 * contourHeight N

/-- Unit-interval parameter for the left-to-right bottom edge. -/
def bottomParameter (N : ℕ) (x : ℝ) : ℝ :=
  bottomSpeed N * x + leftEdge N

/-- Unit-interval parameter for the upward right edge. -/
def rightParameter (N : ℕ) (x : ℝ) : ℝ :=
  verticalSpeed N * x + (-contourHeight N)

/-- Unit-interval parameter for the downward left edge. The negative speed is
part of the source orientation, not an error-budget convention. -/
def leftParameter (N : ℕ) (x : ℝ) : ℝ :=
  -verticalSpeed N * x + contourHeight N

theorem bottomSpeed_pos (N : ℕ) : 0 < bottomSpeed N := by
  unfold bottomSpeed
  linarith [leftEdge_neg N]

theorem verticalSpeed_pos (N : ℕ) : 0 < verticalSpeed N := by
  unfold verticalSpeed
  linarith [contourHeight_pos N]

@[simp] theorem bottomParameter_zero (N : ℕ) :
    bottomParameter N 0 = leftEdge N := by
  simp [bottomParameter]

@[simp] theorem bottomParameter_one (N : ℕ) :
    bottomParameter N 1 = 2 := by
  unfold bottomParameter bottomSpeed
  ring

@[simp] theorem rightParameter_zero (N : ℕ) :
    rightParameter N 0 = -contourHeight N := by
  simp [rightParameter]

@[simp] theorem rightParameter_one (N : ℕ) :
    rightParameter N 1 = contourHeight N := by
  unfold rightParameter verticalSpeed
  ring

@[simp] theorem leftParameter_zero (N : ℕ) :
    leftParameter N 0 = contourHeight N := by
  simp [leftParameter]

@[simp] theorem leftParameter_one (N : ℕ) :
    leftParameter N 1 = -contourHeight N := by
  unfold leftParameter verticalSpeed
  ring

/-- The exact normalized bottom-edge density after affine transport to
`[0,1]`, including the Jacobian. -/
def bottomUnitDensity (N : ℕ) (x : ℝ) : ℂ :=
  bottomSpeed N •
    (rectangleNormalizer *
      logDeriv riemannZeta (bottomPoint N (bottomParameter N x)))

/-- The exact normalized right-edge density after affine transport to
`[0,1]`, including the vertical tangent already present in
`rightEdgeIntegrand`. -/
def rightUnitDensity (N : ℕ) (x : ℝ) : ℂ :=
  verticalSpeed N •
    (rectangleNormalizer * rightEdgeIntegrand N (rightParameter N x))

/-- The exact normalized left-edge density after affine transport to `[0,1]`.
The negative Jacobian retains the downward contour orientation. -/
def leftUnitDensity (N : ℕ) (x : ℝ) : ℂ :=
  (-verticalSpeed N) •
    (rectangleNormalizer * leftEdgeIntegrand N (leftParameter N x))

/-- Exact affine transport of the normalized bottom contribution. -/
theorem integral_bottomUnitDensity (N : ℕ) :
    (∫ x in (0 : ℝ)..1, bottomUnitDensity N x) =
      normalizedBottomContribution N := by
  unfold bottomUnitDensity bottomParameter
  rw [intervalIntegral.integral_smul,
    intervalIntegral.smul_integral_comp_mul_add]
  have hzero : bottomSpeed N * (0 : ℝ) + leftEdge N = leftEdge N := by
    ring
  have hone : bottomSpeed N * (1 : ℝ) + leftEdge N = 2 := by
    unfold bottomSpeed
    ring
  rw [hzero, hone]
  unfold normalizedBottomContribution
  rw [intervalIntegral.integral_const_mul]

/-- Exact affine transport of the normalized right contribution. -/
theorem integral_rightUnitDensity (N : ℕ) :
    (∫ x in (0 : ℝ)..1, rightUnitDensity N x) =
      normalizedRightContribution N := by
  unfold rightUnitDensity rightParameter
  rw [intervalIntegral.integral_smul,
    intervalIntegral.smul_integral_comp_mul_add]
  have hzero :
      verticalSpeed N * (0 : ℝ) + (-contourHeight N) =
        -contourHeight N := by
    ring
  have hone :
      verticalSpeed N * (1 : ℝ) + (-contourHeight N) =
        contourHeight N := by
    unfold verticalSpeed
    ring
  rw [hzero, hone]
  unfold normalizedRightContribution
  rw [intervalIntegral.integral_const_mul]
  rfl

/-- Exact affine transport of the normalized left contribution. The endpoint
order verifies that the negative Jacobian has not been dropped. -/
theorem integral_leftUnitDensity (N : ℕ) :
    (∫ x in (0 : ℝ)..1, leftUnitDensity N x) =
      normalizedLeftContribution N := by
  unfold leftUnitDensity leftParameter
  rw [intervalIntegral.integral_smul,
    intervalIntegral.smul_integral_comp_mul_add]
  have hzero :
      (-verticalSpeed N) * (0 : ℝ) + contourHeight N =
        contourHeight N := by
    ring
  have hone :
      (-verticalSpeed N) * (1 : ℝ) + contourHeight N =
        -contourHeight N := by
    unfold verticalSpeed
    ring
  rw [hzero, hone]
  unfold normalizedLeftContribution
  rw [intervalIntegral.integral_const_mul]
  rfl

/-- Pointwise lower and upper bounds on an interval of length one enclose the
integral. Integrability is explicit; bounded samples alone are insufficient. -/
theorem interval_contains_unit_integral
    (interval : Interval) {f : ℝ → ℝ}
    (integrable : IntervalIntegrable f volume 0 1)
    (bounds : ∀ x ∈ Icc (0 : ℝ) 1, interval.Contains (f x)) :
    interval.Contains (∫ x in (0 : ℝ)..1, f x) := by
  unfold Interval.Contains
  constructor
  · have lower := intervalIntegral.integral_mono_on
      (a := (0 : ℝ)) (b := 1)
      (f := fun _ : ℝ => (interval.lower : ℝ)) (g := f)
      (μ := volume) (by norm_num) intervalIntegrable_const integrable
      (fun x hx => (bounds x hx).1)
    simpa using lower
  · have upper := intervalIntegral.integral_mono_on
      (a := (0 : ℝ)) (b := 1)
      (f := f) (g := fun _ : ℝ => (interval.upper : ℝ))
      (μ := volume) (by norm_num) integrable intervalIntegrable_const
      (fun x hx => (bounds x hx).2)
    simpa using upper

/-- Real projection of the exact transported bottom integral. -/
theorem integral_bottomUnitDensity_re
    (N : ℕ)
    (integrable : IntervalIntegrable (bottomUnitDensity N) volume 0 1) :
    (∫ x in (0 : ℝ)..1, (bottomUnitDensity N x).re) =
      (normalizedBottomContribution N).re := by
  rw [intervalIntegral_re integrable, integral_bottomUnitDensity]

/-- Real projection of the exact transported right integral. -/
theorem integral_rightUnitDensity_re
    (N : ℕ)
    (integrable : IntervalIntegrable (rightUnitDensity N) volume 0 1) :
    (∫ x in (0 : ℝ)..1, (rightUnitDensity N x).re) =
      (normalizedRightContribution N).re := by
  rw [intervalIntegral_re integrable, integral_rightUnitDensity]

/-- Real projection of the exact transported left integral. -/
theorem integral_leftUnitDensity_re
    (N : ℕ)
    (integrable : IntervalIntegrable (leftUnitDensity N) volume 0 1) :
    (∫ x in (0 : ℝ)..1, (leftUnitDensity N x).re) =
      (normalizedLeftContribution N).re := by
  rw [intervalIntegral_re integrable, integral_leftUnitDensity]

/-- Analytic supplier boundary for the three independent unit densities.

Both complex and real-part integrability are recorded explicitly to avoid
silently treating a pointwise enclosure as an integrability proof. The three
universal containment fields are the substantive source obligations. -/
structure UnitRectangleEdgeBounds (N : ℕ) where
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
  right_bounds :
    ∀ x ∈ Icc (0 : ℝ) 1, right.Contains (rightUnitDensity N x).re
  left_bounds :
    ∀ x ∈ Icc (0 : ℝ) 1, left.Contains (leftUnitDensity N x).re

namespace UnitRectangleEdgeBounds

/-- Convert unit-interval pointwise bounds into the exact real-edge enclosure
already consumed by the canonical rectangle count theorem. -/
noncomputable def toRealRectangleEdgeEnclosure {N : ℕ}
    (report : UnitRectangleEdgeBounds N) :
    RealRectangleEdgeEnclosure N where
  bottom := report.bottom
  right := report.right
  left := report.left
  bottom_contains := by
    have h := interval_contains_unit_integral report.bottom
      report.bottom_re_integrable report.bottom_bounds
    rw [integral_bottomUnitDensity_re N report.bottom_integrable] at h
    exact h
  right_contains := by
    have h := interval_contains_unit_integral report.right
      report.right_re_integrable report.right_bounds
    rw [integral_rightUnitDensity_re N report.right_integrable] at h
    exact h
  left_contains := by
    have h := interval_contains_unit_integral report.left
      report.left_re_integrable report.left_bounds
    rw [integral_leftUnitDensity_re N report.left_integrable] at h
    exact h

/-- A passing unit-edge report gives the exact canonical positive-height count. -/
theorem exact_positive_count_of_accepts {N : ℕ}
    (report : UnitRectangleEdgeBounds N) (count : ℕ)
    (accepted : report.toRealRectangleEdgeEnclosure.accepts count = true) :
    positiveHeightCount (contourHeight N) = count :=
  report.toRealRectangleEdgeEnclosure.exact_positive_count_of_accepts
    count accepted

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- Pointwise unit-edge bounds, strict count isolation and a deficit below two
positive-height multiplicity units imply the existing bounded RH conclusion. -/
theorem rhThrough_of_unit_edge_count_margin
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : UnitRectangleEdgeBounds N)
    (count : ℕ)
    (accepted : report.toRealRectangleEdgeEnclosure.accepts count = true)
    (strict : count < family.certifiedCount + 2) :
    RHThrough N :=
  RealRectangleEdgeEnclosure.rhThrough_of_real_edge_count_margin
    N alignment report.toRealRectangleEdgeEnclosure count accepted strict

/-- Endpoint samples do not supply the universal pointwise premise. -/
theorem endpoint_samples_do_not_supply_uniform_bounds :
    let f : ℝ → ℝ := fun x => 4 * x * (1 - x)
    let zeroInterval : Interval := Interval.singleton 0
    f 0 = 0 ∧ f 1 = 0 ∧
      ¬ ∀ x ∈ Icc (0 : ℝ) 1, zeroInterval.Contains (f x) := by
  dsimp
  refine ⟨by norm_num, by norm_num, ?_⟩
  intro h
  have midpoint := h (1 / 2 : ℝ) (by constructor <;> norm_num)
  norm_num [Interval.Contains, Interval.singleton] at midpoint

end UnitRectangleEdgeBounds

end

end GRWTSK.RiemannHypothesis.CanonicalRectangleUnitEdgeBounds
