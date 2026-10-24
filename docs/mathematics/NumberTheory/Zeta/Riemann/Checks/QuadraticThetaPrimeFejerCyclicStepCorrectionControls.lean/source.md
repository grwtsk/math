# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerCyclicStepCorrectionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f4191dc5430691098ab7322801d78d96f374cfc` · SHA-256 `8194cfc1d07b167bbfba97814ecc4a45bcce1dd75275c3fd9ab8862feb0e3ade`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicStepCorrection
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicStepCorrectionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["factor-one positive first moment undercounts the safe cyclic step budget",
   "a displacement d can cross two step boundaries",
   "the symmetric kernel contributes both +d and -d",
   "safe corrected L1 budget is four times the positive-distance first moment",
   "factor four preserves the X/N harmonic power-log shape",
   "remaining theorem is universal cyclic translation contraction"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicStepCorrectionControls
```
