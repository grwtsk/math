/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftQuarticFactorization
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicSafeShiftQuarticFactorizationControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem dyadic_axial_coefficient_nonnegative (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeAxialDyadicQuarticCoefficient z j :=
  safeAxialDyadicQuarticCoefficient_nonnegative z j

theorem dyadic_transverse_coefficient_nonnegative (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeTransverseDyadicQuarticCoefficient z j :=
  safeTransverseDyadicQuarticCoefficient_nonnegative z j

end GRWTSK.RiemannHypothesis.Checks.DyadicSafeShiftQuarticFactorizationControls
