/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicThetaOctaveSupplier
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicThetaOctaveSupplierControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

theorem theta_supplier_returns_original_energy
    (h : AllDyadicThetaOctaveSquareRootBound) :
    AllDyadicEnergyBound :=
  thetaOctaveSquareRootBound_to_allDyadicEnergyBound h

end GRWTSK.RiemannHypothesis.Checks.DyadicThetaOctaveSupplierControls
