# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicFourierFrameEnergyEquivalenceControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cbe4184f3870f7ae3cedbee608900f26a4714c53` · SHA-256 `cd48e1c6e47893b27c9d72f7bbb487e4af0668a61c1dcd5c75fe55199e9e0dd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicFourierFrameEnergyEquivalence
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicFourierFrameEnergyEquivalenceControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem frame_bound_is_exactly_original_supplier :
    AllDyadicAdmissibleActionFrameBound ↔ AllDyadicEnergyBound :=
  allDyadicAdmissibleActionFrameBound_iff_energy

end GRWTSK.RiemannHypothesis.Checks.DyadicFourierFrameEnergyEquivalenceControls
```
