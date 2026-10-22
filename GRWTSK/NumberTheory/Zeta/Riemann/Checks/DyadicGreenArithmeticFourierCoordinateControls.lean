/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenArithmeticFourierCoordinate
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenArithmeticFourierCoordinateControls

open Filter Topology
open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem arithmetic_coordinates_capture_green_energy
    {X : ℕ} (hX : 0 < X) :
    Tendsto (greenArithmeticFourierHead X)
      atTop (𝓝 (greenEnergy X)) :=
  greenArithmeticFourierHead_tendsto hX

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenArithmeticFourierCoordinateControls
