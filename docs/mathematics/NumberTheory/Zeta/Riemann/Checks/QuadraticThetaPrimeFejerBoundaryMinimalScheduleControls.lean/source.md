# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerBoundaryMinimalScheduleControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34b33fbb776a5408a2fc5827f243470766b6be4a` · SHA-256 `af45661255093f867e33110bf4407ba9a5770513d90994972f6fb0ffc5ed98cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerBoundaryMinimalSchedule
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerBoundaryMinimalScheduleControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["the seven-eighths boundary-minimal bandwidth exponent is 1/4",
   "the concrete cutoff is ceil((dyadicScale j)^(1/4))",
   "the concrete cutoff is positive at every dyadic scale",
   "the concrete cutoff lies between X^(1/4) and X^(1/4)+1",
   "the concrete cutoff is strictly below the corrected period 4X",
   "the boundary-minimal dyadic Fejer cutoff schedule is source-constructed",
   "the schedule obligation is removed from the exact-correlation frontier",
   "the exact X^(3/2) log^4 weighted prime-atom correlation theorem remains open",
   "the deterministic exact-correlation readout remains open",
   "the seven-eighths smoothed-value supplier remains open"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerBoundaryMinimalScheduleControls
```
