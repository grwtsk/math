# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuarticVolumePackingEnclosureControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44191ec36cb0f9d92d63a0eb75b3fc0544222eb9` · SHA-256 `0f220d7bd1aed8de0d1325cc7cdd0f18ed1dbbef293e381cc80df0cd062df7b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuarticVolumePackingEnclosure
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuarticVolumePackingEnclosureControls

open GRWTSK.RiemannHypothesis

theorem every_packing_fits_edge_product (p : ThreePointPacking) :
    p.gramVolume ≤ p.edgeProductEnclosure :=
  p.gramVolume_le_edgeProductEnclosure

end GRWTSK.RiemannHypothesis.Checks.QuarticVolumePackingEnclosureControls
```
