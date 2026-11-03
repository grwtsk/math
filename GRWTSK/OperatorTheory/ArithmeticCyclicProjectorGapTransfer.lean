/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.ArithmeticCyclicVacuumOverlapCalibration

set_option autoImplicit false
noncomputable section

/-! Phase-free complement transfer using actual unit vacuum projectors.
The comparison gap remains an explicit independent premise; no physical
or uniform mass gap is supplied. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicProjectorGapTransfer
open ArithmeticCyclicVacuumOverlapCalibration ArithmeticCyclicChangingVacuumGap
open VacuumComplementOverlap ArithmeticCyclicRelativeGapPerturbation VacuumRelativeSectorCoercivity
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
variable (N : ℕ) [NeZero N]

theorem retained_norm_of_unit_projectors (ω ν x : EuclideanSpace ℂ (ZMod N))
    (hω : ‖ω‖ = 1) (hν : ‖ν‖ = 1) (hx : inner ℂ ν x = 0) :
    ‖inner ℂ ω ν‖ ^ 2 * ‖x‖ ^ 2 ≤ ‖removeVacuum N ω x‖ ^ 2 := by
  have he : inner ℂ ω x = inner ℂ (removeVacuum N ν ω) x := by
    simp [removeVacuum, inner_sub_left, inner_smul_left, hx]
  have hb : ‖inner ℂ ω x‖ ≤ ‖removeVacuum N ν ω‖ * ‖x‖ := by
    rw [he]
    exact norm_inner_le_norm _ _
  have hs := mul_nonneg (sub_nonneg.mpr hb)
    (add_nonneg (mul_nonneg (norm_nonneg _) (norm_nonneg _)) (norm_nonneg (inner ℂ ω x)))
  have hp := removeVacuum_norm_sq N ν ω hν
  have hq := removeVacuum_norm_sq N ω x hω
  rw [hω] at hp
  have hsym : ‖inner ℂ ν ω‖ = ‖inner ℂ ω ν‖ := norm_inner_symm ν ω
  rw [hsym] at hp
  have hpScale := congrArg (fun z : ℝ => z * ‖x‖ ^ 2) hp
  nlinarith

theorem actual_projector_gap_transfer (t : ℝ) (q r : ZMod N → ℝ)
    (E F κ : ℝ) (ω ν x : EuclideanSpace ℂ (ZMod N))
    (hωunit : ‖ω‖ = 1) (hνunit : ‖ν‖ = 1)
    (hω : hamiltonianOperator N t r ω = (F : ℂ) • ω)
    (hν : hamiltonianOperator N t q ν = (E : ℂ) • ν)
    (hκ : 0 < κ)
    (hgap : ∀ y : EuclideanSpace ℂ (ZMod N), inner ℂ ω y = 0 →
      κ * ‖y‖ ^ 2 ≤ relativeEnergy N t r F y)
    (hx : inner ℂ ν x = 0) :
    (κ - 2 * (‖q - r‖ + |E - F|)) * ‖x‖ ^ 2 ≤ relativeEnergy N t q E x := by
  have hn := retained_norm_of_unit_projectors N ω ν x hωunit hνunit hx
  have hm := mul_le_mul_of_nonneg_left hn (le_of_lt hκ)
  have hg := hgap (removeVacuum N ω x) (removeVacuum_orthogonal N ω x hωunit)
  have he := relative_energy_removeVacuum N t r F ω x hωunit hω
  have hp := relative_energy_lower N t q r E F x
  have hc := actual_vacuum_overlap_deficiency N t q r E F κ ω ν
    hωunit hνunit hω hν hκ hgap
  have hc' := (le_div_iff₀ hκ).mp hc
  have hscale := mul_le_mul_of_nonneg_right hc' (sq_nonneg ‖x‖)
  nlinarith

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicProjectorGapTransfer
