import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.LinearAlgebra.Matrix.Rank

/-! Research scratch: zero eigenvalue multiplicity, using the full complex
Hermitian spectral index rather than distinct spectral support. This is only
the zero-count part of issue 266; positive and negative counts remain separate.
Human program direction: grwtsk contributors; OpenAI Codex proof/review work.
-/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ZeroMultiplicity
open Matrix
variable {n : Type*} [Fintype n] [DecidableEq n]

theorem zero_count_eq_dim_sub_rank (M : Matrix n n ℂ) (hM : M.IsHermitian) :
    Fintype.card {i // hM.eigenvalues i = 0} = Fintype.card n - M.rank := by
  classical
  rw [hM.rank_eq_card_non_zero_eigs]
  simpa using Fintype.card_subtype_compl (fun i => hM.eigenvalues i ≠ 0)

theorem rank_congruence (M P : Matrix n n ℂ) (hP : P.det ≠ 0) :
    (Pᴴ * M * P).rank = M.rank := by
  have hPs : Pᴴ.det ≠ 0 := by simpa using hP
  rw [Matrix.rank_mul_eq_left_of_det_ne_zero P (Pᴴ * M) hP,
    Matrix.rank_mul_eq_right_of_det_ne_zero Pᴴ M hPs]

theorem zero_count_congruence (M P : Matrix n n ℂ) (hM : M.IsHermitian)
    (hP : P.det ≠ 0) (hN : (Pᴴ * M * P).IsHermitian) :
    Fintype.card {i // hN.eigenvalues i = 0} =
      Fintype.card {i // hM.eigenvalues i = 0} := by
  rw [zero_count_eq_dim_sub_rank _ hN, zero_count_eq_dim_sub_rank _ hM,
    rank_congruence M P hP]

theorem zero_count_constructed_congruence (M P : Matrix n n ℂ)
    (hM : M.IsHermitian) (hP : P.det ≠ 0) :
    Fintype.card {i // (Matrix.isHermitian_conjTranspose_mul_mul P hM).eigenvalues i = 0} =
      Fintype.card {i // hM.eigenvalues i = 0} :=
  zero_count_congruence M P hM hP (Matrix.isHermitian_conjTranspose_mul_mul P hM)

#print axioms zero_count_eq_dim_sub_rank
#print axioms rank_congruence
#print axioms zero_count_congruence
#print axioms zero_count_constructed_congruence
#check zero_count_constructed_congruence
end ContinuousResearch.ZeroMultiplicity
