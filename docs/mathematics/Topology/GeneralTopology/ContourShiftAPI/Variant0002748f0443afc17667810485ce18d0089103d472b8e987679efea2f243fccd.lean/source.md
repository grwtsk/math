# Complete source: GRWTSK.Topology.GeneralTopology.ContourShiftAPI.Variant0002748f0443afc17667810485ce18d0089103d472b8e987679efea2f243fccd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78d1aed479a28b8b71a45d3149deceff5d89eba6` · SHA-256 `e45ae804ad0be755b14f7a2fdec61d61b2fdcbc99eb5a6e378fec422dbe86201`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.PoleFreeRectangleBoundaryIntegralEqZero.Variant0e39cd39573250a81bbb0c8e42053251ebbdb9a50550b61994844933fcca455d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e39cd39573250a81bbb0c8e42053251ebbdb9a50550b61994844933fcca455d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.PoleFreeRectangleBoundaryIntegralEqZero.Variant0e39cd39573250a81bbb0c8e42053251ebbdb9a50550b61994844933fcca455d","mathematical_subject":"Topology.GeneralTopology","original_sha256":"0e39cd39573250a81bbb0c8e42053251ebbdb9a50550b61994844933fcca455d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:1be2adb07e850a21a2cfc98e/workspace/lib/Surface/Core/ComplexAnalysis/ContourShiftAPI.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ComplexAnalysis.RectangleDivisorAvoidance

/-!
# Frozen Surface API for finite rectangular contour work

This API currently exposes only checked pole-free rectangle identities,
compact divisor finiteness, and boundary-coordinate selection.  It reserves
no theorem constants for the still-unproved finite-hole/excision step.

Future checked implementation work may add, in order:

* `rectangleBoundaryIntegral_eq_sum_smallCircleIntegrals`;
* `rectangleBoundaryIntegral_logDeriv_eq_two_pi_I_mul_divisorSum`;
* `rectangleVerticalShift_logDeriv_eq_horizontalDifference_add_two_pi_I_mul_divisorSum`.

Those names remain documentation only until proof terms exist.
-/


namespace GRWTSK.Topology.GeneralTopology.PoleFreeRectangleBoundaryIntegralEqZero.Variant0e39cd39573250a81bbb0c8e42053251ebbdb9a50550b61994844933fcca455d

public section

namespace Surface.Core.ComplexAnalysis

noncomputable section

open Set Complex

/-- Stable pole-free Cauchy--Goursat adapter for a closed rectangle. -/
@[surface_adapter, surface_published]
theorem poleFree_rectangleBoundaryIntegral_eq_zero
    (f : ℂ → ℂ) (z w : ℂ)
    (hf : DifferentiableOn ℂ f (closedRectangle z w)) :
    rectangleBoundaryIntegral f z w = 0 :=
  rectangleBoundaryIntegral_eq_zero_of_differentiableOn f z w hf

/-- Stable pole-free adapter using continuity on the closed rectangle and
differentiability on its open interior. -/
@[surface_adapter, surface_published]
theorem poleFree_rectangleBoundaryIntegral_eq_zero_of_continuousOn
    (f : ℂ → ℂ) (z w : ℂ)
    (hc : ContinuousOn f (closedRectangle z w))
    (hd : DifferentiableOn ℂ f
      (Set.Ioo (min z.re w.re) (max z.re w.re) ×ℂ
        Set.Ioo (min z.im w.im) (max z.im w.im))) :
    rectangleBoundaryIntegral f z w = 0 :=
  rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn
    f z w hc hd

/-- Stable pole-free vertical contour-shift identity. -/
@[surface_adapter, surface_published]
theorem poleFree_verticalShift_eq_horizontalDifference
    (f : ℂ → ℂ) (z w : ℂ)
    (hf : DifferentiableOn ℂ f (closedRectangle z w)) :
    rectangleVerticalIntegral f z w w.re -
        rectangleVerticalIntegral f z w z.re =
      rectangleHorizontalIntegral f z w w.im -
        rectangleHorizontalIntegral f z w z.im :=
  rectangleVerticalShift_eq_horizontalDifference f z w hf

/-- Stable adapter for compact finiteness of the rectangle divisor. -/
@[surface_adapter, surface_published]
theorem finite_rectangleDivisorSupport
    {f : ℂ → ℂ} {z w : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w)) :
    (rectangleDivisor f z w).support.Finite :=
  rectangleDivisor_support_finite hf

/-- Choose a horizontal contour coordinate avoiding every divisor point. -/
@[surface_adapter, surface_published]
theorem exists_horizontalContour_avoiding_rectangleDivisor
    {f : ℂ → ℂ} {z w : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w))
    {a b : ℝ} (hab : a < b) :
    ∃ t ∈ Set.Ioo a b,
      ∀ p ∈ rectangleDivisorSupportFinset f z w hf, p.im ≠ t :=
  exists_height_avoiding_rectangleDivisor hf hab

/-- Choose a vertical contour coordinate avoiding every divisor point. -/
@[surface_adapter, surface_published]
theorem exists_verticalContour_avoiding_rectangleDivisor
    {f : ℂ → ℂ} {z w : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w))
    {a b : ℝ} (hab : a < b) :
    ∃ t ∈ Set.Ioo a b,
      ∀ p ∈ rectangleDivisorSupportFinset f z w hf, p.re ≠ t :=
  exists_real_avoiding_rectangleDivisor hf hab

end

end Surface.Core.ComplexAnalysis
```
