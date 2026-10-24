# Complete source: GRWTSK.Topology.GeneralTopology.RectangleContour.Variant2fdbd16898c78958b48f2a221bfcf4d3f87d7567f3df3e31f9c7e2a2f0f9c756

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fda4c6a2556d5fca237f3d151e62f20b984209b5` · SHA-256 `b472395d7cf5300ee9e9b86efda71260d79bd8eeffca6f0ecdddd928ef309ad5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ClosedRectangle.Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ClosedRectangle.Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ComplexAnalysis/RectangleContour.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Tactic

/-!
# Pole-free rectangular contour shifts

Pinned mathlib represents a rectangular contour by four interval integrals.
This module gives those edges stable Surface names and packages the exact
pole-free Cauchy--Goursat consequence used by future contour arguments.

It does not state a residue theorem and cannot be used to cross a pole: even
the off-countable mathlib theorem requires continuity on the whole closed
rectangle.
-/


namespace GRWTSK.Topology.GeneralTopology.ClosedRectangle.Variant9231bd1c8b2488e69bf8c1f052dd996dbefc12b552a7b4755ecb6253eb93e75b

public section

namespace Surface.Core.ComplexAnalysis

noncomputable section

open Set Complex MeasureTheory

/-- Closed axis-aligned rectangle with corners `z` and `w`; endpoint order is
irrelevant because `uIcc` is used on each coordinate. -/
def closedRectangle (z w : ℂ) : Set ℂ :=
  Set.uIcc z.re w.re ×ℂ Set.uIcc z.im w.im

theorem isCompact_closedRectangle (z w : ℂ) :
    IsCompact (closedRectangle z w) := by
  exact isCompact_uIcc.reProdIm isCompact_uIcc

/-- Horizontal integral at height `y`, oriented from `z.re` to `w.re`. -/
def rectangleHorizontalIntegral
    (f : ℂ → ℂ) (z w : ℂ) (y : ℝ) : ℂ :=
  ∫ x : ℝ in z.re..w.re, f (x + y * Complex.I)

/-- Vertical integral at real coordinate `x`, oriented from `z.im` to
`w.im`, including the differential factor `I`. -/
def rectangleVerticalIntegral
    (f : ℂ → ℂ) (z w : ℂ) (x : ℝ) : ℂ :=
  Complex.I • (∫ y : ℝ in z.im..w.im, f (x + y * Complex.I))

/-- Positively oriented rectangular boundary integral in mathlib's raw edge
normalization. -/
def rectangleBoundaryIntegral
    (f : ℂ → ℂ) (z w : ℂ) : ℂ :=
  rectangleHorizontalIntegral f z w z.im -
      rectangleHorizontalIntegral f z w w.im +
    rectangleVerticalIntegral f z w w.re -
      rectangleVerticalIntegral f z w z.re

/-- Cauchy--Goursat on a closed rectangle, exposed in the stable Surface edge
API. -/
theorem rectangleBoundaryIntegral_eq_zero_of_differentiableOn
    (f : ℂ → ℂ) (z w : ℂ)
    (hf : DifferentiableOn ℂ f (closedRectangle z w)) :
    rectangleBoundaryIntegral f z w = 0 := by
  exact Complex.integral_boundary_rect_eq_zero_of_differentiableOn f z w hf

/-- The honest pole-free vertical-line shift: the change between the two
vertical edges equals the difference of the horizontal edges. -/
theorem rectangleVerticalShift_eq_horizontalDifference
    (f : ℂ → ℂ) (z w : ℂ)
    (hf : DifferentiableOn ℂ f (closedRectangle z w)) :
    rectangleVerticalIntegral f z w w.re -
        rectangleVerticalIntegral f z w z.re =
      rectangleHorizontalIntegral f z w w.im -
        rectangleHorizontalIntegral f z w z.im := by
  have h := rectangleBoundaryIntegral_eq_zero_of_differentiableOn f z w hf
  unfold rectangleBoundaryIntegral at h
  rw [← sub_eq_zero]
  calc
    (rectangleVerticalIntegral f z w w.re -
          rectangleVerticalIntegral f z w z.re) -
        (rectangleHorizontalIntegral f z w w.im -
          rectangleHorizontalIntegral f z w z.im) =
      rectangleHorizontalIntegral f z w z.im -
          rectangleHorizontalIntegral f z w w.im +
        rectangleVerticalIntegral f z w w.re -
          rectangleVerticalIntegral f z w z.re := by abel
    _ = 0 := h

/-- Variant with continuity on the closed rectangle and differentiability on
its open interior. -/
theorem rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn
    (f : ℂ → ℂ) (z w : ℂ)
    (hc : ContinuousOn f (closedRectangle z w))
    (hd : DifferentiableOn ℂ f
      (Set.Ioo (min z.re w.re) (max z.re w.re) ×ℂ
        Set.Ioo (min z.im w.im) (max z.im w.im))) :
    rectangleBoundaryIntegral f z w = 0 := by
  exact Complex.integral_boundary_rect_eq_zero_of_continuousOn_of_differentiableOn
    f z w hc hd

end

end Surface.Core.ComplexAnalysis
```
