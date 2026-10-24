# Complete source: GRWTSK.Topology.GeneralTopology.RectangleContour.Variantf4c2557c3339bd495ba0c76c63827b4e13c07a997af1981213ce429ce9224df4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a1d2901945e8b38eeccfd6b9a70275cfc48a5fd` · SHA-256 `0ae1789b5668c1920342854c8fe18335e697ac450c8565126b4918290550b7d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ClosedRectangle.Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ClosedRectangle.Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c","mathematical_subject":"Topology.GeneralTopology","original_sha256":"04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0f8be735e72b86798936f454/workspace/lib/Surface/Core/ComplexAnalysis/RectangleContour.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
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


namespace GRWTSK.Topology.GeneralTopology.ClosedRectangle.Variant04c866a2c7e9c325e16ebdf9f4cfdb96fb01f194aacd5f69626bc8875137526c

public section

namespace Surface.Core.ComplexAnalysis

noncomputable section

open Set Complex MeasureTheory

/-- Closed axis-aligned rectangle with corners `z` and `w`; endpoint order is
irrelevant because `uIcc` is used on each coordinate. -/
@[expose]
def closedRectangle (z w : ℂ) : Set ℂ :=
  Set.uIcc z.re w.re ×ℂ Set.uIcc z.im w.im

@[surface_adapter]
theorem isCompact_closedRectangle (z w : ℂ) :
    IsCompact (closedRectangle z w) := by
  exact isCompact_uIcc.reProdIm isCompact_uIcc

/-- Horizontal integral at height `y`, oriented from `z.re` to `w.re`. -/
@[expose]
def rectangleHorizontalIntegral
    (f : ℂ → ℂ) (z w : ℂ) (y : ℝ) : ℂ :=
  ∫ x : ℝ in z.re..w.re, f (x + y * Complex.I)

/-- Vertical integral at real coordinate `x`, oriented from `z.im` to
`w.im`, including the differential factor `I`. -/
@[expose]
def rectangleVerticalIntegral
    (f : ℂ → ℂ) (z w : ℂ) (x : ℝ) : ℂ :=
  Complex.I • (∫ y : ℝ in z.im..w.im, f (x + y * Complex.I))

/-- Positively oriented rectangular boundary integral in mathlib's raw edge
normalization. -/
@[expose]
def rectangleBoundaryIntegral
    (f : ℂ → ℂ) (z w : ℂ) : ℂ :=
  rectangleHorizontalIntegral f z w z.im -
      rectangleHorizontalIntegral f z w w.im +
    rectangleVerticalIntegral f z w w.re -
      rectangleVerticalIntegral f z w z.re

/-- Cauchy--Goursat on a closed rectangle, exposed in the stable Surface edge
API. -/
@[surface_adapter, surface_published]
theorem rectangleBoundaryIntegral_eq_zero_of_differentiableOn
    (f : ℂ → ℂ) (z w : ℂ)
    (hf : DifferentiableOn ℂ f (closedRectangle z w)) :
    rectangleBoundaryIntegral f z w = 0 := by
  exact Complex.integral_boundary_rect_eq_zero_of_differentiableOn f z w hf

/-- The honest pole-free vertical-line shift: the change between the two
vertical edges equals the difference of the horizontal edges. -/
@[surface_novel, surface_published]
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
@[surface_adapter, surface_published]
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
