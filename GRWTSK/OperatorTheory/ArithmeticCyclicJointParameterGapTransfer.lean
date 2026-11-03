/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.ArithmeticCyclicProjectorGapTransfer
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicHoppingBounds

set_option autoImplicit false
noncomputable section

/-! Joint hopping/potential/eigenvalue budget for actual projector transfer.
The comparison gap and eigenvectors remain explicit independent inputs.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicJointParameterGapTransfer
open ArithmeticCyclicProjectorGapTransfer ArithmeticCyclicChangingVacuumGap
open ArithmeticCyclicVacuumComplement VacuumComplementOverlap VacuumRelativeSectorCoercivity
open DeterminantSectorCoercivity
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicOperatorStability ArithmeticCyclicHoppingBounds
variable (N : ℕ) [NeZero N]

theorem joint_energy_error (t s : ℝ) (q r : ZMod N → ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) :
    |hamiltonianEnergy N t q x - hamiltonianEnergy N s r x| ≤
      (‖q - r‖ + 2 * |t - s|) * ‖x‖ ^ 2 := by
  have he : hamiltonianEnergy N t q x - hamiltonianEnergy N s r x =
      (inner ℂ x ((hamiltonianOperator N t q - hamiltonianOperator N s r) x)).re := by
    simp [hamiltonianEnergy, inner_sub_right]
  rw [he]
  calc
    _ ≤ ‖inner ℂ x ((hamiltonianOperator N t q - hamiltonianOperator N s r) x)‖ :=
      Complex.abs_re_le_norm _
    _ ≤ ‖x‖ * ‖(hamiltonianOperator N t q - hamiltonianOperator N s r) x‖ :=
      norm_inner_le_norm _ _
    _ ≤ ‖x‖ * (‖hamiltonianOperator N t q - hamiltonianOperator N s r‖ * ‖x‖) :=
      mul_le_mul_of_nonneg_left
        ((hamiltonianOperator N t q - hamiltonianOperator N s r).le_opNorm x) (norm_nonneg x)
    _ ≤ ‖x‖ * ((‖q - r‖ + 2 * |t - s|) * ‖x‖) :=
      mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_right
        (operator_joint_change_le N t s q r) (norm_nonneg x)) (norm_nonneg x)
    _ = _ := by ring

theorem joint_relative_lower (t s : ℝ) (q r : ZMod N → ℝ) (E F : ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) :
    relativeEnergy N s r F x - (‖q - r‖ + 2 * |t - s| + |E - F|) * ‖x‖ ^ 2 ≤
      relativeEnergy N t q E x := by
  have he := (abs_le.mp (joint_energy_error N t s q r x)).1
  have hs := mul_le_mul_of_nonneg_right (le_abs_self (E - F)) (sq_nonneg ‖x‖)
  unfold relativeEnergy
  nlinarith

theorem actual_joint_projector_gap (t s : ℝ) (q r : ZMod N → ℝ)
    (E F κ : ℝ) (ω ν x : EuclideanSpace ℂ (ZMod N))
    (hωunit : ‖ω‖ = 1) (hνunit : ‖ν‖ = 1)
    (hω : hamiltonianOperator N s r ω = (F : ℂ) • ω)
    (hν : hamiltonianOperator N t q ν = (E : ℂ) • ν) (hκ : 0 < κ)
    (hgap : ∀ y : EuclideanSpace ℂ (ZMod N), inner ℂ ω y = 0 →
      κ * ‖y‖ ^ 2 ≤ relativeEnergy N s r F y)
    (hx : inner ℂ ν x = 0) :
    (κ - 2 * (‖q - r‖ + 2 * |t - s| + |E - F|)) * ‖x‖ ^ 2 ≤
      relativeEnergy N t q E x := by
  have hproj := removeVacuum_norm_sq N ω ν hωunit
  rw [hνunit] at hproj
  have heν := relative_energy_removeVacuum N s r F ω ν hωunit hω
  have hgν := hgap (removeVacuum N ω ν) (removeVacuum_orthogonal N ω ν hωunit)
  have hpν := joint_relative_lower N t s q r E F ν
  rw [hνunit, vacuum_relative_energy_zero N t q E ν hν] at hpν
  have hcal : κ * (1 - ‖inner ℂ ω ν‖ ^ 2) ≤
      ‖q - r‖ + 2 * |t - s| + |E - F| := by nlinarith
  have hscale := mul_le_mul_of_nonneg_right hcal (sq_nonneg ‖x‖)
  have hn := retained_norm_of_unit_projectors N ω ν x hωunit hνunit hx
  have hm := mul_le_mul_of_nonneg_left hn (le_of_lt hκ)
  have hg := hgap (removeVacuum N ω x) (removeVacuum_orthogonal N ω x hωunit)
  have he := relative_energy_removeVacuum N s r F ω x hωunit hω
  have hp := joint_relative_lower N t s q r E F x
  nlinarith

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicJointParameterGapTransfer
