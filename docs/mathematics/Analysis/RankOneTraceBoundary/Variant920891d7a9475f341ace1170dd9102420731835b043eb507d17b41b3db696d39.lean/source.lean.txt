import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Tactic

/-!
# Trace-zero control distinguishes rank-one inputs from general operators

Batch 23 B23.15 gives the rank-one detail energy
norm(u)^2*norm(v)^2-inner(u,v)^2/22. Cauchy-Schwarz forces that energy to
control the squared scalar readout, and zero detail energy forces one vector
to be zero. In contrast, arbitrary 22-by-22 scalar matrices have zero
trace-zero part and an arbitrary scalar coefficient. A nonzero scalar matrix
cannot be a rank-one matrix. The general-operator counterexample must not be
applied to the narrower source rank-one class. Identification with an actual
M23 source carrier and its Hilbert-Schmidt norm remains separate.

Human source-class and retained-hypothesis direction: grwtsk contributors.
Local correction, exact boundary and Lean implementation: OpenAI Codex.
Mathlib Cauchy-Schwarz, matrix trace and scalar multiplication retain upstream
mathematical/formal-artifact identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.RankOneTraceBoundary

noncomputable section
universe u
variable {E : Type u} [NormedAddCommGroup E] [InnerProductSpace ℝ E]

def rankOneDetailEnergy (a b : E) : ℝ :=
  ‖a‖ ^ 2 * ‖b‖ ^ 2 - (inner ℝ a b) ^ 2 / 22

theorem rank_one_cauchy (a b : E) :
    (inner ℝ a b) ^ 2 ≤ ‖a‖ ^ 2 * ‖b‖ ^ 2 := by
  have h := norm_inner_le_norm (𝕜 := ℝ) a b
  rw [Real.norm_eq_abs] at h
  have hsq := (sq_le_sq₀ (abs_nonneg (inner ℝ a b))
    (mul_nonneg (norm_nonneg a) (norm_nonneg b))).mpr h
  simpa only [sq_abs, mul_pow] using hsq

theorem rank_one_detail_controls_scalar (a b : E) :
    (inner ℝ a b) ^ 2 ≤ (22 / 21 : ℝ) * rankOneDetailEnergy a b := by
  have h := rank_one_cauchy a b
  unfold rankOneDetailEnergy
  nlinarith

theorem rank_one_detail_controls_scalar_coefficient (a b : E) :
    (inner ℝ a b / 22) ^ 2 ≤ rankOneDetailEnergy a b / 462 := by
  have h := rank_one_detail_controls_scalar a b
  nlinarith

theorem rank_one_detail_controls_full_product (a b : E) :
    ‖a‖ ^ 2 * ‖b‖ ^ 2 ≤ (22 / 21 : ℝ) * rankOneDetailEnergy a b := by
  have h := rank_one_cauchy a b
  unfold rankOneDetailEnergy
  nlinarith

theorem rank_one_detail_nonnegative (a b : E) : 0 ≤ rankOneDetailEnergy a b := by
  have h := rank_one_detail_controls_scalar a b
  nlinarith [sq_nonneg (inner ℝ a b)]

theorem zero_rank_one_detail_iff (a b : E) :
    rankOneDetailEnergy a b = 0 ↔ a = 0 ∨ b = 0 := by
  constructor
  · intro hz
    have h := rank_one_detail_controls_full_product a b
    rw [hz, mul_zero] at h
    have hp : ‖a‖ ^ 2 * ‖b‖ ^ 2 = 0 :=
      le_antisymm h (mul_nonneg (sq_nonneg _) (sq_nonneg _))
    rcases mul_eq_zero.mp hp with ha | hb
    · exact Or.inl (norm_eq_zero.mp (sq_eq_zero_iff.mp ha))
    · exact Or.inr (norm_eq_zero.mp (sq_eq_zero_iff.mp hb))
  · rintro (rfl | rfl) <;> simp [rankOneDetailEnergy]

/-- The displayed source identity makes a full detail budget a scalar budget. -/
theorem exact_source_detail_budget_controls_readout (a b : E) {energy cap : ℝ}
    (hsource : energy = rankOneDetailEnergy a b) (hcap : energy ≤ cap) :
    (inner ℝ a b) ^ 2 ≤ (22 / 21 : ℝ) * cap := by
  rw [hsource] at hcap
  exact (rank_one_detail_controls_scalar a b).trans
    (mul_le_mul_of_nonneg_left hcap (by norm_num))

abbrev Operator := Matrix (Fin 22) (Fin 22) ℝ
def scalarMatrix (c : ℝ) : Operator := c • 1
def scalarCoefficient (T : Operator) : ℝ := Matrix.trace T / 22
def tracelessPart (T : Operator) : Operator := T - scalarMatrix (scalarCoefficient T)
def rankOneMatrix (a b : Fin 22 → ℝ) : Operator := fun i j => a i * b j

theorem scalar_matrix_coefficient (c : ℝ) : scalarCoefficient (scalarMatrix c) = c := by
  norm_num [scalarCoefficient, scalarMatrix, Matrix.trace_smul, Matrix.trace_one, smul_eq_mul]

theorem scalar_matrix_has_zero_traceless_part (c : ℝ) : tracelessPart (scalarMatrix c) = 0 := by
  rw [tracelessPart, scalar_matrix_coefficient, sub_self]

theorem general_operator_zero_detail_has_unbounded_scalar (C : ℝ) :
    ∃ T : Operator, tracelessPart T = 0 ∧ C < scalarCoefficient T := by
  refine ⟨scalarMatrix (C + 1), scalar_matrix_has_zero_traceless_part _, ?_⟩
  rw [scalar_matrix_coefficient]
  linarith

/-- The arbitrary scalar-identity countermodel is inadmissible for rank-one inputs. -/
theorem rank_one_scalar_matrix_forces_zero (a b : Fin 22 → ℝ) {c : ℝ}
    (h : rankOneMatrix a b = scalarMatrix c) : c = 0 := by
  have h00 := congrFun (congrFun h (0 : Fin 22)) (0 : Fin 22)
  have h11 := congrFun (congrFun h (1 : Fin 22)) (1 : Fin 22)
  have h01 := congrFun (congrFun h (0 : Fin 22)) (1 : Fin 22)
  have h10 := congrFun (congrFun h (1 : Fin 22)) (0 : Fin 22)
  norm_num [rankOneMatrix, scalarMatrix, Matrix.smul_apply, Matrix.one_apply, smul_eq_mul]
    at h00 h11 h01 h10
  have hm : (a 0 * b 0) * (a 1 * b 1) = (a 0 * b 1) * (a 1 * b 0) := by ring
  rw [h00, h11, mul_eq_zero.mpr h01, mul_eq_zero.mpr h10] at hm
  nlinarith

end
end GRWTSK.RiemannHypothesis.Conversation.RankOneTraceBoundary
