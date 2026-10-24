/-
Adapted from OpenAI's openai/math, revision
1581d4cbdd69a0faf34b2089614fe2a814316a6a,
lean/OAI/Algebra/DepthFive/TraceRank.lean.
Upstream authorship: OpenAI, per lean/formalization.yaml.
Released under Apache-2.0; see LICENSES/OpenAI-Apache-2.0.txt.
Changes: extract the finite-sum lemma to Analysis, use a mathematical namespace,
minimize imports, and replay under the pinned Lean 4.33 environment.
Human project direction: grwtsk contributors. Adaptation assistance: OpenAI Codex.
Mathlib retains its upstream authorship and licensing.
-/
import GRWTSK.Analysis.Inequalities.FiniteSquareSum
import Mathlib.Analysis.Matrix.Spectrum

/-!
# Hermitian trace-rank moment bounds

Hermitian symmetry suffices for the squared bound; positive semidefiniteness
is not required. Every ratio retains its positive-denominator hypothesis.
These finite matrix results admit no surrounding circuit or zeta claim.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.TraceRank

open scoped BigOperators ComplexOrder
open GRWTSK.Analysis.FiniteSquareSum

/-- The second spectral moment of a Hermitian matrix. -/
theorem hermitian_trace_sq_eq_sum_eigenvalues_sq {ι : Type*} [Fintype ι]
    [DecidableEq ι] {A : Matrix ι ι ℂ} (hA : A.IsHermitian) :
    (A ^ 2).trace = ∑ i, ((hA.eigenvalues i : ℂ) ^ 2) := by
  conv_lhs =>
    rw [hA.spectral_theorem, ← map_pow, Unitary.conjStarAlgAut_apply,
      Matrix.trace_mul_cycle, Unitary.coe_star_mul_self, one_mul]
  simp [Matrix.diagonal_pow, Function.comp_def]

/-- The support-sensitive spectral Cauchy-Schwarz bound. -/
theorem hermitian_trace_sq_le_rank_mul_trace_sq {ι : Type*} [Fintype ι]
    [DecidableEq ι] {A : Matrix ι ι ℂ} (hA : A.IsHermitian) :
    A.trace.re ^ 2 ≤ (A.rank : ℝ) * (A ^ 2).trace.re := by
  rw [hA.trace_eq_sum_eigenvalues, hermitian_trace_sq_eq_sum_eigenvalues_sq hA,
    hA.rank_eq_card_non_zero_eigs]
  simpa [← Complex.ofReal_pow] using
    sq_sum_le_support_card_mul_sum_sq hA.eigenvalues

/-- A nonzero Hermitian matrix has strictly positive second moment. -/
theorem hermitian_trace_sq_pos {ι : Type*} [Fintype ι]
    [DecidableEq ι] {A : Matrix ι ι ℂ} (hA : A.IsHermitian) (hne : A ≠ 0) :
    0 < (A ^ 2).trace.re := by
  have he : hA.eigenvalues ≠ 0 := by
    intro hz
    exact hne (hA.eigenvalues_eq_zero_iff.mp hz)
  obtain ⟨i, hi⟩ := Function.ne_iff.mp he
  rw [hermitian_trace_sq_eq_sum_eigenvalues_sq hA]
  simp only [← Complex.ofReal_pow, Complex.re_sum, Complex.ofReal_re]
  exact Finset.sum_pos' (fun j _ => sq_nonneg _) ⟨i, Finset.mem_univ _, sq_pos_of_ne_zero hi⟩

/-- Ratio form, with a strictly positive second moment kept explicit. -/
theorem hermitian_rank_ge_trace_ratio {ι : Type*} [Fintype ι]
    [DecidableEq ι] {A : Matrix ι ι ℂ} (hA : A.IsHermitian)
    (hsecond : 0 < (A ^ 2).trace.re) :
    A.trace.re ^ 2 / (A ^ 2).trace.re ≤ (A.rank : ℝ) := by
  apply (div_le_iff₀ hsecond).2
  exact hermitian_trace_sq_le_rank_mul_trace_sq hA

/-- A Gram-matrix application bounds the rank of a rectangular matrix. -/
theorem gram_rank_ge_trace_ratio {ι κ : Type*} [Fintype ι] [Fintype κ]
    [DecidableEq κ] (A : Matrix ι κ ℂ)
    (hsecond : 0 < ((A.conjTranspose * A) ^ 2).trace.re) :
    (A.conjTranspose * A).trace.re ^ 2 / ((A.conjTranspose * A) ^ 2).trace.re ≤ (A.rank : ℝ) := by
  have h := hermitian_rank_ge_trace_ratio (Matrix.isHermitian_conjTranspose_mul_self A) hsecond
  simpa only [Matrix.rank_conjTranspose_mul_self] using h

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.TraceRank
