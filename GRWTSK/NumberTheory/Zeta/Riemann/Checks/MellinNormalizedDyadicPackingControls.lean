/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.MellinNormalizedDyadicPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.MellinNormalizedDyadicPackingControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem normalized_action_is_uniformly_bounded
    (z : ZeroPoint) (j : ℕ) :
    ‖safePlusDyadicAction z j‖ ≤ safeChebyshevActionConstant z :=
  safePlusDyadicAction_norm_le z j

theorem normalized_quartic_is_positive
    (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeQuarticDyadicActionValue z j :=
  safeQuarticDyadicActionValue_nonnegative z j

end GRWTSK.RiemannHypothesis.Checks.MellinNormalizedDyadicPackingControls
