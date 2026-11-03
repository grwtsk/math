/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.ResidueCircleWaveFourBlock
import Mathlib.Tactic

/-!
# Exact operator comparison without erasing either wave defect

For P the orthogonal projection onto a source-specified closed complex
cycle span and Q=1-P, the genuine bounded-operator commutator is

  P W - W P = P W Q - Q W P.

This equality has opposite SIGNS on the two cross blocks. In particular,
Pythagorean energy for P/Q outputs does NOT say their individual 2x2 source
blocks are pairwise orthogonal, and it does not imply W commutes with P.
The two terms are retained with their source exact values and norm bounds.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert

universe u
variable {H : Type u}
variable [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]

/-- The exact source-independent operator identity, to be instantiated
with the ACTUAL CM-cycle set and ACTUAL arithmetic response operator. -/
theorem algebraic_wave_commutator_eq_off_diagonal
    (cycles : Set H) (wave : ScaleWaveFamily (H := H)) (j : ℕ) :
    (algebraicProjection cycles).comp (wave j) -
        (wave j).comp (algebraicProjection cycles) =
      residualToAlgebraicBlock cycles wave j -
        algebraicToResidualLeak cycles wave j := by
  apply ContinuousLinearMap.ext
  intro x
  change algebraicProjection cycles (wave j x) -
      wave j (algebraicProjection cycles x) =
    algebraicProjection cycles (wave j (residualProjection cycles x)) -
      residualProjection cycles (wave j (algebraicProjection cycles x))
  have hP : algebraicProjection cycles (wave j x) =
      algebraicProjection cycles (wave j (algebraicProjection cycles x)) +
      algebraicProjection cycles (wave j (residualProjection cycles x)) := by
    rw [← map_add, ← map_add, complete_reconstruction cycles x]
  have hQ : wave j (algebraicProjection cycles x) =
      algebraicProjection cycles (wave j (algebraicProjection cycles x)) +
      residualProjection cycles (wave j (algebraicProjection cycles x)) :=
    (complete_reconstruction cycles (wave j (algebraicProjection cycles x))).symm
  rw [hP, hQ]
  abel

/-- Operator noncommutation is controlled by BOTH cross-sector terms,
not just the algebraic-to-residual term. -/
theorem algebraic_wave_commutator_pointwise_bound
    (cycles : Set H) (wave : ScaleWaveFamily (H := H)) (j : ℕ) (x : H) :
    ‖algebraicProjection cycles (wave j x) -
        wave j (algebraicProjection cycles x)‖ ≤
      ‖residualToAlgebraicBlock cycles wave j x‖ +
        ‖algebraicToResidualLeak cycles wave j x‖ := by
  have h := congrArg (fun T : H →L[ℂ] H => T x)
    (algebraic_wave_commutator_eq_off_diagonal cycles wave j)
  have heq : algebraicProjection cycles (wave j x) -
      wave j (algebraicProjection cycles x) =
      residualToAlgebraicBlock cycles wave j x -
        algebraicToResidualLeak cycles wave j x := by
    simpa only [ContinuousLinearMap.sub_apply, ContinuousLinearMap.comp_apply] using h
  rw [heq]
  exact norm_sub_le _ _


/-- The two signed commutator terms lie in orthogonal OUTPUT subspaces,
so they cannot cancel each other in the positive Hilbert norm. This is
stronger than the triangle inequality, but does not say that the original
SIGNED scalar arithmetic readout is orthogonal. -/
theorem algebraic_wave_commutator_energy
    (cycles : Set H) (wave : ScaleWaveFamily (H := H)) (j : ℕ) (x : H) :
    ‖algebraicProjection cycles (wave j x) -
        wave j (algebraicProjection cycles x)‖ ^ 2 =
      ‖residualToAlgebraicBlock cycles wave j x‖ ^ 2 +
        ‖algebraicToResidualLeak cycles wave j x‖ ^ 2 := by
  have hp : residualToAlgebraicBlock cycles wave j x ∈
      (algebraicClosedSpan cycles : Submodule ℂ H) := by
    change algebraicProjection cycles
      (wave j (residualProjection cycles x)) ∈ _
    exact Submodule.starProjection_apply_mem _ _
  have hq : algebraicToResidualLeak cycles wave j x ∈
      (algebraicClosedSpan cycles : Submodule ℂ H)ᗮ := by
    change residualProjection cycles
      (wave j (algebraicProjection cycles x)) ∈ _
    exact Submodule.starProjection_apply_mem _ _
  have horth : inner ℂ (residualToAlgebraicBlock cycles wave j x)
      (-algebraicToResidualLeak cycles wave j x) = 0 := by
    rw [inner_neg_right]
    simp only [Submodule.inner_right_of_mem_orthogonal hp hq, neg_zero]
  have hpyth := norm_add_sq_eq_norm_sq_add_norm_sq_of_inner_eq_zero
    (residualToAlgebraicBlock cycles wave j x)
    (-algebraicToResidualLeak cycles wave j x) horth
  have h := congrArg (fun T : H →L[ℂ] H => T x)
    (algebraic_wave_commutator_eq_off_diagonal cycles wave j)
  have heq : algebraicProjection cycles (wave j x) -
      wave j (algebraicProjection cycles x) =
      residualToAlgebraicBlock cycles wave j x -
        algebraicToResidualLeak cycles wave j x := by
    simpa only [ContinuousLinearMap.sub_apply, ContinuousLinearMap.comp_apply] using h
  rw [heq]
  simpa only [sub_eq_add_neg, norm_neg, pow_two] using hpyth

/-- The source P-input leakage has the ordinary bounded-wave norm budget. -/
theorem algebraic_to_residual_bound
    (cycles : Set H) (wave : ScaleWaveFamily (H := H)) (j : ℕ) (x : H) :
    ‖algebraicToResidualLeak cycles wave j x‖ ≤
      ‖wave j‖ * ‖algebraicProjection cycles x‖ := by
  change ‖residualProjection cycles
      (wave j (algebraicProjection cycles x))‖ ≤ _
  exact (residual_norm_le cycles _).trans
    ((wave j).le_opNorm (algebraicProjection cycles x))

/-- A uniform-in-scale commutator bound would require a separate bound on
`‖wave j‖` across j; this is only a pointwise statement. -/
theorem algebraic_wave_commutator_source_bound
    (cycles : Set H) (wave : ScaleWaveFamily (H := H)) (j : ℕ) (x : H) :
    ‖algebraicProjection cycles (wave j x) -
        wave j (algebraicProjection cycles x)‖ ≤
      ‖wave j‖ * ‖residualProjection cycles x‖ +
        ‖wave j‖ * ‖algebraicProjection cycles x‖ := by
  exact (algebraic_wave_commutator_pointwise_bound cycles wave j x).trans
    (add_le_add
      (residual_to_algebraic_bound cycles wave j x)
      (algebraic_to_residual_bound cycles wave j x))

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert
