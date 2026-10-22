/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftCoefficientDecay
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SafeShiftCoefficientDecayControls

open Filter Topology
open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem axial_unrenormalized_decay (z : ZeroPoint) :
    Tendsto (safeAxialQuarticCoefficient z) atTop (𝓝 0) :=
  safeAxialQuarticCoefficient_tendsto_zero z

theorem transverse_unrenormalized_decay (z : ZeroPoint) :
    Tendsto (safeTransverseQuarticCoefficient z) atTop (𝓝 0) :=
  safeTransverseQuarticCoefficient_tendsto_zero z

end GRWTSK.RiemannHypothesis.Checks.SafeShiftCoefficientDecayControls
