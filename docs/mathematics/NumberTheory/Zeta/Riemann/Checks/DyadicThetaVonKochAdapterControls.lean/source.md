# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicThetaVonKochAdapterControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32e6afe566c0ffcbad55e2067691555d0248b984` · SHA-256 `6a6564dac11a0d8245d6508ef0ef24240414ebe9f7328b16ba6a97bf03de069a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicThetaVonKochAdapter
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicThetaVonKochAdapterControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem classical_vonKoch_form_supplies_energy
    (h : ClassicalThetaSqrtLogSqBound) :
    AllDyadicEnergyBound :=
  classicalThetaSqrtLogSqBound_to_allDyadicEnergyBound h

end GRWTSK.RiemannHypothesis.Checks.DyadicThetaVonKochAdapterControls
```
