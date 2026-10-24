# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerBoundaryMinimalExactReadoutControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `098fba76504c581c33b50878ddb1f850d83da3a5` · SHA-256 `5ead60b543a8e9a2bf3cdb82fe3450ba0cf15aadd1bf369f7a489392b65b7390`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerBoundaryMinimalExactReadout
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerBoundaryMinimalExactReadoutControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["the concrete boundary-minimal cutoff schedule is already source-proved",
   "an exact X^(3/2) log^4 correlation bound gives an X^(3/4) log^2 smoothed-value bound",
   "the square-root extraction uses the exact weighted prime-atom correlation identity",
   "the ceiling cutoff satisfies X/N <= X^(3/4)",
   "on dyadic scales 1+log(2X) <= 4 log X",
   "on dyadic scales 1+log(4X) <= 5 log X",
   "the corrected Fejer boundary error is at most 80 X^(3/4) log(X)^2",
   "the sharp discrepancy is the smoothed value plus its actual approximation error",
   "the deterministic exact-correlation readout is source-proved",
   "the exact seven-eighths weighted prime-atom correlation theorem is the sole remaining supplier",
   "no threshold descent or Riemann Hypothesis result is supplied"]

theorem deterministicExactReadoutClosed :
    SevenEighthsBoundaryMinimalExactCorrelationReadout :=
  sevenEighthsBoundaryMinimalExactCorrelationReadout

def remainingArithmeticFrontier : Prop :=
  SevenEighthsBoundaryMinimalExactCorrelationBound

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerBoundaryMinimalExactReadoutControls
```
