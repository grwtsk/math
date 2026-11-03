/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.OperatorTheory.VacuumRelativeSectorCoercivity

set_option autoImplicit false
noncomputable section

/-!
# Actual potential and vacuum-energy perturbation costs

Same-hopping potential error costs its sup norm in the quadratic energy;
changing the reference energy adds abs(E-F). The resulting bound holds
on the same tested vectors. No transport between different vacuum
complements, physical regulator or continuum limit is inferred.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicRelativeGapPerturbation
open DeterminantSectorCoercivity VacuumRelativeSectorCoercivity
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability

variable (N : ℕ) [NeZero N]

theorem energy_difference_le (t : ℝ) (q r : ZMod N → ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) :
    |hamiltonianEnergy N t q x - hamiltonianEnergy N t r x| ≤ ‖q - r‖ * ‖x‖ ^ 2 := by
  have he : hamiltonianEnergy N t q x - hamiltonianEnergy N t r x =
      (inner ℂ x (hamiltonianOperator N t q x - hamiltonianOperator N t r x)).re := by
    simp [hamiltonianEnergy, inner_sub_right]
  rw [he]
  calc
    _ ≤ ‖inner ℂ x (hamiltonianOperator N t q x - hamiltonianOperator N t r x)‖ :=
      Complex.abs_re_le_norm _
    _ ≤ ‖x‖ * ‖hamiltonianOperator N t q x - hamiltonianOperator N t r x‖ :=
      norm_inner_le_norm _ _
    _ ≤ ‖x‖ * (‖q - r‖ * ‖x‖) :=
      mul_le_mul_of_nonneg_left (operator_vector_change_le N t q r x) (norm_nonneg x)
    _ = ‖q - r‖ * ‖x‖ ^ 2 := by ring

theorem relative_energy_lower (t : ℝ) (q r : ZMod N → ℝ) (E F : ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) :
    relativeEnergy N t r F x - (‖q - r‖ + |E - F|) * ‖x‖ ^ 2 ≤
      relativeEnergy N t q E x := by
  have he := (abs_le.mp (energy_difference_le N t q r x)).1
  have hshift := mul_le_mul_of_nonneg_right (le_abs_self (E - F)) (sq_nonneg ‖x‖)
  unfold relativeEnergy
  nlinarith

/-- Same-vector transfer only: membership in another vacuum complement is
not implied by a small potential or eigenvalue error. -/
theorem relative_gap_transfer_same_vector (t : ℝ) (q r : ZMod N → ℝ) (E F κ : ℝ)
    (x : EuclideanSpace ℂ (ZMod N))
    (hgap : κ * ‖x‖ ^ 2 ≤ relativeEnergy N t r F x) :
    (κ - ‖q - r‖ - |E - F|) * ‖x‖ ^ 2 ≤ relativeEnergy N t q E x := by
  have he := relative_energy_lower N t q r E F x
  nlinarith

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicRelativeGapPerturbation
