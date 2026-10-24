# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerFiniteOrthogonalityControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e79a83e64475e2d7f05f86e05aa59b55ca021a0` · SHA-256 `12fa2579fbbdb83b1fe6be7331a28227d91bd6970ebea1195372acd541659784`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFiniteOrthogonality
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerFiniteOrthogonalityControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["period-4X mode ratio has full-period power one",
   "nonzero mode modulo 4X gives ratio not equal to one",
   "lattice Fourier mode equals a geometric power",
   "finite geometric sum proves nonzero mode orthogonality",
   "PeriodFourXSampledKernelMassOneClaim is discharged",
   "discrete reproduction prerequisites are now complete",
   "remaining supplier is sharp-step convolution comparison"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerFiniteOrthogonalityControls
```
