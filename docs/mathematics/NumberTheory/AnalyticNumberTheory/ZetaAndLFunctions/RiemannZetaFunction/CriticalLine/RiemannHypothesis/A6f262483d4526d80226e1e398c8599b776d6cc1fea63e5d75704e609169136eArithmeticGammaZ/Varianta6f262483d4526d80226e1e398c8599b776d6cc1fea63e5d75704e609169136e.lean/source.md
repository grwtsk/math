# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.A6f262483d4526d80226e1e398c8599b776d6cc1fea63e5d75704e609169136eArithmeticGammaZ.Varianta6f262483d4526d80226e1e398c8599b776d6cc1fea63e5d75704e609169136e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f59d06f7bf1cb8140fc873b1d6d9ac055b15ee9d` · SHA-256 `a6f262483d4526d80226e1e398c8599b776d6cc1fea63e5d75704e609169136e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.FullQuadraticObstruction
import Zeta23.GammaFacts.Mu
import Mathlib.Analysis.Complex.ExponentialBounds
open FormalResearch.RiemannHypothesis.SourcePairing
open scoped BigOperators
#check Real.exp_one_lt_three
#check Real.one_half_lt_eulerMascheroniConstant
#check Real.pi_gt_three
#check Real.lt_log_iff_exp_lt
#check Finset.sum_range_sub
#check Finset.sum_range_sub'
#check Zeta23.MuFields.re_digamma_vertical
#check Zeta23.MuFields.summable_re_terms
#check le_of_tendsto
```
