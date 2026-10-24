# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicThresholdDualityControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f6e80b451e62b1668a73d0f0cfe9e460e4c63f8` · SHA-256 `4d933b02c595d7882002d9f01e34098ea35fffe2738214f3af0fdc42b072fd0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicThresholdDuality
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicThresholdDualityControls

open GRWTSK.RiemannHypothesis

/-- The forward dyadic ladder contains the three observed thresholds exactly. -/
theorem concrete_forward_ladder :
    dyadicThreshold 1 = (1 : ℝ) / 2 ∧
      dyadicThreshold 2 = (3 : ℝ) / 4 ∧
        dyadicThreshold 3 = (7 : ℝ) / 8 := by
  norm_num [dyadicThreshold]

/-- The existing quadratic threshold map reverses two dyadic steps exactly. -/
theorem seven_eighths_descends_through_three_quarters_to_half :
    quadraticThreshold
        (quadraticThreshold (dyadicThreshold 3)) =
      dyadicThreshold 1 := by
  rw [quadraticThreshold_dyadicThreshold_succ 2]
  exact quadraticThreshold_dyadicThreshold_succ 1

/-- Defect coordinates expose the factor-two/factor-one-half inverse action. -/
theorem defect_round_trip (ρ : ℝ) :
    thresholdDefect (quadraticThreshold (dyadicLift ρ)) =
      thresholdDefect ρ := by
  rw [quadraticThreshold_dyadicLift]

/-- These statements are explicit nonimplication boundaries, not proof terms. -/
def nonimplications : List String :=
  ["MAX-3SAT approximation hardness does not imply zeta nonvanishing",
   "the common values 1/2, 3/4, 7/8 do not identify proof mechanisms",
   "dyadic threshold algebra does not instantiate QuadraticThetaDescentAt",
   "dyadic threshold algebra does not construct SevenEighthsZeroFreeToTheta",
   "the historical 3/4 general MAX-SAT guarantee is not an optimality theorem",
   "no Riemann Hypothesis conclusion is added by this control module"]

end GRWTSK.RiemannHypothesis.Checks.DyadicThresholdDualityControls
```
