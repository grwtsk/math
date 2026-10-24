import Mathlib

/-!
# Complete finite occupation queries can lose the signed off-diagonal

Batch 03's information obstruction has a literal two-slot real symmetric
positive-contraction witness. Every diagonal-field determinant query agrees
for the two matrices, while their off-diagonal signs differ. Consequently
there is no exact decoder from those complete queries, including any side
information which agrees on this pair.

This is a finite matrix information interface, not a substitute for the actual
prime kernel or a formal construction of a DPP probability measure.
Human programme: grwtsk contributors. Local witness and Lean proof: OpenAI
Codex. Matrix positivity and determinant definitions retain Mathlib origin.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.OccupationGauge

open scoped BigOperators
noncomputable section

abbrev TwoMatrix := Matrix (Fin 2) (Fin 2) ℝ
def kernel (ρ : ℝ) : TwoMatrix := !![(1 / 2 : ℝ), ρ; ρ, 1 / 2]
def occupationQueries (K : TwoMatrix) (z : Fin 2 → ℝ) : ℝ :=
  Matrix.det (1 + Matrix.diagonal (fun i => z i - 1) * K)

theorem occupation_formula (ρ : ℝ) (z : Fin 2 → ℝ) :
    occupationQueries (kernel ρ) z =
      (1 + (z 0 - 1) / 2) * (1 + (z 1 - 1) / 2) -
        (z 0 - 1) * (z 1 - 1) * ρ ^ 2 := by
  simp [occupationQueries, kernel, Matrix.det_fin_two, Matrix.mul_apply, Fin.sum_univ_two]
  ring

theorem complete_queries_ignore_off_diagonal_sign (ρ : ℝ) :
    occupationQueries (kernel ρ) = occupationQueries (kernel (-ρ)) := by
  funext z
  rw [occupation_formula, occupation_formula, neg_sq]

theorem quarter_kernel_posSemidef : (kernel (1 / 4)).PosSemidef := by
  apply Matrix.PosSemidef.of_dotProduct_mulVec_nonneg
  · ext i j
    fin_cases i <;> fin_cases j <;> norm_num [kernel, Matrix.conjTranspose]
  · intro v
    simp [kernel, dotProduct, Matrix.mulVec, Fin.sum_univ_two]
    nlinarith [sq_nonneg (v 0 + v 1), sq_nonneg (v 0), sq_nonneg (v 1)]

theorem negative_quarter_kernel_posSemidef : (kernel (-1 / 4)).PosSemidef := by
  apply Matrix.PosSemidef.of_dotProduct_mulVec_nonneg
  · ext i j
    fin_cases i <;> fin_cases j <;> norm_num [kernel, Matrix.conjTranspose]
  · intro v
    simp [kernel, dotProduct, Matrix.mulVec, Fin.sum_univ_two]
    nlinarith [sq_nonneg (v 0 - v 1), sq_nonneg (v 0), sq_nonneg (v 1)]

theorem quarter_complement : (1 : TwoMatrix) - kernel (1 / 4) = kernel (-1 / 4) := by
  ext i j
  fin_cases i <;> fin_cases j <;> norm_num [kernel]

theorem negative_quarter_complement : (1 : TwoMatrix) - kernel (-1 / 4) = kernel (1 / 4) := by
  ext i j
  fin_cases i <;> fin_cases j <;> norm_num [kernel]

def PositiveContraction (K : TwoMatrix) : Prop := K.PosSemidef ∧ ((1 : TwoMatrix) - K).PosSemidef

theorem quarter_is_positive_contraction : PositiveContraction (kernel (1 / 4)) := by
  exact ⟨quarter_kernel_posSemidef, quarter_complement ▸ negative_quarter_kernel_posSemidef⟩

theorem negative_quarter_is_positive_contraction : PositiveContraction (kernel (-1 / 4)) := by
  exact ⟨negative_quarter_kernel_posSemidef,
    negative_quarter_complement ▸ quarter_kernel_posSemidef⟩

theorem no_exact_occupation_decoder :
    ¬ ∃ decode : ((Fin 2 → ℝ) → ℝ) → ℝ,
      ∀ K : TwoMatrix, PositiveContraction K → decode (occupationQueries K) = K 0 1 := by
  rintro ⟨decode, hdecode⟩
  have hp := hdecode _ quarter_is_positive_contraction
  have hm := hdecode _ negative_quarter_is_positive_contraction
  rw [complete_queries_ignore_off_diagonal_sign] at hp
  norm_num [kernel] at hp hm
  linarith

theorem no_decoder_with_equal_side_information {β : Type*} (side : TwoMatrix → β)
    (hs : side (kernel (1 / 4)) = side (kernel (-1 / 4))) :
    ¬ ∃ decode : (((Fin 2 → ℝ) → ℝ) × β) → ℝ,
      ∀ K : TwoMatrix, PositiveContraction K → decode (occupationQueries K, side K) = K 0 1 := by
  rintro ⟨decode, hdecode⟩
  have hp := hdecode _ quarter_is_positive_contraction
  have hm := hdecode _ negative_quarter_is_positive_contraction
  rw [complete_queries_ignore_off_diagonal_sign, hs] at hp
  norm_num [kernel] at hp hm
  linarith

/-- Even approximate recovery pays half the signed ambiguity on one witness. -/
theorem decoder_error_floor (decode : ((Fin 2 → ℝ) → ℝ) → ℝ) :
    (1 / 4 : ℝ) ≤ |decode (occupationQueries (kernel (1 / 4))) - (1 / 4)| ∨
      (1 / 4 : ℝ) ≤ |decode (occupationQueries (kernel (-1 / 4))) - (-1 / 4)| := by
  have hq : occupationQueries (kernel (-1 / 4)) =
      occupationQueries (kernel (1 / 4)) := by
    simpa only [neg_div] using (complete_queries_ignore_off_diagonal_sign (1 / 4)).symm
  rw [hq]
  by_contra h
  push Not at h
  have hp := (abs_lt.mp h.1).1
  have hm := (abs_lt.mp h.2).2
  linarith

theorem uniform_decoder_requires_quarter_error
    (decode : ((Fin 2 → ℝ) → ℝ) → ℝ) {ε : ℝ}
    (hdecode : ∀ K : TwoMatrix, PositiveContraction K →
      |decode (occupationQueries K) - K 0 1| ≤ ε) : (1 / 4 : ℝ) ≤ ε := by
  have hp := hdecode _ quarter_is_positive_contraction
  have hm := hdecode _ negative_quarter_is_positive_contraction
  change |decode (occupationQueries (kernel (1 / 4))) - (1 / 4)| ≤ ε at hp
  change |decode (occupationQueries (kernel (-1 / 4))) - (-1 / 4)| ≤ ε at hm
  rcases decoder_error_floor decode with h | h
  · exact h.trans hp
  · exact h.trans hm

/-- The zero decoder attains this error on the two indistinguishable witnesses. -/
theorem quarter_floor_attained_on_witness_pair :
    |(0 : ℝ) - kernel (1 / 4) 0 1| = (1 / 4 : ℝ) ∧
      |(0 : ℝ) - kernel (-1 / 4) 0 1| = (1 / 4 : ℝ) := by
  norm_num [kernel]

end
end GRWTSK.RiemannHypothesis.Conversation.OccupationGauge
