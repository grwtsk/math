/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.ContractiveZeroSeparation

set_option autoImplicit false

/-!
# A bounded logarithmic-derivative remainder near an isolated root

On the SAME convex disk, whole-disk curvature bounds the first-order remainder
by M*|z-root|^2. Combining it with the correction-map separation bound cancels
both powers of the root distance in the pole-subtracted quotient. No sampled
derivative estimate or boundary-only lower bound is extended into the disk.

The resulting constant |a|*M/(1-q) is conservative: this proof uses two
mean-value estimates, not the sharper integral Taylor factor 1/2. The pole is
at the ACTUAL supplied root, not at the numerical disk center. All divisions
require z != root, and actual value/multiplier nonvanishing is derived first.

This proves a uniform bound on a punctured disk, not a definition or analytic
extension at the root, a contour integral, a multiplicity count or a global
estimate. Root existence and the analytic inputs remain explicit here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Imported trust remains unaudited.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.ContractiveLogDerivativeRemainder

open Set Metric
open GRWTSK.Analysis.ComplexAnalysis.ContractiveZeroSeparation

noncomputable section

/-- The segment joins the observation point to the actual root inside the original disk.
The factor one is a conservative Taylor bound, not a claim of an optimal constant. -/
theorem first_order_remainder_le (f : ℂ → ℂ) (c z root : ℂ) (r M : ℝ)
    (curvatureNonnegative : 0 ≤ M)
    (analytic : AnalyticOnNhd ℂ f (closedBall c r))
    (curvature : ∀ w ∈ closedBall c r, ‖deriv (deriv f) w‖ ≤ M)
    (rootZero : f root = 0) (rootMember : root ∈ closedBall c r)
    (member : z ∈ closedBall c r) :
    ‖(z - root) * deriv f z - f z‖ ≤ M * ‖z - root‖ ^ 2 := by
  have pathSubset : segment ℝ z root ⊆ closedBall c r :=
    (convex_closedBall c r).segment_subset member rootMember
  have slopeVariation (w : ℂ) (hw : w ∈ segment ℝ z root) :
      ‖deriv f w - deriv f z‖ ≤ M * ‖root - z‖ := by
    have variation : ‖deriv f w - deriv f z‖ ≤ M * ‖w - z‖ :=
      (convex_closedBall c r).norm_image_sub_le_of_norm_hasDerivWithin_le
        (fun u hu => (analytic u hu).deriv.differentiableAt.hasDerivAt.hasDerivWithinAt)
        curvature member (pathSubset hw)
    exact variation.trans
      (mul_le_mul_of_nonneg_left (norm_sub_le_of_mem_segment hw) curvatureNonnegative)
  let g : ℂ → ℂ := fun w => f w - f z - deriv f z * (w - z)
  have derivative (w : ℂ) (hw : w ∈ segment ℝ z root) :
      HasDerivWithinAt g (deriv f w - deriv f z) (segment ℝ z root) w := by
    have linear : HasDerivAt (fun u : ℂ => deriv f z * (u - z)) (deriv f z) w := by
      convert ((hasDerivAt_id w).sub_const z).const_mul (deriv f z) using 1 <;> first | rfl | simp
    exact (((analytic w (pathSubset hw)).differentiableAt.hasDerivAt.sub_const (f z)).sub
      linear).hasDerivWithinAt
  have remainder := (convex_segment z root).norm_image_sub_le_of_norm_hasDerivWithin_le
    derivative slopeVariation (left_mem_segment ℝ z root) (right_mem_segment ℝ z root)
  have identity : g root - g z = (z - root) * deriv f z - f z := by
    dsimp [g]
    rw [rootZero]
    ring
  rw [identity] at remainder
  have reverse : ‖root - z‖ = ‖z - root‖ := norm_sub_rev _ _
  rw [reverse] at remainder
  simpa only [pow_two, mul_assoc] using remainder

/-- The pole is subtracted at the same actual root. Positive separation proves
all denominators nonzero before the rational identity or norm division is used. -/
theorem pole_subtracted_bound (f : ℂ → ℂ) (a c z root : ℂ) (r q M : ℝ)
    (rateStrict : q < 1) (curvatureNonnegative : 0 ≤ M)
    (analytic : AnalyticOnNhd ℂ f (closedBall c r))
    (derivativeBound : ∀ w ∈ closedBall c r, ‖1 - a * deriv f w‖ ≤ q)
    (curvature : ∀ w ∈ closedBall c r, ‖deriv (deriv f) w‖ ≤ M)
    (rootZero : f root = 0) (rootMember : root ∈ closedBall c r)
    (member : z ∈ closedBall c r) (distinct : z ≠ root) :
    f z ≠ 0 ∧ ‖deriv f z / f z - 1 / (z - root)‖ ≤ ‖a‖ * M / (1 - q) := by
  have gapPositive : 0 < 1 - q := sub_pos.mpr rateStrict
  have deltaNonzero : z - root ≠ 0 := sub_ne_zero.mpr distinct
  have distancePositive : 0 < ‖z - root‖ := norm_pos_iff.mpr deltaNonzero
  have separation := scaled_value_lower_on_disk f a c z root r q rootZero rootMember member
    (fun w hw => (analytic w hw).differentiableAt) derivativeBound
  have productNonzero : a * f z ≠ 0 :=
    norm_pos_iff.mp ((mul_pos gapPositive distancePositive).trans_le separation)
  have multiplierNonzero : a ≠ 0 := (mul_ne_zero_iff.mp productNonzero).1
  have valueNonzero : f z ≠ 0 := (mul_ne_zero_iff.mp productNonzero).2
  have numeratorBound : ‖a * ((z - root) * deriv f z - f z)‖ ≤
      ‖a‖ * M * ‖z - root‖ ^ 2 := by
    rw [norm_mul]
    simpa only [mul_assoc] using mul_le_mul_of_nonneg_left
      (first_order_remainder_le f c z root r M curvatureNonnegative analytic curvature
        rootZero rootMember member) (norm_nonneg a)
  have denominatorBound : (1 - q) * ‖z - root‖ ^ 2 ≤ ‖a * f z * (z - root)‖ := by
    rw [norm_mul]
    simpa only [pow_two, mul_assoc] using
      mul_le_mul_of_nonneg_right separation (norm_nonneg (z - root))
  have denominatorPositive : 0 < (1 - q) * ‖z - root‖ ^ 2 :=
    mul_pos gapPositive (pow_pos distancePositive 2)
  have numeratorNonnegative : 0 ≤ ‖a‖ * M * ‖z - root‖ ^ 2 :=
    mul_nonneg (mul_nonneg (norm_nonneg a) curvatureNonnegative) (sq_nonneg _)
  have identity : deriv f z / f z - 1 / (z - root) =
      (a * ((z - root) * deriv f z - f z)) / (a * f z * (z - root)) := by
    field_simp [multiplierNonzero, valueNonzero, deltaNonzero] <;> ring
  refine ⟨valueNonzero, ?_⟩
  rw [identity, norm_div]
  calc
    _ ≤ (‖a‖ * M * ‖z - root‖ ^ 2) / ‖a * f z * (z - root)‖ :=
      div_le_div_of_nonneg_right numeratorBound (norm_nonneg _)
    _ ≤ (‖a‖ * M * ‖z - root‖ ^ 2) / ((1 - q) * ‖z - root‖ ^ 2) :=
      div_le_div_of_nonneg_left numeratorNonnegative denominatorPositive denominatorBound
    _ = ‖a‖ * M / (1 - q) := by
      field_simp [ne_of_gt gapPositive, ne_of_gt distancePositive] <;> ring

/-- Replacing the actual root by another center has a real pole-location cost.
Equal labels or nearby displayed heights do not make this difference vanish. -/
theorem pole_location_difference (z root center : ℂ)
    (notRoot : z ≠ root) (notCenter : z ≠ center) :
    ‖1 / (z - root) - 1 / (z - center)‖ =
      ‖root - center‖ / (‖z - root‖ * ‖z - center‖) := by
  have identity : 1 / (z - root) - 1 / (z - center) =
      (root - center) / ((z - root) * (z - center)) := by
    field_simp [sub_ne_zero.mpr notRoot, sub_ne_zero.mpr notCenter] <;> ring
  rw [identity, norm_div, norm_mul]

end

end GRWTSK.Analysis.ComplexAnalysis.ContractiveLogDerivativeRemainder
