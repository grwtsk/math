# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaRecurrenceSupplierControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79aabcd26206bdfc28455994fac0689392db1393` · SHA-256 `60196d1e1d595ec157499d9dcab6bea3c5861469202297e65420aabf92cc12d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaRecurrenceSupplier
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaRecurrenceSupplierControls

open GRWTSK.RiemannHypothesis

def requiredRecurrences : List String :=
  ["rho=7/8: next octave <= K*A^2/X + descended residual",
   "rho=3/4: next octave <= K*A^2/X + critical residual"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaRecurrenceSupplierControls
```
