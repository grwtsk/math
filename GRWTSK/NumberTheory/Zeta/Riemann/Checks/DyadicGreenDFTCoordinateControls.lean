/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenDFTCoordinate
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenDFTCoordinateControls

open GRWTSK.RiemannHypothesis

theorem shifted_and_unshifted_phase_agree
    (X : ℕ) (k : ℤ) (n : ℕ) :
    fourier (-k)
      (GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy.location X n :
        AddCircle (1 : ℝ)) =
      greenDFTPhase X k n :=
  fourier_at_location_eq_DFTPhase X k n

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenDFTCoordinateControls
