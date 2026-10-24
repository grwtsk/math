# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicHigherPrimePowerFourierEnergyControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e0db72a80032e737b08d21e684dcc5271ca6902` · SHA-256 `6b8659f4e58a0549b5ea80fcce668272e919cd8a9e09e9eeebd0edf3ef445a94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicHigherPrimePowerFourierEnergy
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicHigherPrimePowerFourierEnergyControls

open GRWTSK.RiemannHypothesis

theorem full_higher_power_channel_is_summable (X : ℕ) :
    Summable (higherPrimePowerFourierModeEnergy X) :=
  higherPrimePowerFourierModeEnergy_summable X

end GRWTSK.RiemannHypothesis.Checks.DyadicHigherPrimePowerFourierEnergyControls
```
