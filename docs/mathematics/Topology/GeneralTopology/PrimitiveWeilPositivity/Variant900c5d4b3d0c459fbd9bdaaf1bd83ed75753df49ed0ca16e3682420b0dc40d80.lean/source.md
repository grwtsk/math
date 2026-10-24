# Complete source: GRWTSK.Topology.GeneralTopology.PrimitiveWeilPositivity.Variant900c5d4b3d0c459fbd9bdaaf1bd83ed75753df49ed0ca16e3682420b0dc40d80

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d07d7d0453206d5743759d95d112ec77459e50a` · SHA-256 `8add1d3cc3fafd17c32857d5b52d9ac06bb2e7cab225d726eed253ced85fd5d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.VerticalDecay.Variant801e1465ad83fec4c3eeedd58a3d3f8f806bebfe3f6e7b225d925108efe2a211","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"801e1465ad83fec4c3eeedd58a3d3f8f806bebfe3f6e7b225d925108efe2a211","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.VerticalDecay.Variant801e1465ad83fec4c3eeedd58a3d3f8f806bebfe3f6e7b225d925108efe2a211","mathematical_subject":"Topology.GeneralTopology","original_sha256":"801e1465ad83fec4c3eeedd58a3d3f8f806bebfe3f6e7b225d925108efe2a211","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Audit/PrimitiveWeilPositivity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Weil.VerticalDecay
public import Surface.Core.Weil.VerticalStripDecay
public import Surface.Core.ComplexAnalysis.ResidueAPI
public import Surface.Core.ComplexAnalysis.ContourShiftAPI
public import Surface.Core.ComplexAnalysis.FiniteHoleGeometry

/-!
# Primitive-Weil substrate axiom audit

This ledger covers only the coefficient-free Phase-1 substrate.  It does not
assert an explicit formula, Weil positivity, RH, GRH, or an inhabitant of a
future positivity-family proposition.
-/


namespace GRWTSK.Topology.GeneralTopology.VerticalDecay.Variant801e1465ad83fec4c3eeedd58a3d3f8f806bebfe3f6e7b225d925108efe2a211

#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.star_star_apply
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.autocorrelation_neg
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.autocorrelation_zero
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.autocorrelation_support
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.hasDerivAt_primitiveWeilLaplace
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.differentiable_primitiveWeilLaplace
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.primitiveWeilLaplace_star
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.primitiveWeilLaplace_autocorrelation
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.primitiveWeilLaplace_autocorrelation_on_criticalLine
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.primitiveWeilLaplace_eq_fourier_laplaceSlice
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.primitiveWeilLaplace_vertical_normalized_pow_bound
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.primitiveWeilLaplace_vertical_pow_bound
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.primitiveWeilLaplace_decay_fixedRealPart
#print axioms Surface.Core.Weil.PrimitiveWeilTestFunction.primitiveWeilLaplace_decay_realStrip
#print axioms Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral_eq_zero_of_differentiableOn
#print axioms Surface.Core.ComplexAnalysis.rectangleVerticalShift_eq_horizontalDifference
#print axioms Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn
#print axioms Surface.Core.ComplexAnalysis.rectangleDivisor_apply
#print axioms Surface.Core.ComplexAnalysis.rectangleDivisor_support_finite
#print axioms Surface.Core.ComplexAnalysis.mem_rectangleDivisorSupportFinset
#print axioms Surface.Core.ComplexAnalysis.AnalyticAt.logDeriv_eventuallyEq_principalPart
#print axioms Surface.Core.ComplexAnalysis.AnalyticAt.hasSimplePoleResidueAt_logDeriv
#print axioms Surface.Core.ComplexAnalysis.AnalyticAt.exists_smallCircle_normalizedIntegral_logDeriv_eq_order
#print axioms Surface.Core.ComplexAnalysis.exists_height_avoiding_finite
#print axioms Surface.Core.ComplexAnalysis.exists_real_avoiding_finite
#print axioms Surface.Core.ComplexAnalysis.exists_height_avoiding_rectangleDivisor
#print axioms Surface.Core.ComplexAnalysis.exists_real_avoiding_rectangleDivisor
#print axioms Surface.Core.ComplexAnalysis.logDeriv_eventuallyEq_order_div_sub_add_regular
#print axioms Surface.Core.ComplexAnalysis.logDeriv_hasResidueCoefficientAt_order
#print axioms Surface.Core.ComplexAnalysis.logDeriv_smallCircle_normalizedIntegral_eq_order
#print axioms Surface.Core.ComplexAnalysis.poleFree_rectangleBoundaryIntegral_eq_zero
#print axioms Surface.Core.ComplexAnalysis.poleFree_rectangleBoundaryIntegral_eq_zero_of_continuousOn
#print axioms Surface.Core.ComplexAnalysis.poleFree_verticalShift_eq_horizontalDifference
#print axioms Surface.Core.ComplexAnalysis.finite_rectangleDivisorSupport
#print axioms Surface.Core.ComplexAnalysis.exists_horizontalContour_avoiding_rectangleDivisor
#print axioms Surface.Core.ComplexAnalysis.exists_verticalContour_avoiding_rectangleDivisor
#print axioms Surface.Core.ComplexAnalysis.isOpen_openRectangle
#print axioms Surface.Core.ComplexAnalysis.closedBall_subset_openRectangle_of_coordinateMargin
#print axioms Surface.Core.ComplexAnalysis.RectangleHoleConfiguration.hole_center_mem_rectangle
#print axioms Surface.Core.ComplexAnalysis.RectangleHoleConfiguration.hole_circle_subset_rectangle
#print axioms Surface.Core.ComplexAnalysis.RectangleHoleConfiguration.hole_circle_disjoint_rectangle_boundary
#print axioms Surface.Core.ComplexAnalysis.RectangleHoleConfiguration.hole_closedBalls_disjoint
#print axioms Surface.Core.ComplexAnalysis.RectangleHoleConfiguration.hole_circles_pairwise_disjoint
#print axioms Surface.Core.ComplexAnalysis.RectangleHoleConfiguration.hole_center_ne_other_center
#print axioms Surface.Core.ComplexAnalysis.RectangleHoleConfiguration.finiteHoleUnion_isClosed
#print axioms Surface.Core.ComplexAnalysis.RectangleHoleConfiguration.puncturedRectangle_isOpen
```
