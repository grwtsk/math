# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeTriangularIntegerFrequencyPartitionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3262efb698b8cc1c780c4762ea23108ebc6d4de5` · SHA-256 `76b24acc47d4dc0e1bdac3b38aea6ace5a0e9a8d54e03b1a73a2969119a4c139`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularIntegerFrequencyPartition
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularIntegerFrequencyPartitionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["positive integer-frequency coefficients match (N-d)/N",
   "negative coefficients match by symmetry",
   "zero coefficient is exactly one",
   "endpoint coefficients at plus/minus N vanish",
   "only the finite Icc(-N,N) support partition identity remains"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularIntegerFrequencyPartitionControls
```
