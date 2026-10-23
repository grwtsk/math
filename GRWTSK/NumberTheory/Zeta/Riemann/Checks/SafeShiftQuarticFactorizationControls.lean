/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftQuarticFactorization
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SafeShiftQuarticFactorizationControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem axial_coefficient_positive_semidefinite
    (z : ZeroPoint) (n : ℕ) :
    0 ≤ safeAxialQuarticCoefficient z n :=
  safeAxialQuarticCoefficient_nonnegative z n

theorem transverse_coefficient_positive_semidefinite
    (z : ZeroPoint) (n : ℕ) :
    0 ≤ safeTransverseQuarticCoefficient z n :=
  safeTransverseQuarticCoefficient_nonnegative z n

end GRWTSK.RiemannHypothesis.Checks.SafeShiftQuarticFactorizationControls
