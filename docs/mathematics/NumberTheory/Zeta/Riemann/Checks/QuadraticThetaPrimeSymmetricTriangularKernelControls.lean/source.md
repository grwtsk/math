# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeSymmetricTriangularKernelControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c85e6f50409b3888b2dada3ddb1b444040118224` · SHA-256 `2bfaca9e8f1781ed464ea8e1ace6089862c8392f688b49fb24a6748356eb4a94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeSymmetricTriangularKernel
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeSymmetricTriangularKernelControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["correct Fejer-type profile is symmetric in integer frequencies",
   "weight is 1-|k|/N for |k|<N and zero outside",
   "the previous one-sided profile is the nonnegative restriction",
   "explicit symmetric trigonometric polynomial is now defined",
   "closed form and off-boundary decay remain open"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeSymmetricTriangularKernelControls
```
