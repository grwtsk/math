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
