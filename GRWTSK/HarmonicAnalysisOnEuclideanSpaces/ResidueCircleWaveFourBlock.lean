/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.

SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. This is a source-only additive leaf.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.ResidueCircleWaveHilbert
import Mathlib.Analysis.InnerProductSpace.Projection.Basic

/-!
# The full two-by-two algebraic/residual wave ledger

For the closed complex span A of *specified* realized cycle vectors, the
Hilbert projections P and Q=I-P preserve all source data. A bounded wave W
need not commute with P. Consequently its observable has four real operator
blocks PWP, PWQ, QWP, QWQ. Neither cross block is silently set to zero.

This leaf is independent of the geometric CM cycle-class and Euclidean
local-smoothing adapters: an instantiation must supply those source maps and
verify the operator and metric hypotheses separately.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert

universe u
variable {H : Type u}
variable [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]

/-- The realized-algebraic-to-algebraic wave block P W P. -/
def algebraicToAlgebraicBlock (cycles : Set H)
    (wave : ScaleWaveFamily (H := H)) (j : ℕ) : H →L[ℂ] H :=
  (algebraicProjection cycles).comp
    ((wave j).comp (algebraicProjection cycles))

/-- The residual-to-algebraic block P W Q. -/
def residualToAlgebraicBlock (cycles : Set H)
    (wave : ScaleWaveFamily (H := H)) (j : ℕ) : H →L[ℂ] H :=
  (algebraicProjection cycles).comp
    ((wave j).comp (residualProjection cycles))

/-- The residual-to-residual block Q W Q. -/
def residualToResidualBlock (cycles : Set H)
    (wave : ScaleWaveFamily (H := H)) (j : ℕ) : H →L[ℂ] H :=
  (residualProjection cycles).comp
    ((wave j).comp (residualProjection cycles))

/-- Every algebraic output includes both the algebraic input and the
possibly nonzero residual-to-algebraic contribution. -/
theorem algebraic_output_two_blocks (cycles : Set H)
    (wave : ScaleWaveFamily (H := H)) (j : ℕ) (x : H) :
    algebraicProjection cycles (wave j x) =
      algebraicToAlgebraicBlock cycles wave j x +
        residualToAlgebraicBlock cycles wave j x := by
  change algebraicProjection cycles (wave j x) =
    algebraicProjection cycles (wave j (algebraicProjection cycles x)) +
      algebraicProjection cycles (wave j (residualProjection cycles x))
  rw [← map_add, ← map_add, complete_reconstruction cycles x]

/-- Every residual output includes both the original algebraic leakage
and the residual-to-residual contribution. -/
theorem residual_output_two_blocks (cycles : Set H)
    (wave : ScaleWaveFamily (H := H)) (j : ℕ) (x : H) :
    residualProjection cycles (wave j x) =
      algebraicToResidualLeak cycles wave j x +
        residualToResidualBlock cycles wave j x := by
  change residualProjection cycles (wave j x) =
    residualProjection cycles (wave j (algebraicProjection cycles x)) +
      residualProjection cycles (wave j (residualProjection cycles x))
  rw [← map_add, ← map_add, complete_reconstruction cycles x]

/-- The COMPLETE wave output contains all four operator blocks, including
both cross-sector directions. -/
theorem wave_four_block_reconstruction (cycles : Set H)
    (wave : ScaleWaveFamily (H := H)) (j : ℕ) (x : H) :
    wave j x =
      (algebraicToAlgebraicBlock cycles wave j x +
        residualToAlgebraicBlock cycles wave j x) +
      (algebraicToResidualLeak cycles wave j x +
        residualToResidualBlock cycles wave j x) := by
  calc
    wave j x = algebraicProjection cycles (wave j x) +
        residualProjection cycles (wave j x) :=
      (complete_reconstruction cycles (wave j x)).symm
    _ = _ := by
      rw [algebraic_output_two_blocks, residual_output_two_blocks]

/-- Positive Hilbert energy splits between the TWO output components,
not four mutually orthogonal blocks. Interference within each output
component survives in its squared norm. -/
theorem wave_four_block_energy (cycles : Set H)
    (wave : ScaleWaveFamily (H := H)) (j : ℕ) (x : H) :
    ‖wave j x‖ ^ 2 =
      ‖algebraicToAlgebraicBlock cycles wave j x +
          residualToAlgebraicBlock cycles wave j x‖ ^ 2 +
      ‖algebraicToResidualLeak cycles wave j x +
          residualToResidualBlock cycles wave j x‖ ^ 2 := by
  calc
    ‖wave j x‖ ^ 2 =
        ‖algebraicProjection cycles (wave j x)‖ ^ 2 +
          ‖residualProjection cycles (wave j x)‖ ^ 2 :=
      complete_energy_split cycles (wave j x)
    _ = _ := by
      rw [algebraic_output_two_blocks, residual_output_two_blocks]

/-- The reverse leakage is controlled in the actual positive Hilbert norm.
No estimate independent of scale is implied by this pointwise statement. -/
theorem residual_to_algebraic_bound (cycles : Set H)
    (wave : ScaleWaveFamily (H := H)) (j : ℕ) (x : H) :
    ‖residualToAlgebraicBlock cycles wave j x‖ ≤
      ‖wave j‖ * ‖residualProjection cycles x‖ := by
  change ‖algebraicProjection cycles
    (wave j (residualProjection cycles x))‖ ≤ _
  exact ((algebraicClosedSpan cycles : Submodule ℂ H).norm_starProjection_apply_le _).trans
    ((wave j).le_opNorm (residualProjection cycles x))

/-- Both off-diagonal blocks remain represented in the full operator
ledger even when one of them later vanishes under extra hypotheses. -/
theorem residual_block_eq_source (cycles : Set H)
    (wave : ScaleWaveFamily (H := H)) (j : ℕ) (x : H) :
    algebraicToResidualLeak cycles wave j x =
      residualProjection cycles (wave j (algebraicProjection cycles x)) := rfl

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert
