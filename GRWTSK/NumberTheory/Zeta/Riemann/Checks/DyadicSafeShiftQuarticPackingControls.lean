/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftQuarticPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicSafeShiftQuarticPackingControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem dyadic_quartic_positive (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeQuarticDyadicPackingValue z j :=
  safeQuarticDyadicPackingValue_nonnegative z j

theorem dyadic_quartic_has_green_envelope (z : ZeroPoint) (j : ℕ) :
    safeQuarticDyadicPackingValue z j ≤
      148 * safeDyadicEnvelopePairProduct z j :=
  safeQuarticDyadicPackingValue_le_greenEnvelope z j

end GRWTSK.RiemannHypothesis.Checks.DyadicSafeShiftQuarticPackingControls
