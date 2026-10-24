# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerShiftCorrelationReductionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `004f7e923a01bc7dfd7a7656fe9aa4522d4fa996` · SHA-256 `8fc64af8e344e4ebb6cba577c7e5b0a22805cc99414692c1840c4dbf7ce8dc10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerShiftCorrelationReduction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerShiftCorrelationReductionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["the signed off-diagonal is exactly the sum over ordered unequal octave pairs",
   "coordinate swap makes the lower and upper triangular pair sums equal",
   "the off-diagonal is twice the upper-triangular pair correlation",
   "upper-triangular pairs are partitioned by positive lag h=q-n",
   "the admissible lag range is 1 through 2X-1",
   "each lag fiber is equivalent to left endpoints n with 2X<n<=4X-h",
   "the lag correlation is an explicit Fejer-weighted centered prime-pair sum",
   "the signed off-diagonal is twice the aggregate positive-shift correlation",
   "absolute aggregate shift control is stronger than required",
   "pointwise X^(1/2) log^4 upper control at each shift is sufficient",
   "O(X) shifts times X^(1/2) gives the target X^(3/2) exponent",
   "the target remains a half-power below trivial X^2 pair counting",
   "the exact aggregate shifted prime-pair bound remains open",
   "no threshold descent or Riemann Hypothesis result is supplied"]

def remainingArithmeticFrontier : Prop :=
  SevenEighthsBoundaryMinimalExactShiftCorrelationBound

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerShiftCorrelationReductionControls
```
