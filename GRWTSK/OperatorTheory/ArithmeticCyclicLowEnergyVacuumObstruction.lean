/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.ArithmeticCyclicVanishingRegulatorGap

set_option autoImplicit false
noncomputable section

/-! Low Rayleigh energy does not by itself identify the vacuum ray.
The actual arithmetic three-cycle has a nonzero orthogonal excitation
with Rayleigh energy epsilon. No physical Yang--Mills counterexample is
asserted. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicLowEnergyVacuumObstruction
open ArithmeticCyclicVanishingRegulatorGap

theorem excitation_orthogonal_to_vacuum : inner ℂ vacuum excitation = 0 := by
  rw [vacuum_inner_eq_coordinate_sum]
  exact excitation_zero_sum

theorem excitation_rayleigh_energy (ε : ℝ) :
    (inner ℂ excitation (regulatorOperator ε excitation)).re / ‖excitation‖ ^ 2 = ε := by
  rw [zero_sum_energy ε excitation excitation_zero_sum]
  have hn : ‖excitation‖ ^ 2 ≠ 0 :=
    pow_ne_zero _ (norm_ne_zero_iff.mpr excitation_ne_zero)
  exact mul_div_cancel_right₀ ε hn

theorem orthogonal_low_rayleigh_supplier (ε : ℝ) :
    ∃ x : EuclideanSpace ℂ (ZMod 3), x ≠ 0 ∧ inner ℂ vacuum x = 0 ∧
      (inner ℂ x (regulatorOperator ε x)).re / ‖x‖ ^ 2 = ε := by
  exact ⟨excitation, excitation_ne_zero, excitation_orthogonal_to_vacuum,
    excitation_rayleigh_energy ε⟩

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicLowEnergyVacuumObstruction
