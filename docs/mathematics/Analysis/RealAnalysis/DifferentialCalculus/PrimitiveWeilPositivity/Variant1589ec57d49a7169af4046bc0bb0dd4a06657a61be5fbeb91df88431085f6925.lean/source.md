# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PrimitiveWeilPositivity.Variant1589ec57d49a7169af4046bc0bb0dd4a06657a61be5fbeb91df88431085f6925

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44e227c3289cb5460ebc0f8e2b2c415d5a1b619f` · SHA-256 `157d14604e8dfd665809ff897168fb07fc3f8676c3772f0086a0b0f8e91747f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.VerticalDecay.Variant5d8d0ea6c9580398848ed7c3c1d93fdfb126dd3c36012517ab1a1008f351185f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d8d0ea6c9580398848ed7c3c1d93fdfb126dd3c36012517ab1a1008f351185f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.VerticalDecay.Variant5d8d0ea6c9580398848ed7c3c1d93fdfb126dd3c36012517ab1a1008f351185f","mathematical_subject":"Analysis.Calculus","original_sha256":"5d8d0ea6c9580398848ed7c3c1d93fdfb126dd3c36012517ab1a1008f351185f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0f8be735e72b86798936f454/workspace/lib/Surface/Audit/PrimitiveWeilPositivity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Weil.VerticalDecay
public import Surface.Core.ComplexAnalysis.MeromorphicOrder

/-!
# Primitive-Weil substrate axiom audit

This ledger covers only the coefficient-free Phase-1 substrate.  It does not
assert an explicit formula, Weil positivity, RH, GRH, or an inhabitant of a
future positivity-family proposition.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.VerticalDecay.Variant5d8d0ea6c9580398848ed7c3c1d93fdfb126dd3c36012517ab1a1008f351185f

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
#print axioms Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral_eq_zero_of_differentiableOn
#print axioms Surface.Core.ComplexAnalysis.rectangleVerticalShift_eq_horizontalDifference
#print axioms Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn
#print axioms Surface.Core.ComplexAnalysis.rectangleDivisor_apply
#print axioms Surface.Core.ComplexAnalysis.rectangleDivisor_support_finite
#print axioms Surface.Core.ComplexAnalysis.mem_rectangleDivisorSupportFinset
```
