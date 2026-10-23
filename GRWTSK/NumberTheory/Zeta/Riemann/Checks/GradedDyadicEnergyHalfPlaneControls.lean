/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.GradedDyadicEnergyHalfPlane
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.GradedDyadicEnergyHalfPlaneControls

open GRWTSK.RiemannHypothesis

theorem half_threshold_recovers_original :
    AllDyadicEnergyAtThreshold (1 / 2 : ℝ) ↔
      GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy.AllDyadicEnergyBound :=
  allDyadicEnergyAtThreshold_half_iff

theorem seven_eighths_energy_returns_seven_eighths_zero_free
    (hE : AllDyadicEnergyAtThreshold ((7 : ℝ) / 8)) :
    RiemannZetaZeroFreeRightHalfPlane ((7 : ℝ) / 8) :=
  energyAtThreshold_to_zeroFree (by norm_num) (by norm_num) hE

end GRWTSK.RiemannHypothesis.Checks.GradedDyadicEnergyHalfPlaneControls
