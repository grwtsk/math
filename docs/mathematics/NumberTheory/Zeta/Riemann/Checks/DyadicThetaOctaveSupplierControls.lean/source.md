# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicThetaOctaveSupplierControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fcfd8b9c8c22abe7d42c1146713ca56d4b59f2f` · SHA-256 `a4ecbff64a6545aa001e8fba9893cf4651ae9e1ff2ddd3aaeeceaba95fd0ba4d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicThetaOctaveSupplier
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicThetaOctaveSupplierControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem theta_supplier_returns_original_energy
    (h : AllDyadicThetaOctaveSquareRootBound) :
    AllDyadicEnergyBound :=
  thetaOctaveSquareRootBound_to_allDyadicEnergyBound h

end GRWTSK.RiemannHypothesis.Checks.DyadicThetaOctaveSupplierControls
```
