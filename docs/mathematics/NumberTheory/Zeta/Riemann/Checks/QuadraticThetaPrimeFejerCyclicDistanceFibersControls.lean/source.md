# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerCyclicDistanceFibersControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `028944cf9aeb67a1818a3a7c9ef769f4ccc8ed79` · SHA-256 `13e015a5a50191b8467f6c789eb5781daab3e070dee34fcee66898e68581e8fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicDistanceFibers
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicDistanceFibersControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["every cyclic distance modulo 4X is at most 2X",
   "a fixed distance d has only the two candidate residues d and 4X-d",
   "every cyclic-distance fiber has cardinality at most two",
   "finite pairing multiplicity is source-closed",
   "remaining pairing work is pointwise signed-kernel to norm-sample comparison plus finite regrouping"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicDistanceFibersControls
```
