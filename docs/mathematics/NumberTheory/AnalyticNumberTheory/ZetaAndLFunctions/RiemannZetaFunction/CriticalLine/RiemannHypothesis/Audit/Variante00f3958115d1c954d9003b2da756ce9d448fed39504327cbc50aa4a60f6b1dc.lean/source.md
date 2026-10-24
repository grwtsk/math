# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Audit.Variante00f3958115d1c954d9003b2da756ce9d448fed39504327cbc50aa4a60f6b1dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `386f07bd2bc9b529bc07219169f65b68feb8a570` · SHA-256 `e00f3958115d1c954d9003b2da756ce9d448fed39504327cbc50aa4a60f6b1dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel

#check @criticalPrimeTest_contDiff_two
#print axioms criticalPrimeTest_contDiff_two
#check @criticalPrimeTest_deriv_lipschitz
#print axioms criticalPrimeTest_deriv_lipschitz
#check @pairedTailTest_deriv_absolutelyContinuous
#print axioms pairedTailTest_deriv_absolutelyContinuous
#check @criticalRemovedPairedWork_eq_cumulative_work
#print axioms criticalRemovedPairedWork_eq_cumulative_work
#check @criticalRemovedPairedWork_eq_second_abel
#print axioms criticalRemovedPairedWork_eq_second_abel
```
