# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.GradedDyadicEnergyHalfPlaneControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65d7ef53865ba8dc844553beaa384e12f6f3aed8` · SHA-256 `7faa822418364ea2a85e4326c55eda986faa9c76aca6014936d52762cae8dadc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.GradedDyadicEnergyHalfPlane
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.GradedDyadicEnergyHalfPlaneControls

open GRWTSK.RiemannHypothesis

theorem half_threshold_recovers_original :
    AllDyadicEnergyAtThreshold (1 / 2 : ℝ) ↔
      GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy.AllDyadicEnergyBound :=
  allDyadicEnergyAtThreshold_half_iff

theorem seven_eighths_energy_returns_seven_eighths_zero_free
    (hE : AllDyadicEnergyAtThreshold ((7 : ℝ) / 8)) :
    RiemannZetaZeroFreeRightHalfPlane ((7 : ℝ) / 8) :=
  energyAtThreshold_to_zeroFree (by norm_num) (by norm_num) hE

end GRWTSK.RiemannHypothesis.Checks.GradedDyadicEnergyHalfPlaneControls
```
