/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
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
