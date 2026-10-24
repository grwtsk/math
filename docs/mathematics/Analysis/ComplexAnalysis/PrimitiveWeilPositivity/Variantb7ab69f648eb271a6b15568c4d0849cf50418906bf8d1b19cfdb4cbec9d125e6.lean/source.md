# Complete source: GRWTSK.Analysis.ComplexAnalysis.PrimitiveWeilPositivity.Variantb7ab69f648eb271a6b15568c4d0849cf50418906bf8d1b19cfdb4cbec9d125e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `428380c75e325d5a827a776498e11d12857a0013` · SHA-256 `1660f4eea449aba470259a5daef5c9a69d0d53c7da58c499d9a029e6ddb28e20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.VerticalDecay.Variant9021c694d8097b002d11f169d5b1a5f74a3924729859f126a694d474df4d1d83","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9021c694d8097b002d11f169d5b1a5f74a3924729859f126a694d474df4d1d83","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.VerticalDecay.Variant9021c694d8097b002d11f169d5b1a5f74a3924729859f126a694d474df4d1d83","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"9021c694d8097b002d11f169d5b1a5f74a3924729859f126a694d474df4d1d83","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:c03f61eb08da341c588e2eb1/workspace/lib/Surface/Audit/PrimitiveWeilPositivity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Weil.VerticalDecay
public import Surface.Core.Weil.VerticalStripDecay
public import Surface.Core.ComplexAnalysis.ResidueAPI
public import Surface.Core.ComplexAnalysis.ContourShiftAPI

/-!
# Primitive-Weil substrate axiom audit

This ledger covers only the coefficient-free Phase-1 substrate.  It does not
assert an explicit formula, Weil positivity, RH, GRH, or an inhabitant of a
future positivity-family proposition.
-/


namespace GRWTSK.Analysis.ComplexAnalysis.VerticalDecay.Variant9021c694d8097b002d11f169d5b1a5f74a3924729859f126a694d474df4d1d83

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
```
