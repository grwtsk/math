# Complete source: GRWTSK.Analysis.ComplexAnalysis.PrimitiveWeilPositivity.Variant5382f8b5f94c9c255b344348f41f8b83cbd43311f962cb8484dc58091c51c02c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a0e827013e2abf5fd2e3785306bf8a79bfde671` · SHA-256 `5382f8b5f94c9c255b344348f41f8b83cbd43311f962cb8484dc58091c51c02c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
