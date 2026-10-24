# Complete source: GRWTSK.NumberTheory.Moebius.PolynomialEnergyHolomorphy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6693f419c965ddcb0897cc2105bd09d2797045e0` · SHA-256 `5b0b3a94fdffebba9e82262cd4dea7a9b4cad0379bd45f1c4b738c8e1987fca0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
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
```
