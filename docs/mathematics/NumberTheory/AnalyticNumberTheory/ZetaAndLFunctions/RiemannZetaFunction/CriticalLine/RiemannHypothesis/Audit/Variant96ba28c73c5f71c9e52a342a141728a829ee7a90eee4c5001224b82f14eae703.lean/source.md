# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Audit.Variant96ba28c73c5f71c9e52a342a141728a829ee7a90eee4c5001224b82f14eae703

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `deeda00d7185da4a19628f3571ddaf38c4bf66f0` · SHA-256 `96ba28c73c5f71c9e52a342a141728a829ee7a90eee4c5001224b82f14eae703`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePhasePolynomialBudget

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourcePhasePolynomialBudget

#check @phasePolynomialCoefficient
#print axioms phasePolynomialCoefficient
#check @phasePolynomialCoefficient_pos
#print axioms phasePolynomialCoefficient_pos
#check @positiveMass_ge_taylor
#print axioms positiveMass_ge_taylor
#check @positiveMass_gt_polynomial
#print axioms positiveMass_gt_polynomial
#check @positiveMass_eventually_gt_polynomial
#print axioms positiveMass_eventually_gt_polynomial
#check @positiveMass_not_eventually_polynomial_bounded
#print axioms positiveMass_not_eventually_polynomial_bounded
```
