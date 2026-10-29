-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ConcentricCircleSingleHoleExcision.Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ConcentricCircleSingleHoleExcision.Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd","mathematical_subject":"Analysis.Integration","original_sha256":"7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/tmp/ca03/BranchGreenStokes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Core.ComplexAnalysis.RectangleContour
import Mathlib.Tactic

/-!
# CA-03 branch: Green--Stokes and single-hole API evidence

This scratch module records the strongest excision theorem available in the
pinned mathlib and the orientation facts needed by a future finite-hole
module.  It is deliberately outside the canonical `Surface` import cone.

The pinned API contains:

* Cauchy--Green and Cauchy--Goursat on a complete rectangle;
* Cauchy--Goursat between two concentric circles.

It also has a separate `curveIntegral`/smooth-homotopy theorem (audited by
branch F1), but the real-variable divergence theorem used here is stated only
for boxes.  It does **not** provide Green--Stokes for a rectangle with a disk
removed, nor a boundary decomposition for that curvilinear domain.
Consequently F4 cannot prove the required equality between a rectangular
outer boundary and a circular inner boundary without first developing a new
piecewise-smooth-domain integration theorem.  The smaller available route is
F1/F2's four smooth side-to-arc homotopies, not a new general Stokes layer.

The orientation tests below also show that a negative circle radius is a
phase shift rather than a clockwise traversal, and that the raw rectangle
integral changes sign if exactly one coordinate direction is reversed.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ConcentricCircleSingleHoleExcision.Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd

#check Complex.integral_boundary_rect_of_hasFDerivAt_real_off_countable
#check Complex.integral_boundary_rect_eq_zero_of_differentiable_on_off_countable
#check Complex.integral_boundary_rect_eq_zero_of_continuousOn_of_differentiableOn
#check Complex.circleIntegral_eq_of_differentiable_on_annulus_off_countable
#check circleIntegral.integral_sub_center_inv

namespace Surface.CA03.BranchGreenStokes

noncomputable section

open Set Complex MeasureTheory Metric

universe u

/-- The strongest exact single-hole excision theorem supplied by the pinned
mathlib has concentric circular inner and outer boundaries. -/
theorem concentricCircleSingleHoleExcision
    {E : Type u} [NormedAddCommGroup E] [NormedSpace ℂ E]
    {f : ℂ → E} {center : ℂ} {inner outer : ℝ}
    (hinner : 0 < inner) (hio : inner ≤ outer)
    (hcontinuous : ContinuousOn f
      (closedBall center outer \ ball center inner))
    (hdiff : DifferentiableOn ℂ f
      (ball center outer \ closedBall center inner)) :
    circleIntegral f center outer = circleIntegral f center inner := by
  exact Complex.circleIntegral_eq_of_differentiable_on_annulus_off_countable
    hinner hio Set.countable_empty hcontinuous
      (fun z hz ↦ hdiff.differentiableAt
        ((isOpen_ball.sdiff isClosed_closedBall).mem_nhds hz.1))

/-- Reversing both corner coordinates preserves the raw rectangular
orientation. -/
theorem rectangleBoundaryIntegral_swap_corners
    (f : ℂ → ℂ) (z w : ℂ) :
    Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral f w z =
      Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral f z w := by
  have hH (y : ℝ) :
      Surface.Core.ComplexAnalysis.rectangleHorizontalIntegral f w z y =
        -Surface.Core.ComplexAnalysis.rectangleHorizontalIntegral f z w y := by
    unfold Surface.Core.ComplexAnalysis.rectangleHorizontalIntegral
    exact intervalIntegral.integral_symm z.re w.re
  have hV (x : ℝ) :
      Surface.Core.ComplexAnalysis.rectangleVerticalIntegral f w z x =
        -Surface.Core.ComplexAnalysis.rectangleVerticalIntegral f z w x := by
    unfold Surface.Core.ComplexAnalysis.rectangleVerticalIntegral
    rw [intervalIntegral.integral_symm z.im w.im]
    simp
  unfold Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral
  rw [hH, hH, hV, hV]
  abel

/-- Reversing exactly the real coordinate reverses the raw rectangular
orientation.  Thus future positive-orientation theorems must order their
corner coordinates or canonicalize them first. -/
theorem rectangleBoundaryIntegral_swap_real_orientation
    (f : ℂ → ℂ) (z w : ℂ) :
    Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral
        f ⟨w.re, z.im⟩ ⟨z.re, w.im⟩ =
      -Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral f z w := by
  have hH (y : ℝ) :
      Surface.Core.ComplexAnalysis.rectangleHorizontalIntegral
          f ⟨w.re, z.im⟩ ⟨z.re, w.im⟩ y =
        -Surface.Core.ComplexAnalysis.rectangleHorizontalIntegral f z w y := by
    unfold Surface.Core.ComplexAnalysis.rectangleHorizontalIntegral
    exact intervalIntegral.integral_symm z.re w.re
  have hV (x : ℝ) :
      Surface.Core.ComplexAnalysis.rectangleVerticalIntegral
          f ⟨w.re, z.im⟩ ⟨z.re, w.im⟩ x =
        Surface.Core.ComplexAnalysis.rectangleVerticalIntegral f z w x := by
    rfl
  unfold Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral
  rw [hH, hH, hV, hV]
  dsimp
  abel

/-- Circle-orientation calibration.  This is positive for every nonzero
signed radius because negating the radius only shifts the parameter by
`Real.pi`; it does not reverse the traversal. -/
theorem circleIntegral_orientation_test (center : ℂ) {radius : ℝ}
    (hradius : radius ≠ 0) :
    circleIntegral (fun z ↦ (z - center)⁻¹) center radius =
      2 * Real.pi * Complex.I :=
  circleIntegral.integral_sub_center_inv center hradius

/-- The constant-integrand calibration agrees on a rectangle and a positive
circle: both positively oriented contour integrals vanish. -/
theorem constant_integrand_orientation_test
    (lower upper center : ℂ) {radius : ℝ} (hradius : 0 ≤ radius) :
    Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral
        (fun _ : ℂ ↦ 1) lower upper =
      circleIntegral (fun _ : ℂ ↦ 1) center radius := by
  calc
    Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral
        (fun _ : ℂ ↦ 1) lower upper = 0 :=
      Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral_eq_zero_of_differentiableOn
        _ _ _ (differentiable_const 1).differentiableOn
    _ = circleIntegral (fun _ : ℂ ↦ 1) center radius := by
      symm
      exact Complex.circleIntegral_eq_zero_of_differentiable_on_off_countable
        hradius Set.countable_empty continuousOn_const
        (fun _ _ ↦ differentiableAt_const 1)

/-- The linear-integrand calibration agrees on a rectangle and a positive
circle: both positively oriented contour integrals vanish. -/
theorem linear_integrand_orientation_test
    (lower upper center : ℂ) {radius : ℝ} (hradius : 0 ≤ radius) :
    Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral
        (fun z : ℂ ↦ z) lower upper =
      circleIntegral (fun z : ℂ ↦ z) center radius := by
  calc
    Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral
        (fun z : ℂ ↦ z) lower upper = 0 :=
      Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral_eq_zero_of_differentiableOn
        _ _ _ differentiable_id.differentiableOn
    _ = circleIntegral (fun z : ℂ ↦ z) center radius := by
      symm
      exact Complex.circleIntegral_eq_zero_of_differentiable_on_off_countable
        hradius Set.countable_empty continuousOn_id
        (fun _ _ ↦ differentiableAt_id)

end


end Surface.CA03.BranchGreenStokes

#print axioms Surface.CA03.BranchGreenStokes.concentricCircleSingleHoleExcision
#print axioms Surface.CA03.BranchGreenStokes.rectangleBoundaryIntegral_swap_corners
#print axioms Surface.CA03.BranchGreenStokes.rectangleBoundaryIntegral_swap_real_orientation
#print axioms Surface.CA03.BranchGreenStokes.circleIntegral_orientation_test
#print axioms Surface.CA03.BranchGreenStokes.constant_integrand_orientation_test
#print axioms Surface.CA03.BranchGreenStokes.linear_integrand_orientation_test
