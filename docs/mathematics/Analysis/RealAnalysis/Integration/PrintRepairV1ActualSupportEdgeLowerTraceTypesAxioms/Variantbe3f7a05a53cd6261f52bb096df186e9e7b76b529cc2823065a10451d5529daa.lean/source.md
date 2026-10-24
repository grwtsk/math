# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.PrintRepairV1ActualSupportEdgeLowerTraceTypesAxioms.Variantbe3f7a05a53cd6261f52bb096df186e9e7b76b529cc2823065a10451d5529daa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09e51762fa600f0b173f76c3b6cff7566a04e1d8` · SHA-256 `be3f7a05a53cd6261f52bb096df186e9e7b76b529cc2823065a10451d5529daa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualSupportEdgeLowerTrace
set_option linter.style.header false
set_option linter.hashCommand false
set_option linter.style.setOption false
set_option pp.all true
set_option pp.maxSteps 100000000
set_option maxHeartbeats 10000000
set_option maxRecDepth 100000
set_option pp.rawOnError false
open FormalResearch.RiemannHypothesis.ActualSupportEdgeLowerTrace
set_option pp.fullNames true
#check actualLowerTimeFactor
#print axioms actualLowerTimeFactor
#check actualLowerTimeFactor_eq_negative_error_integral
#print axioms actualLowerTimeFactor_eq_negative_error_integral
#check actualLowerTimeFactor_abs_le
#print axioms actualLowerTimeFactor_abs_le
#check actualCriticalAdjustedLowerColumnTrace_abs_le
#print axioms actualCriticalAdjustedLowerColumnTrace_abs_le
#check actualCriticalAdjustedLowerColumnTrace_abs_le_square
#print axioms actualCriticalAdjustedLowerColumnTrace_abs_le_square
#check actualCriticalAdjustedLowerColumnTrace_tendsto_zero
#print axioms actualCriticalAdjustedLowerColumnTrace_tendsto_zero
```
