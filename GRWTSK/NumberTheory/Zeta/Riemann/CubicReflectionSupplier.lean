/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RationalReflectionContraction
import GRWTSK.NumberTheory.Zeta.Riemann.CubicZetaCircleBound
import Mathlib.Analysis.Complex.Liouville

set_option autoImplicit false

/-!
# Source-derived curvature for rational critical-reflection disks

The existing actual zeta ceiling on the radius-three charts centered at
2 ± i(N+3/2), N >= 2, supplies the missing curvature input. A positive
Cauchy buffer h around EVERY point of the proposed root disk stays in that
chart when the explicit layout guard holds. Cauchy's second derivative
estimate then gives M = 2*(N+2)^3/h^2. The factorial and buffer square remain.

The rational root radius r and Cauchy buffer h have different roles. A larger
buffer improves M only when the whole padded disk still lies in the chart.
Zero buffer must be rejected even though rational division is totalized.
The new consumer derives analyticity and curvature rather than assuming them;
it still requires a disk enclosing the ACTUAL center slope and actual zero
membership. It constructs no zero, slope enclosure or exhaustive cover.

The chosen layout uses a conservative coordinate-sum distance bound. The
rational center is exactly on the critical line. Either signed chart may be
selected, but its actual containment condition must hold. The inherited
strict contraction still excludes multiple zeros and is only sufficient.
This reuses source already on the branch; it does not import or copy the
later fixed-buffer ZetaDiskCurvature module from another branch.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Imported dependencies unaudited.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CubicReflectionSupplier

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.LocalJensenCount
open GRWTSK.RiemannHypothesis.CubicZetaCircleBound
open GRWTSK.Analysis.ErrorBounds.RationalComplexDisk
open GRWTSK.NumberTheory.Zeta.Riemann.RationalReflectionContraction
open Set Metric

/-- The sign selects an actual cubic chart; negative heights are not discarded. -/
def chartHeight (N : ℕ) (negative : Bool) : ℚ :=
  if negative then -((N : ℚ) + 3 / 2) else (N : ℚ) + 3 / 2

/-- Coordinate-sum upper bound on the distance from 1/2+i*t to the chart center. -/
def chartOffset (N : ℕ) (negative : Bool) (t : ℚ) : ℚ :=
  3 / 2 + |t - chartHeight N negative|

/-- Cauchy's n=2 majorant. Its use ALWAYS requires a strictly positive buffer. -/
def cubicCurvature (N : ℕ) (buffer : ℚ) : ℚ :=
  2 * ((N : ℚ) + 2) ^ 3 / buffer ^ 2

/-- Source-domain geometry and the existing slope-rate guard are both checked.
Actual slope containment and zero membership are semantic inputs, not Boolean conclusions. -/
def accepts (N : ℕ) (negative : Bool) (t ar ai : ℚ) (slope : Disk)
    (buffer radius : ℚ) : Bool :=
  decide (2 ≤ N ∧ 0 < buffer ∧ chartOffset N negative t + radius + buffer ≤ 3 ∧
    RationalReflectionContraction.accepts ar ai slope (cubicCurvature N buffer) radius = true)

noncomputable section

/-- Exact critical-line centering is built into the interpreted rational input. -/
def lineCenter (t : ℚ) : ℂ := ⟨1 / 2, (t : ℝ)⟩

def chartCenter (N : ℕ) (negative : Bool) : ℂ :=
  if negative then lowerCenter N else upperCenter N

/-- No square root or same-rate identification with complex modulus is used. -/
theorem center_distance_le_offset (N : ℕ) (negative : Bool) (t : ℚ) :
    ‖lineCenter t - chartCenter N negative‖ ≤ (chartOffset N negative t : ℝ) := by
  calc
    _ ≤ |(lineCenter t - chartCenter N negative).re| +
        |(lineCenter t - chartCenter N negative).im| :=
      Complex.norm_le_abs_re_add_abs_im _
    _ = _ := by
      cases negative <;>
        norm_num [lineCenter, chartCenter, chartOffset, chartHeight, upperCenter, lowerCenter]

/-- The existing actual-source theorem, not a new supplied modulus bound. -/
theorem chart_modulus_bound (N : ℕ) (hN : 2 ≤ N) (negative : Bool) (z : ℂ)
    (member : z ∈ closedBall (chartCenter N negative) (3 : ℝ)) :
    ‖riemannZeta z‖ ≤ ((N : ℝ) + 2) ^ 3 := by
  apply norm_zeta_le_cube_on_disk N hN (chartCenter N negative) z _ member
  cases negative <;> simp [chartCenter]

/-- Both signed outer charts already have a proved pole-avoidance domain. -/
theorem chart_analytic (N : ℕ) (hN : 2 ≤ N) (negative : Bool) :
    AnalyticOnNhd ℂ riemannZeta (closedBall (chartCenter N negative) (3 : ℝ)) := by
  cases negative with
  | false => exact analytic_zeta_upper_disk N hN
  | true => exact analytic_zeta_lower_disk N hN

/-- The buffer is around every point of the root disk, not only around its center. -/
theorem buffered_disk_subset (N : ℕ) (negative : Bool) (t radius buffer : ℚ)
    (layout : chartOffset N negative t + radius + buffer ≤ 3) (z : ℂ)
    (member : z ∈ closedBall (lineCenter t) (radius : ℝ)) :
    closedBall z (buffer : ℝ) ⊆ closedBall (chartCenter N negative) (3 : ℝ) := by
  intro w hw
  have hz : ‖z - lineCenter t‖ ≤ (radius : ℝ) := by
    simpa only [mem_closedBall, dist_eq_norm] using member
  have hwr : ‖w - z‖ ≤ (buffer : ℝ) := by
    simpa only [mem_closedBall, dist_eq_norm] using hw
  have centerBound := center_distance_le_offset N negative t
  have layoutReal : (chartOffset N negative t : ℝ) + (radius : ℝ) + (buffer : ℝ) ≤ 3 := by
    exact_mod_cast layout
  rw [mem_closedBall, dist_eq_norm]
  have first := norm_sub_le_norm_sub_add_norm_sub w z (lineCenter t)
  have second := norm_sub_le_norm_sub_add_norm_sub w (lineCenter t) (chartCenter N negative)
  linarith

/-- Analyticity of the entire root disk is derived from the same checked padding. -/
theorem line_disk_analytic (N : ℕ) (hN : 2 ≤ N) (negative : Bool) (t radius buffer : ℚ)
    (bufferPositive : 0 < buffer)
    (layout : chartOffset N negative t + radius + buffer ≤ 3) :
    AnalyticOnNhd ℂ riemannZeta (closedBall (lineCenter t) (radius : ℝ)) := by
  have hb : (0 : ℝ) ≤ (buffer : ℝ) := by exact_mod_cast bufferPositive.le
  intro z hz
  exact chart_analytic N hN negative z
    ((buffered_disk_subset N negative t radius buffer layout z hz) (mem_closedBall_self hb))

/-- All-point curvature is derived from the actual cubic ceiling using a positive Cauchy circle. -/
theorem zeta_second_derivative_le_cubic (N : ℕ) (hN : 2 ≤ N) (negative : Bool)
    (t radius buffer : ℚ) (bufferPositive : 0 < buffer)
    (layout : chartOffset N negative t + radius + buffer ≤ 3)
    (z : ℂ) (member : z ∈ closedBall (lineCenter t) (radius : ℝ)) :
    ‖deriv (deriv riemannZeta) z‖ ≤ (cubicCurvature N buffer : ℝ) := by
  have hb : (0 : ℝ) < (buffer : ℝ) := by exact_mod_cast bufferPositive
  have subset := buffered_disk_subset N negative t radius buffer layout z member
  have analytic := chart_analytic N hN negative
  have regular : DiffContOnCl ℂ riemannZeta (ball z (buffer : ℝ)) :=
    DiffContOnCl.mk_ball
      (fun w hw => (analytic w (subset (ball_subset_closedBall hw))).differentiableAt.differentiableWithinAt)
      (fun w hw => (analytic w (subset hw)).continuousAt.continuousWithinAt)
  have cauchy := Complex.norm_iteratedDeriv_le_of_forall_mem_sphere_norm_le 2 hb regular
    (fun w hw => chart_modulus_bound N hN negative w (subset (sphere_subset_closedBall hw)))
  simpa [iteratedDeriv_succ, iteratedDeriv_zero, Nat.factorial, cubicCurvature] using cauchy

/-- No independent analyticity or curvature premises remain in this actual-zero consumer. -/
theorem critical_line_of_cubic_slope (N : ℕ) (negative : Bool) (t ar ai : ℚ)
    (slope : Disk) (buffer radius : ℚ) (s : ℂ)
    (zero : NontrivialZetaZero s) (member : s ∈ closedBall (lineCenter t) (radius : ℝ))
    (slopeEnclosure : Contains slope (deriv riemannZeta (lineCenter t)))
    (accepted : accepts N negative t ar ai slope buffer radius = true) : s.re = 1 / 2 := by
  have criteria : 2 ≤ N ∧ 0 < buffer ∧ chartOffset N negative t + radius + buffer ≤ 3 ∧
      RationalReflectionContraction.accepts ar ai slope (cubicCurvature N buffer) radius = true := by
    simpa only [accepts, decide_eq_true_eq] using accepted
  exact critical_line_of_rational_slope (lineCenter t) s ar ai slope
    (cubicCurvature N buffer) radius rfl zero member
    (line_disk_analytic N criteria.1 negative t radius buffer criteria.2.1 criteria.2.2.1)
    slopeEnclosure
    (zeta_second_derivative_le_cubic N criteria.1 negative t radius buffer
      criteria.2.1 criteria.2.2.1) criteria.2.2.2

/-- Complete finite-height coverage remains independent of numerical acceptance and local slopes. -/
theorem rhThrough_of_cubic_slope_cover (height count : ℕ)
    (chart : Fin count → ℕ) (negative : Fin count → Bool)
    (t ar ai buffer radius : Fin count → ℚ) (slope : Fin count → Disk)
    (slopeEnclosure : ∀ i, Contains (slope i) (deriv riemannZeta (lineCenter (t i))))
    (accepted : ∀ i, accepts (chart i) (negative i) (t i) (ar i) (ai i)
      (slope i) (buffer i) (radius i) = true)
    (coverage : ∀ s, NontrivialZetaZero s → |s.im| ≤ (height : ℝ) →
      ∃ i : Fin count, s ∈ closedBall (lineCenter (t i)) (radius i : ℝ)) : RHThrough height := by
  intro s zero heightBound
  obtain ⟨i, member⟩ := coverage s zero heightBound
  exact critical_line_of_cubic_slope (chart i) (negative i) (t i) (ar i) (ai i)
    (slope i) (buffer i) (radius i) s zero member (slopeEnclosure i) (accepted i)

/-- The previous half-unit Cauchy buffer recovers its exact factor eight. -/
theorem half_buffer_curvature (N : ℕ) :
    cubicCurvature N (1 / 2) = 8 * ((N : ℚ) + 2) ^ 3 := by
  norm_num [cubicCurvature]
  ring

/-- Synthetic arithmetic acceptance with positive curvature and slope uncertainty, not zeta data. -/
theorem positive_buffer_fixture :
    cubicCurvature 2 1 = 128 ∧
    rateBound 1 0 ⟨1, 0, 1 / 8⟩ (cubicCurvature 2 1) (1 / 256) = 5 / 8 ∧
    accepts 2 false (7 / 2) 1 0 ⟨1, 0, 1 / 8⟩ 1 (1 / 256) = true ∧
    accepts 2 true (-7 / 2) 1 0 ⟨1, 0, 1 / 8⟩ 1 (1 / 256) = true := by
  norm_num [accepts, chartOffset, chartHeight, cubicCurvature,
    RationalReflectionContraction.accepts, rateBound, normMajorant, slopeDefectDisk,
    diskSub, diskAdd, diskNeg, diskMul, centerSize, point]

/-- Smaller buffers worsen the curvature bound; making h huge without room is also invalid. -/
theorem buffer_geometry_controls_fixture :
    accepts 2 false (7 / 2) 1 0 ⟨1, 0, 1 / 8⟩ (1 / 2) (1 / 256) = false ∧
    accepts 2 false (7 / 2) 1 0 (point 1 0) 2 (1 / 256) = false ∧
    accepts 2 true (7 / 2) 1 0 (point 1 0) 1 (1 / 256) = false := by
  norm_num [accepts, chartOffset, chartHeight, cubicCurvature,
    RationalReflectionContraction.accepts, rateBound, normMajorant, slopeDefectDisk,
    diskSub, diskAdd, diskNeg, diskMul, centerSize, point]

/-- Totalized division cannot turn zero Cauchy radius into a valid analytic estimate. -/
theorem zero_buffer_rejected (N : ℕ) (negative : Bool) (t ar ai : ℚ) (slope : Disk) (radius : ℚ) :
    accepts N negative t ar ai slope 0 radius = false := by
  simp [accepts]

/-- The N>=2 hypothesis belongs to the actual analytic chart, not merely to a convenient formula. -/
theorem low_chart_rejected (N : ℕ) (negative : Bool) (t ar ai : ℚ) (slope : Disk)
    (buffer radius : ℚ) (tooLow : N < 2) :
    accepts N negative t ar ai slope buffer radius = false := by
  simp [accepts, not_le.mpr tooLow]

end

end GRWTSK.NumberTheory.Zeta.Riemann.CubicReflectionSupplier
