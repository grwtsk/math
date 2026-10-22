/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DirichletDampedPrimePowerPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DirichletDampedPrimePowerPackingControls

open Filter Topology
open GRWTSK.RiemannHypothesis

theorem damped_packing_is_positive (n : ℕ) :
    0 ≤ dirichletTwoPackingSequence.valueAt n :=
  dirichletTwoPacking_valueAt_nonnegative n

theorem damped_packing_has_required_decay :
    Tendsto dirichletTwoPackingSequence.valueAt atTop (𝓝 0) :=
  dirichletTwoPacking_valueAt_tendsto_zero

end GRWTSK.RiemannHypothesis.Checks.DirichletDampedPrimePowerPackingControls
