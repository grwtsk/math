# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThresholdDescentProgramControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f85f829b4eb7ad21605d674f5f1dc7c96feeae19` · SHA-256 `9f9fb505dc8cac27d8e0642995bd6d43403f621af3da76c69be0de12985799da`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThresholdDescentProgram
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThresholdDescentProgramControls

open GRWTSK.RiemannHypothesis

theorem seven_eighths_descends_in_two_quadratic_steps :
    quadraticThreshold
        (quadraticThreshold ((7 : ℝ) / 8)) =
      (1 : ℝ) / 2 := by
  norm_num [quadraticThreshold]

def missingGates : List String :=
  ["seven-eighths zero-free -> seven-eighths theta error",
   "source-faithful quadratic theta contraction rho -> 2rho-1"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThresholdDescentProgramControls
```
