# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerVonMangoldtShiftReductionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6197cbd54909b89eed16663aa0803091d0bdd6b` · SHA-256 `3e35a53cabb48d583c315eb0c3c6f49d2b12f41cb962e47a4ffbd3dfb1a096b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerVonMangoldtShiftReduction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerVonMangoldtShiftReductionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["the prime-only centered atom is exactly centered von Mangoldt minus the higher-prime-power correction",
   "the correction is nonnegative and supported on non-prime prime powers",
   "Mathlib Chebyshev theory gives psi minus theta of square-root size",
   "the total octave correction mass is therefore O(X^(1/2))",
   "Fejer weighting cannot increase the correction mass",
   "positive-pair projection multiplicity is at most 2X",
   "both mixed correction channels are within X^(3/2) log(X)^4",
   "the correction-correction channel is within X^(3/2) log(X)^4",
   "the complete higher-prime-power shifted remainder is source-controlled",
   "the original prime shift aggregate equals the von Mangoldt aggregate plus that remainder",
   "a centered von Mangoldt shift theorem implies the original prime-only shift theorem",
   "the centered von Mangoldt shifted aggregate bound is the exact open arithmetic supplier",
   "no threshold descent or Riemann Hypothesis result is supplied"]

theorem primePowerRemainderClosed :
    SevenEighthsBoundaryMinimalPrimePowerRemainderBound :=
  sevenEighthsBoundaryMinimalPrimePowerRemainderBound

def remainingArithmeticFrontier : Prop :=
  SevenEighthsBoundaryMinimalVonMangoldtShiftCorrelationBound

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerVonMangoldtShiftReductionControls
```
