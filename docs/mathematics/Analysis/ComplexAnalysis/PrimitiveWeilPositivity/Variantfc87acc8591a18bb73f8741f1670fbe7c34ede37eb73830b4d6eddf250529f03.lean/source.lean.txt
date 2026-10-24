-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.VerticalDecay.Variant5382f8b5f94c9c255b344348f41f8b83cbd43311f962cb8484dc58091c51c02c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5382f8b5f94c9c255b344348f41f8b83cbd43311f962cb8484dc58091c51c02c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.VerticalDecay.Variant5382f8b5f94c9c255b344348f41f8b83cbd43311f962cb8484dc58091c51c02c","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"5382f8b5f94c9c255b344348f41f8b83cbd43311f962cb8484dc58091c51c02c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:13782afb56735f2a5a3426c2/workspace/lib/Surface/Audit/PrimitiveWeilPositivity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Weil.VerticalDecay
public import Surface.Core.Weil.VerticalStripDecay
public import Surface.Core.ComplexAnalysis.MeromorphicOrder
public import Surface.Core.ComplexAnalysis.LogDerivativeResidue
public import Surface.Core.ComplexAnalysis.PrincipalPart
public import Surface.Core.ComplexAnalysis.RectangleDivisorAvoidance

/-!
# Primitive-Weil substrate axiom audit

This ledger covers only the coefficient-free Phase-1 substrate.  It does not
assert an explicit formula, Weil positivity, RH, GRH, or an inhabitant of a
future positivity-family proposition.
-/


namespace GRWTSK.Analysis.ComplexAnalysis.VerticalDecay.Variant5382f8b5f94c9c255b344348f41f8b83cbd43311f962cb8484dc58091c51c02c

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
