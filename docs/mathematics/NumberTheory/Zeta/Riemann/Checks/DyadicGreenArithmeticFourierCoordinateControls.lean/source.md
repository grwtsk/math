# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicGreenArithmeticFourierCoordinateControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c1c01d86be336d75657b76f75efa2c6623cdf55` · SHA-256 `56aa4ade67c26917d4258ddbb34c3d8c604f1392a3e9f650ceb0c1caaeea6644`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenArithmeticFourierCoordinate
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenArithmeticFourierCoordinateControls

open Filter Topology
open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem arithmetic_coordinates_capture_green_energy
    {X : ℕ} (hX : 0 < X) :
    Tendsto (greenArithmeticFourierHead X)
      atTop (𝓝 (greenEnergy X)) :=
  greenArithmeticFourierHead_tendsto hX

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenArithmeticFourierCoordinateControls
```
