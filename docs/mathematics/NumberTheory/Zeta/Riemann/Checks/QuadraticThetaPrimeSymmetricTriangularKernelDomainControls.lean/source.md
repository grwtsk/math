# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeSymmetricTriangularKernelDomainControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ea32f6d8f850b872ed1da8dcbf52192e4d13185` · SHA-256 `d5c44a3098eb6cc8b4fb4d73637ec2147b9018b3ab8b5e51ecdee350504a011e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeSymmetricTriangularKernelDomain
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeSymmetricTriangularKernelDomainControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["global t!=0 closed-form domain is stronger than the downstream route needs",
   "correct domain is 0<|t|<=1/2",
   "Jordan inequality proves denominator nonzero on that domain",
   "off-boundary closed form still implies the full pointwise decay claim",
   "sine conversion interface is corrected to the same domain"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeSymmetricTriangularKernelDomainControls
```
