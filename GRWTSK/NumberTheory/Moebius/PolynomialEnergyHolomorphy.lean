/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.LaplaceTransform.PolynomialEnergyHolomorphy
import GRWTSK.Analysis.MeasureTheory.Integral.MoebiusCumulativeEnergy
import GRWTSK.NumberTheory.Zeta.ReciprocalHolomorphyZeroSymmetry
import GRWTSK.Analysis.LaplaceTransform.MoebiusResponseFormula

noncomputable section
open MeasureTheory Set Filter
open scoped Topology
set_option maxHeartbeats 400000
namespace EulerP04RH.LaplaceEnergy

/-- Actual cumulative pickup energy produces actual Laplace holomorphy; no arithmetic input. -/
theorem polynomial_energy_laplace_return :
    RHTerminal.PolynomialEnergyLaplaceReturnObligation := by
  rintro ⟨C, r, hC, _hr, henergy⟩
  have hgrowth : L2Growth NativeWindow.globalPickup C r := by
    intro T hT
    rw [← NativeWindow.energy_eq_global_integral]
    exact henergy T hT
  change AnalyticOnNhd ℂ (signedLaplace NativeWindow.globalPickup)
    RHTerminal.PositiveHalfPlane
  exact signedLaplace_analytic NativeWindow.globalPickup NativeWindow.globalPickup_continuous
    hC hgrowth

/-- The initial half-plane transform is discharged by the actual source Laplace calculation. -/
theorem pickup_initial_identity : RHTerminal.PickupInitialLaplaceObligation := by
  intro z hz
  exact FEMI.pickupLaplace_eq_reciprocal z hz

/-- A proved analytic consumer of literal P04. P04 itself remains an arithmetic hypothesis. -/
theorem literal_RH_of_P04 (hP04 : PPNCP04.P04) : _root_.RiemannHypothesis :=
  RHTerminal.literal_RH_of_P04_and_explicit_analytic_inputs hP04
    polynomial_energy_laplace_return pickup_initial_identity

end EulerP04RH.LaplaceEnergy
#print axioms EulerP04RH.LaplaceEnergy.polynomial_energy_laplace_return
#print axioms EulerP04RH.LaplaceEnergy.literal_RH_of_P04
