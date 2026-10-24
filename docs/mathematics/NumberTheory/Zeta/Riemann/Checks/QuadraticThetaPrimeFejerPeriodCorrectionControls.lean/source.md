# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerPeriodCorrectionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d63e3201548fc8c2d51ccc02a2c9ac7adb39e932` · SHA-256 `2a2f2ff2a9d480141695c4d99bc083cb8b3cda6054557baf313c9873f4d24457`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerPeriodCorrection
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerPeriodCorrectionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["original signed sample is X-periodic",
   "original canonical prefix weight aliases p and p+X",
   "octave length is 2X, so period X is structurally too short",
   "corrected operator uses period 4X",
   "all octave differences lie within corrected principal half-period",
   "period-4X normalized sample satisfies X/(N*d^2) decay",
   "remaining theorem is actual sharp-minus-smoothed comparison for corrected operator"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerPeriodCorrectionControls
```
