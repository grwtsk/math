# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerFirstMomentHarmonicControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4fd1008366768e281a5273da80f3e854b38ad9d` · SHA-256 `6d042ed7137f01a1aa1ee9358d61b96a13eda57389ff9a65fbe728b372193816`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFirstMomentHarmonic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerFirstMomentHarmonicControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["finite reciprocal sum is identified exactly with harmonic(2X)",
   "harmonic_le_one_add_log closes the logarithmic summation loss",
   "NonAliasingFejerFirstMomentHarmonicBoundClaim is discharged",
   "full first-moment budget has X/N times two logarithmic factors",
   "remaining theorem is only the sharp-step convolution comparison"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerFirstMomentHarmonicControls
```
