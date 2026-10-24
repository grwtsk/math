/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyCoordinateCriterion
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyCoordinateCriterionControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

theorem prime_only_bound_is_exactly_RH_G01_supplier :
    AllDyadicPrimeOnlyFourierCoordinateBound ↔ AllDyadicEnergyBound :=
  allDyadicPrimeOnlyFourierCoordinateBound_iff_energy

end GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyCoordinateCriterionControls
