# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerDiscreteReproductionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7aa4227833e76bd897ee4215cc20f27d04c5b584` · SHA-256 `36e84144d3559ff859c099508193b67340a30fc360dbd7123c962b2566251aff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerDiscreteReproduction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerDiscreteReproductionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["sharp-step comparison requires discrete sampled-kernel mass one",
   "mass one requires alias-free cutoff N < 4X",
   "nonzero triangular frequencies are proved nonzero modulo 4X in that regime",
   "zero Fourier coefficient is exactly one",
   "remaining finite-DFT suppliers are mass-one and sample nonnegativity",
   "accepted comparison interface now includes the cutoff regime"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerDiscreteReproductionControls
```
