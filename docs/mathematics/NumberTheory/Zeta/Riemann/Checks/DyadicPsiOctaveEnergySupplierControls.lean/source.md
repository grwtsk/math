# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicPsiOctaveEnergySupplierControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd9c676ed5c57d1f1c017f76c7db37018fcbd168` · SHA-256 `91b6b6551bd6f7e0d5fe000ff6aaeb845431e1af9187cc85a56d1b8e13623d3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPsiOctaveEnergySupplier
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicPsiOctaveEnergySupplierControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem psi_supplier_returns_original_energy
    (h : AllDyadicPsiOctaveSquareRootBound) :
    AllDyadicEnergyBound :=
  psiOctaveSquareRootBound_to_allDyadicEnergyBound h

end GRWTSK.RiemannHypothesis.Checks.DyadicPsiOctaveEnergySupplierControls
```
