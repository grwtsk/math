/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.ArithmeticCyclicChangingVacuumGap

set_option autoImplicit false
noncomputable section

/-! Vacuum overlap from an independently supplied comparison gap and
actual same-hopping potential/eigenvalue errors. A physical uniform gap
is not supplied. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicVacuumOverlapCalibration
open ArithmeticCyclicChangingVacuumGap VacuumComplementOverlap
open ArithmeticCyclicVacuumComplement ArithmeticCyclicRelativeGapPerturbation
open VacuumRelativeSectorCoercivity
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
variable (N : ℕ) [NeZero N]

theorem actual_vacuum_overlap_deficiency (t : ℝ) (q r : ZMod N → ℝ)
    (E F κ : ℝ) (ω ν : EuclideanSpace ℂ (ZMod N))
    (hωunit : ‖ω‖ = 1) (hνunit : ‖ν‖ = 1)
    (hω : hamiltonianOperator N t r ω = (F : ℂ) • ω)
    (hν : hamiltonianOperator N t q ν = (E : ℂ) • ν)
    (hκ : 0 < κ)
    (hgap : ∀ y : EuclideanSpace ℂ (ZMod N), inner ℂ ω y = 0 →
      κ * ‖y‖ ^ 2 ≤ relativeEnergy N t r F y) :
    1 - ‖inner ℂ ω ν‖ ^ 2 ≤ (‖q - r‖ + |E - F|) / κ := by
  have hg := hgap (removeVacuum N ω ν) (removeVacuum_orthogonal N ω ν hωunit)
  have he := relative_energy_removeVacuum N t r F ω ν hωunit hω
  have hn := removeVacuum_norm_sq N ω ν hωunit
  have hp := relative_energy_lower N t q r E F ν
  have hz := vacuum_relative_energy_zero N t q E ν hν
  rw [hνunit] at hn hp
  apply (le_div_iff₀ hκ).mpr
  nlinarith

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicVacuumOverlapCalibration
