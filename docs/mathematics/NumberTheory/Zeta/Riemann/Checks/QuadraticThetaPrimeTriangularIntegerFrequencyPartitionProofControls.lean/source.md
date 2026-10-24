# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeTriangularIntegerFrequencyPartitionProofControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bac90a18998de29639b516e7d20145a6efa3caf7` · SHA-256 `fddf9d18f4a34b72bb6a1cfa0eb0eb75ea9d43ef6182f3b64205636689193080`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularIntegerFrequencyPartitionProof
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularIntegerFrequencyPartitionProofControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["Icc(-N,N) support partition is source-proved",
   "assembled frequency sum equals symmetric triangular kernel",
   "symmetric triangular kernel autocorrelation claim is discharged",
   "remaining kernel frontier is off-boundary sine conversion"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularIntegerFrequencyPartitionProofControls
```
