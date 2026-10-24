# Complete source: GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeBlockCost

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f71a038e3d724197e4180c3fdeca14af72e59a90` · SHA-256 `e21d519a670676540261b84c0a016cf24b2bf7f4ab9be7bff8b03a09cb2de1ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.PrimeProductPrefixEnergy
import GRWTSK.Analysis.AsymptoticAnalysis.ExponentialRecurrence
import GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeIntervalBounds
import GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeLogBound

/-! Square-root block-cost accounting for an actual complete controller.
The final theorem uses the proved logarithmic all-prime mass estimate.
One last remainder is charged a fixed constant.
-/
noncomputable section
open scoped BigOperators
namespace PPNCP04

theorem controller_square_root_cost_bound {T η κ : ℝ}
    (controller : ActualDiagnostics.AdmissibleController T η) (hκ : 0 ≤ κ) :
    (∑ j, Cost.blockCost κ (Obstruction.harmonicMass (controller.blocks j))) ≤
      Cost.massCostConstant κ η*Obstruction.harmonicMass (primeInventory T)+
        (2*κ*Real.sqrt η+η) := by
  have hc : 0 ≤ Cost.massCostConstant κ η := by
    unfold Cost.massCostConstant
    positivity
  have htail : 0 ≤ 2*κ*Real.sqrt η+η := by
    have hη := controller.eta_positive
    positivity
  cases hrem : controller.remainder with
  | none =>
      have hsum : (∑ j, Cost.blockCost κ (Obstruction.harmonicMass (controller.blocks j))) ≤
          Cost.massCostConstant κ η*(∑ j, Obstruction.harmonicMass (controller.blocks j)) := by
        rw [Finset.mul_sum]
        apply Finset.sum_le_sum
        intro j hj
        apply Cost.blockCost_le_mass hκ controller.eta_positive
        exact controller.mass_lower_regular j (by simp [hrem])
      rw [controller.total_mass_is_inventory_mass] at hsum
      linarith
  | some remainder =>
      have hbound := Cost.sum_cost_with_remainder Finset.univ
        (fun j => Obstruction.harmonicMass (controller.blocks j)) κ η remainder
        hκ controller.eta_positive
        (fun j _ => Finset.sum_nonneg (fun p _ => by positivity))
        (fun j _ => controller.mass_upper j)
        (fun j _ hne => controller.mass_lower_regular j (by
          intro h
          rw [hrem] at h
          exact hne (Option.some.inj h).symm))
      rw [controller.total_mass_is_inventory_mass] at hbound
      exact hbound

theorem controller_cost_log_budget {T η κ C_M : ℝ}
    (controller : ActualDiagnostics.AdmissibleController T η) (hκ : 0 ≤ κ)
    (hmass : Obstruction.harmonicMass (primeInventory T) ≤ C_M*Real.log (2+T)) :
    (∑ j, Cost.blockCost κ (Obstruction.harmonicMass (controller.blocks j))) ≤
      (Cost.massCostConstant κ η*C_M)*Real.log (2+T)+(2*κ*Real.sqrt η+η) := by
  have hc : 0 ≤ Cost.massCostConstant κ η := by
    unfold Cost.massCostConstant
    positivity
  have hm := mul_le_mul_of_nonneg_left hmass hc
  have hs := controller_square_root_cost_bound controller hκ
  nlinarith

theorem controller_costs_have_log_budget (κ η : ℝ) (hκ : 0 ≤ κ) (hη : 0 < η) :
    ∃ d H : ℝ, 0 ≤ d ∧ 0 ≤ H ∧
      ∀ T : ℝ, ∀ controller : ActualDiagnostics.AdmissibleController T η,
        (∑ j, Cost.blockCost κ (Obstruction.harmonicMass (controller.blocks j))) ≤
          d*Real.log (2+T)+H := by
  obtain ⟨C_M, hCM, hprime⟩ := PrimeHarmonicLog.prime_harmonic_logarithmic_estimate
  have hc : 0 ≤ Cost.massCostConstant κ η := by
    unfold Cost.massCostConstant
    positivity
  refine ⟨Cost.massCostConstant κ η*C_M, 2*κ*Real.sqrt η+η,
    mul_nonneg hc hCM, by positivity, ?_⟩
  intro T controller
  exact controller_cost_log_budget controller hκ (hprime T controller.horizon_nonnegative)

end PPNCP04

#print axioms PPNCP04.controller_square_root_cost_bound
#print axioms PPNCP04.controller_cost_log_budget
#print axioms PPNCP04.controller_costs_have_log_budget
```
