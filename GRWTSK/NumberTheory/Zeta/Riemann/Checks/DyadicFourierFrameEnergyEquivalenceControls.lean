/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
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
