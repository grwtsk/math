# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Probe.Variant3e05822e523e02e0a1850fa1bdda60dd002383e9fcef2611bd8d298490b487c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9545b95d7d3c6609db94e68973bfed3dd0fcf29a` · SHA-256 `3e05822e523e02e0a1850fa1bdda60dd002383e9fcef2611bd8d298490b487c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.InnerPrimitiveTransport
open MeasureTheory Set
#check setIntegral_le_integral
#check integral_sub_left_eq_self
#check Integrable.comp_sub_left
#check tsum_eq_sum
#check Continuous.measurable
#check MeasureTheory.measurable_tsum
#check HasFiniteSupport.summable
#check summable_of_ne_finset_zero
#check Real.summable_one_div_nat_rpow
#check HasCompactSupport.isBounded_range
#check bddAbove_range_iff
```
