# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PrimitiveWeilPositivity.Variantf49d434173125d2a40077ef65f11cd6fa3b4ccd3ab94a1fcf5b7ab2aa6f8d069

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `860fca217af2c09c999b3f22a95f092767813bad` · SHA-256 `f49d434173125d2a40077ef65f11cd6fa3b4ccd3ab94a1fcf5b7ab2aa6f8d069`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.Weil.LaplaceTransform

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
```
