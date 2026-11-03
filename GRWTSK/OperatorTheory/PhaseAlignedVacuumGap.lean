/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib inner-product and norm facts retain upstream authorship and licenses. -/
import GRWTSK.OperatorTheory.ArithmeticCyclicChangingVacuumGap

set_option autoImplicit false
noncomputable section

/-!
# Phase-aligned vacuum comparison

Unit complex phase preserves vacuum norm and complement. The overlap
and actual cyclic gap-transfer estimates may therefore use a supplied
phase-aligned distance, avoiding a spurious loss for equal vacuum lines
represented by opposite vectors. No alignment estimate, physical vacuum
or positive uniform remainder is supplied. SOURCE_PROOF_CANDIDATES / NOT_RUN.
-/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.PhaseAlignedVacuumGap
open VacuumComplementOverlap VacuumRelativeSectorCoercivity ArithmeticCyclicChangingVacuumGap
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability

variable (N : ℕ) [NeZero N]

theorem scaled_vacuum_complement_iff (ν x : EuclideanSpace ℂ (ZMod N))
    (c : ℂ) (hc : c ≠ 0) : inner ℂ (c • ν) x = 0 ↔ inner ℂ ν x = 0 := by
  simp [inner_smul_left, hc]

theorem unit_phase_preserves_norm (ν : EuclideanSpace ℂ (ZMod N))
    (c : ℂ) (hc : ‖c‖ = 1) : ‖c • ν‖ = ‖ν‖ := by
  rw [norm_smul, hc, one_mul]

theorem overlap_le_aligned_distance (ω ν x : EuclideanSpace ℂ (ZMod N))
    (c : ℂ) (hx : inner ℂ ν x = 0) :
    ‖inner ℂ ω x‖ ≤ ‖ω - c • ν‖ * ‖x‖ := by
  apply overlap_le_vacuum_change N ω (c • ν) x
  rw [inner_smul_left, hx, mul_zero]

/-- Any supplied alignment is valid algebraically; a physical phase choice
uses norm(c)=1 and the preceding norm/complement identities. -/
theorem actual_aligned_complement_gap (t : ℝ) (q r : ZMod N → ℝ) (E F κ η : ℝ)
    (ω ν x : EuclideanSpace ℂ (ZMod N)) (c : ℂ) (hunit : ‖ω‖ = 1)
    (hω : hamiltonianOperator N t r ω = (F : ℂ) • ω)
    (hκ : 0 ≤ κ) (hη : 0 ≤ η) (halign : ‖ω - c • ν‖ ≤ η)
    (hgap : ∀ y : EuclideanSpace ℂ (ZMod N), inner ℂ ω y = 0 →
      κ * ‖y‖ ^ 2 ≤ relativeEnergy N t r F y)
    (hx : inner ℂ ν x = 0) :
    (κ * (1 - η ^ 2) - ‖q - r‖ - |E - F|) * ‖x‖ ^ 2 ≤
      relativeEnergy N t q E x := by
  apply actual_changing_complement_gap N t q r E F κ η ω (c • ν) x
    hunit hω hκ hη halign hgap
  rw [inner_smul_left, hx, mul_zero]

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.PhaseAlignedVacuumGap
