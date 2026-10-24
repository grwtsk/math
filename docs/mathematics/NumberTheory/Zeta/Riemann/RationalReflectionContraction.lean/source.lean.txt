/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalReflectionIsolation
import GRWTSK.Analysis.ErrorBounds.RationalComplexDisk
import Mathlib.Analysis.Calculus.FDeriv.Analytic

set_option autoImplicit false

/-!
# Rational center-slope certificates for critical-reflection contraction

A rational complex multiplier a, an enclosure D of the ACTUAL zeta derivative
at c, and a bound M on the ACTUAL second derivative throughout the closed disk
supply q = normMajorant(1-a*D) + centerSize(a)*M*r. The guard checks q < 1,
not merely a small derivative defect at the center. All arithmetic is rational;
the multiplier is explicitly supplied, never selected as an inverse by choice.

Containment of the center slope, whole-disk analyticity and the curvature bound
are independent semantic premises. A passing Boolean does not establish them.
The resulting theorem excludes an off-line zero already in an exactly centered
disk. It supplies no zero existence, self-map budget, or complete zero coverage.
A finite-height conclusion separately consumes exhaustive coverage.

This sufficient derivative criterion excludes derivative-zero points in its
disk; it cannot certify a multiple zero even when that zero is on the line.
The earlier geometric uniqueness theorem does not impose this extra derivative
condition. Shrinking a radius can improve the guard but cannot preserve zero
membership or coverage without a new proof. No actual zeta packet is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Imported choice closure unaudited.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.RationalReflectionContraction

open GRWTSK.RiemannHypothesis
open GRWTSK.Analysis.ErrorBounds.RationalComplexDisk
open GRWTSK.NumberTheory.Zeta.Riemann.CriticalReflectionIsolation
open Set Metric

/-- Conservative rational modulus bound for an enclosed value, not an exact norm. -/
def normMajorant (d : Disk) : ℚ := centerSize d + d.radius

/-- The multiplier is an exact rational complex point; the slope need not be exact. -/
def slopeDefectDisk (ar ai : ℚ) (slope : Disk) : Disk :=
  diskSub (point 1 0) (diskMul (point ar ai) slope)

/-- Center defect PLUS derivative variation over the entire proposed radius. -/
def rateBound (ar ai : ℚ) (slope : Disk) (curvature radius : ℚ) : ℚ :=
  normMajorant (slopeDefectDisk ar ai slope) +
    centerSize (point ar ai) * curvature * radius

/-- Arithmetic guard only. Semantic enclosures, centering and root membership are not checked here. -/
def accepts (ar ai : ℚ) (slope : Disk) (curvature radius : ℚ) : Bool :=
  decide (0 ≤ slope.radius ∧ 0 ≤ curvature ∧ 0 < radius ∧
    rateBound ar ai slope curvature radius < 1)

noncomputable section

/-- Containment transfers the rational norm bound to the specified actual value. -/
theorem contains_norm_le {d : Disk} {z : ℂ} (enclosed : Contains d z) :
    ‖z‖ ≤ (normMajorant d : ℝ) := by
  calc
    _ ≤ ‖z - center d‖ + ‖center d‖ := norm_le_norm_sub_add z (center d)
    _ ≤ (d.radius : ℝ) + (centerSize d : ℝ) := add_le_add enclosed (center_norm_le d)
    _ = _ := by simp [normMajorant, add_comm]

/-- Reuse disk multiplication and subtraction for the ACTUAL center derivative. -/
theorem slopeDefectDisk_contains (ar ai : ℚ) (slope : Disk) (d : ℂ)
    (slopeEnclosure : Contains slope d) :
    Contains (slopeDefectDisk ar ai slope) (1 - center (point ar ai) * d) := by
  have oneEnclosure : Contains (point 1 0) (1 : ℂ) := by
    have oneCenter : GRWTSK.Analysis.ErrorBounds.RationalComplexDisk.center (point 1 0) =
        (1 : ℂ) := by
      apply Complex.ext <;> norm_num [GRWTSK.Analysis.ErrorBounds.RationalComplexDisk.center, point]
    rw [← oneCenter]
    exact contains_point 1 0
  exact contains_sub oneEnclosure (contains_mul (contains_point ar ai) slopeEnclosure)

/-- A center enclosure and a whole-disk curvature bound derive the previously assumed q-bound.
The mean-value estimate is applied to the analytic first derivative, not to samples. -/
theorem zeta_correction_derivative_bound (c : ℂ) (ar ai : ℚ) (slope : Disk)
    (curvature radius : ℚ) (radiusNonnegative : 0 ≤ radius)
    (curvatureNonnegative : 0 ≤ curvature)
    (analytic : AnalyticOnNhd ℂ riemannZeta (closedBall c (radius : ℝ)))
    (slopeEnclosure : Contains slope (deriv riemannZeta c))
    (curvatureBound : ∀ z ∈ closedBall c (radius : ℝ),
      ‖deriv (deriv riemannZeta) z‖ ≤ (curvature : ℝ))
    (z : ℂ) (member : z ∈ closedBall c (radius : ℝ)) :
    ‖1 - center (point ar ai) * deriv riemannZeta z‖ ≤
      (rateBound ar ai slope curvature radius : ℝ) := by
  have hr : (0 : ℝ) ≤ (radius : ℝ) := by exact_mod_cast radiusNonnegative
  have hM : (0 : ℝ) ≤ (curvature : ℝ) := by exact_mod_cast curvatureNonnegative
  have centerMember : c ∈ closedBall c (radius : ℝ) := mem_closedBall_self hr
  have derivative (w : ℂ) (hw : w ∈ closedBall c (radius : ℝ)) :
      HasDerivWithinAt (deriv riemannZeta) (deriv (deriv riemannZeta) w)
        (closedBall c (radius : ℝ)) w :=
    (analytic w hw).deriv.differentiableAt.hasDerivAt.hasDerivWithinAt
  have variation : ‖deriv riemannZeta z - deriv riemannZeta c‖ ≤
      (curvature : ℝ) * ‖z - c‖ :=
    (convex_closedBall c (radius : ℝ)).norm_image_sub_le_of_norm_hasDerivWithin_le
      derivative curvatureBound centerMember member
  have distanceBound : ‖z - c‖ ≤ (radius : ℝ) := by
    simpa only [mem_closedBall, dist_eq_norm] using member
  have variationBound := variation.trans (mul_le_mul_of_nonneg_left distanceBound hM)
  have centerBound := contains_norm_le (slopeDefectDisk_contains ar ai slope
    (deriv riemannZeta c) slopeEnclosure)
  have multiplierNonnegative : (0 : ℝ) ≤ (centerSize (point ar ai) : ℝ) := by
    exact_mod_cast centerSize_nonnegative (point ar ai)
  have identity : 1 - center (point ar ai) * deriv riemannZeta z =
      (1 - center (point ar ai) * deriv riemannZeta c) -
        center (point ar ai) * (deriv riemannZeta z - deriv riemannZeta c) := by ring
  rw [identity]
  calc
    _ ≤ ‖1 - center (point ar ai) * deriv riemannZeta c‖ +
        ‖center (point ar ai) * (deriv riemannZeta z - deriv riemannZeta c)‖ := norm_sub_le _ _
    _ = ‖1 - center (point ar ai) * deriv riemannZeta c‖ +
        ‖center (point ar ai)‖ * ‖deriv riemannZeta z - deriv riemannZeta c‖ := by rw [norm_mul]
    _ ≤ (normMajorant (slopeDefectDisk ar ai slope) : ℝ) +
        (centerSize (point ar ai) : ℝ) * ((curvature : ℝ) * (radius : ℝ)) :=
      add_le_add centerBound (mul_le_mul (center_norm_le (point ar ai)) variationBound
        (norm_nonneg _) multiplierNonnegative)
    _ = _ := by simp [rateBound, mul_assoc]

/-- Boolean success supplies strictness only AFTER the actual analytic inputs are justified. -/
theorem critical_line_of_rational_slope (c s : ℂ) (ar ai : ℚ) (slope : Disk)
    (curvature radius : ℚ) (centerOnLine : c.re = 1 / 2)
    (zero : NontrivialZetaZero s) (member : s ∈ closedBall c (radius : ℝ))
    (analytic : AnalyticOnNhd ℂ riemannZeta (closedBall c (radius : ℝ)))
    (slopeEnclosure : Contains slope (deriv riemannZeta c))
    (curvatureBound : ∀ z ∈ closedBall c (radius : ℝ),
      ‖deriv (deriv riemannZeta) z‖ ≤ (curvature : ℝ))
    (accepted : accepts ar ai slope curvature radius = true) : s.re = 1 / 2 := by
  have criteria : 0 ≤ slope.radius ∧ 0 ≤ curvature ∧ 0 < radius ∧
      rateBound ar ai slope curvature radius < 1 := by
    simpa only [accepts, decide_eq_true_eq] using accepted
  have strict : (rateBound ar ai slope curvature radius : ℝ) < 1 := by
    exact_mod_cast criteria.2.2.2
  exact critical_line_of_derivative_contraction c s (center (point ar ai))
    (radius : ℝ) (rateBound ar ai slope curvature radius : ℝ) centerOnLine zero member strict
    (fun z hz => (analytic z hz).differentiableAt)
    (zeta_correction_derivative_bound c ar ai slope curvature radius criteria.2.2.1.le
      criteria.2.1 analytic slopeEnclosure curvatureBound)

/-- The sufficient contraction route cannot certify a multiple root: its derivative cannot vanish.
This is not a theorem that every zeta zero is simple, nor a limitation of geometric uniqueness. -/
theorem derivative_ne_zero_of_accepted (c : ℂ) (ar ai : ℚ) (slope : Disk)
    (curvature radius : ℚ)
    (analytic : AnalyticOnNhd ℂ riemannZeta (closedBall c (radius : ℝ)))
    (slopeEnclosure : Contains slope (deriv riemannZeta c))
    (curvatureBound : ∀ z ∈ closedBall c (radius : ℝ),
      ‖deriv (deriv riemannZeta) z‖ ≤ (curvature : ℝ))
    (accepted : accepts ar ai slope curvature radius = true)
    (z : ℂ) (member : z ∈ closedBall c (radius : ℝ)) : deriv riemannZeta z ≠ 0 := by
  have criteria : 0 ≤ slope.radius ∧ 0 ≤ curvature ∧ 0 < radius ∧
      rateBound ar ai slope curvature radius < 1 := by
    simpa only [accepts, decide_eq_true_eq] using accepted
  have bound := zeta_correction_derivative_bound c ar ai slope curvature radius
    criteria.2.2.1.le criteria.2.1 analytic slopeEnclosure curvatureBound z member
  have strict : (rateBound ar ai slope curvature radius : ℝ) < 1 := by
    exact_mod_cast criteria.2.2.2
  intro vanishes
  rw [vanishes, mul_zero, sub_zero, norm_one] at bound
  linarith

/-- A genuine off-line zero with source-correct inputs must fail the strict rational guard. -/
theorem rejects_off_line_zero (c s : ℂ) (ar ai : ℚ) (slope : Disk)
    (curvature radius : ℚ) (centerOnLine : c.re = 1 / 2)
    (zero : NontrivialZetaZero s) (offLine : s.re ≠ 1 / 2)
    (member : s ∈ closedBall c (radius : ℝ))
    (analytic : AnalyticOnNhd ℂ riemannZeta (closedBall c (radius : ℝ)))
    (slopeEnclosure : Contains slope (deriv riemannZeta c))
    (curvatureBound : ∀ z ∈ closedBall c (radius : ℝ),
      ‖deriv (deriv riemannZeta) z‖ ≤ (curvature : ℝ)) :
    accepts ar ai slope curvature radius = false := by
  cases outcome : accepts ar ai slope curvature radius with
  | false => rfl
  | true =>
      exact (offLine (critical_line_of_rational_slope c s ar ai slope curvature radius
        centerOnLine zero member analytic slopeEnclosure curvatureBound outcome)).elim

/-- Local accepted disks yield a height conclusion only with an independent exhaustive cover.
Neither arithmetic acceptance nor the mere existence of packets supplies the coverage premise. -/
theorem rhThrough_of_rational_slope_cover (N count : ℕ)
    (centers : Fin count → ℂ) (ar ai curvature radius : Fin count → ℚ)
    (slope : Fin count → Disk) (centerOnLine : ∀ i, (centers i).re = 1 / 2)
    (analytic : ∀ i, AnalyticOnNhd ℂ riemannZeta (closedBall (centers i) (radius i : ℝ)))
    (slopeEnclosure : ∀ i, Contains (slope i) (deriv riemannZeta (centers i)))
    (curvatureBound : ∀ i, ∀ z ∈ closedBall (centers i) (radius i : ℝ),
      ‖deriv (deriv riemannZeta) z‖ ≤ (curvature i : ℝ))
    (accepted : ∀ i, accepts (ar i) (ai i) (slope i) (curvature i) (radius i) = true)
    (coverage : ∀ s, NontrivialZetaZero s → |s.im| ≤ (N : ℝ) →
      ∃ i : Fin count, s ∈ closedBall (centers i) (radius i : ℝ)) : RHThrough N := by
  intro s zero height
  obtain ⟨i, member⟩ := coverage s zero height
  exact critical_line_of_rational_slope (centers i) s (ar i) (ai i) (slope i)
    (curvature i) (radius i) (centerOnLine i) zero member (analytic i)
    (slopeEnclosure i) (curvatureBound i) (accepted i)

/-- A nonvacuous synthetic guard with both center uncertainty and positive curvature charged. -/
theorem positive_curvature_acceptance_fixture :
    rateBound 1 0 ⟨1, 0, 1 / 8⟩ 2 (1 / 8) = 3 / 8 ∧
      accepts 1 0 ⟨1, 0, 1 / 8⟩ 2 (1 / 8) = true := by
  norm_num [accepts, rateBound, normMajorant, slopeDefectDisk,
    diskSub, diskAdd, diskNeg, diskMul, centerSize, point]

/-- A perfect center slope does not justify omitting derivative variation; q=1 is rejected. -/
theorem curvature_consumes_margin_fixture :
    accepts 1 0 (point 1 0) 0 (1 / 8) = true ∧
      rateBound 1 0 (point 1 0) 8 (1 / 8) = 1 ∧
      accepts 1 0 (point 1 0) 8 (1 / 8) = false := by
  norm_num [accepts, rateBound, normMajorant, slopeDefectDisk,
    diskSub, diskAdd, diskNeg, diskMul, centerSize, point]

/-- A center value is not an enclosure with zero error; unit uncertainty uses the whole margin. -/
theorem slope_uncertainty_rejected_fixture :
    accepts 1 0 ⟨1, 0, 1⟩ 0 (1 / 8) = false := by
  norm_num [accepts, rateBound, normMajorant, slopeDefectDisk,
    diskSub, diskAdd, diskNeg, diskMul, centerSize, point]

/-- The complex multiplier -i exactly cancels the synthetic slope i; no real projection is used. -/
theorem imaginary_slope_fixture :
    rateBound 0 (-1) (point 0 1) 0 (1 / 8) = 0 ∧
      accepts 0 (-1) (point 0 1) 0 (1 / 8) = true := by
  norm_num [accepts, rateBound, normMajorant, slopeDefectDisk,
    diskSub, diskAdd, diskNeg, diskMul, centerSize, point]

/-- Algebraic zero multipliers never supply a strict contraction, even with perfect slope data. -/
theorem zero_multiplier_rejected (slope : Disk) (curvature radius : ℚ) :
    accepts 0 0 slope curvature radius = false := by
  simp [accepts, rateBound, normMajorant, slopeDefectDisk,
    diskSub, diskAdd, diskNeg, diskMul, centerSize, point]

/-- Invalid input radii are rejected by the arithmetic guard before any semantic use. -/
theorem negative_slope_radius_rejected (ar ai : ℚ) (slope : Disk) (curvature radius : ℚ)
    (negative : slope.radius < 0) : accepts ar ai slope curvature radius = false := by
  simp [accepts, not_le.mpr negative]

end

end GRWTSK.NumberTheory.Zeta.Riemann.RationalReflectionContraction
