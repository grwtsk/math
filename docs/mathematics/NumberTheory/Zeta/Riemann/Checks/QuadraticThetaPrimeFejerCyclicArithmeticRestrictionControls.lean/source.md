# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerCyclicArithmeticRestrictionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3655854396dce1fcc50ab5ee92d56341e5238ea6` · SHA-256 `653ca55057453584dfb01be9206ff6dc3639207f6b6bddc30490c9bf1df91a13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicArithmeticRestriction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicArithmeticRestrictionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["octaveRepresentative recovers every arithmetic q in [1,4X]",
   "q=4X is handled explicitly through residue zero",
   "cyclic sharp indicator agrees pointwise with the arithmetic sharp prefix",
   "arithmetic/cyclic identification is reduced to finite residue reindexing plus kernel-difference representation"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicArithmeticRestrictionControls
```
