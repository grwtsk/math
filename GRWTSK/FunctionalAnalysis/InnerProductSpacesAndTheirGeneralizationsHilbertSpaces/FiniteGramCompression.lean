/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib inner-product, orthogonal-projection and matrix theory retain
upstream authorship and Apache-2.0 licenses. -/
import Mathlib.Analysis.InnerProductSpace.Projection.Basic
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.Normed.Operator.Compact.Basic
import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv
import Mathlib.Tactic

/-!
# Actual finite Gram operators and orthogonal compression

Construct the operator from its feature vectors, its finite matrix, and the
coefficient synthesis map. Prove the range and eigenvector transports from
these definitions. No orthogonality, linear independence, positivity gap or
spectrum is hidden in a certificate. Compression uses Mathlib's actual
orthogonal projection, not pointwise representatives.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.InnerProductSpace.FiniteGramCompression

variable {I E : Type*} [Fintype I] [NormedAddCommGroup E] [InnerProductSpace ℝ E]

/-- A genuine bounded rank-one operator. -/
def rankOne (v : E) : E →L[ℝ] E := (innerSL ℝ v).smulRight v

@[simp] theorem rankOne_apply (v x : E) : rankOne v x = inner ℝ v x • v := rfl

def gramOperator (v : I → E) : E →L[ℝ] E := ∑ i, rankOne (v i)

def synthesis (v : I → E) (a : I → ℝ) : E := ∑ i, a i • v i

def gramMatrix (v : I → E) : Matrix I I ℝ := fun i j => inner ℝ (v i) (v j)

@[simp] theorem gramOperator_apply (v : I → E) (x : E) :
    gramOperator v x = ∑ i, inner ℝ (v i) x • v i := by
  simp only [gramOperator, ContinuousLinearMap.sum_apply, rankOne_apply]

theorem gramOperator_quadratic (v : I → E) (x : E) :
    inner ℝ x (gramOperator v x) = ∑ i, (inner ℝ x (v i)) ^ 2 := by
  rw [gramOperator_apply, inner_sum]
  apply Finset.sum_congr rfl
  intro i _
  rw [inner_smul_right, real_inner_comm (v i) x]
  ring

theorem gramOperator_nonnegative (v : I → E) (x : E) :
    0 ≤ inner ℝ x (gramOperator v x) := by
  rw [gramOperator_quadratic]
  exact Finset.sum_nonneg (fun _ _ => sq_nonneg _)

theorem gramOperator_isSymmetric (v : I → E) :
    (gramOperator v).toLinearMap.IsSymmetric := by
  intro x y
  simp only [gramOperator_apply, sum_inner, inner_sum, inner_smul_left,
    inner_smul_right, conj_trivial]
  apply Finset.sum_congr rfl
  intro i _
  rw [real_inner_comm x (v i)]
  ring

theorem gramOperator_mem_span (v : I → E) (x : E) :
    gramOperator v x ∈ Submodule.span ℝ (Set.range v) := by
  rw [gramOperator_apply]
  exact Submodule.sum_mem _ (fun i _ =>
    Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩))

theorem gramOperator_range_le (v : I → E) :
    LinearMap.range (gramOperator v).toLinearMap ≤ Submodule.span ℝ (Set.range v) := by
  rintro y ⟨x, rfl⟩
  exact gramOperator_mem_span v x

theorem gramMatrix_symmetric (v : I → E) (i j : I) :
    gramMatrix v i j = gramMatrix v j i := real_inner_comm _ _

theorem synthesis_norm_sq (v : I → E) (a : I → ℝ) :
    ‖synthesis v a‖ ^ 2 = ∑ i, ∑ j, a i * a j * gramMatrix v i j := by
  rw [← real_inner_self_eq_norm_sq]
  simp only [synthesis, sum_inner, inner_sum, inner_smul_left,
    inner_smul_right, conj_trivial, gramMatrix]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Exact matrix/ambient transport, valid also for dependent or zero features. -/
theorem operator_synthesis (v : I → E) (a : I → ℝ) :
    gramOperator v (synthesis v a) = synthesis v ((gramMatrix v).mulVec a) := by
  rw [gramOperator_apply]
  apply Finset.sum_congr rfl
  intro i _
  congr 1
  simp only [synthesis, inner_sum, inner_smul_right, Matrix.mulVec,
    dotProduct, gramMatrix]
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Nonzero synthesis is retained: a redundant coordinate eigenvector can map to zero. -/
theorem eigenvector_lift (v : I → E) (a : I → ℝ) (λ : ℝ)
    (he : (gramMatrix v).mulVec a = λ • a) :
    gramOperator v (synthesis v a) = λ • synthesis v a := by
  rw [operator_synthesis, he]
  simp only [synthesis, Pi.smul_apply, smul_eq_mul, mul_smul, Finset.smul_sum]

/-- The literal compression of any bounded operator. -/
def compress (K : Submodule ℝ E) [K.HasOrthogonalProjection]
    (T : E →L[ℝ] E) : K →L[ℝ] K :=
  K.orthogonalProjectionOnto.comp (T.comp K.subtypeL)

@[simp] theorem compress_pairing (K : Submodule ℝ E) [K.HasOrthogonalProjection]
    (T : E →L[ℝ] E) (x y : K) :
    inner ℝ x (compress K T y) = inner ℝ (x : E) (T (y : E)) :=
  Submodule.inner_orthogonalProjectionOnto_eq_of_mem_left x _

/-- Compressed features are the actual projected vectors. -/
theorem compress_gramOperator (K : Submodule ℝ E) [K.HasOrthogonalProjection]
    (v : I → E) :
    compress K (gramOperator v) = gramOperator (fun i => K.orthogonalProjectionOnto (v i)) := by
  ext x
  simp only [compress, ContinuousLinearMap.comp_apply, Submodule.subtypeL_apply,
    gramOperator_apply, map_sum, map_smul]
  apply Finset.sum_congr rfl
  intro i _
  congr 1
  exact (Submodule.inner_orthogonalProjectionOnto_eq_of_mem_right x (v i)).symm

/-- Orthogonal compression cannot enlarge the stated operator error. -/
theorem norm_compress_apply_le (K : Submodule ℝ E) [K.HasOrthogonalProjection]
    (T : E →L[ℝ] E) (x : K) : ‖compress K T x‖ ≤ ‖T‖ * ‖x‖ := by
  exact (K.norm_orthogonalProjectionOnto_apply_le (T x)).trans (T.le_opNorm x)

theorem norm_compress_le (K : Submodule ℝ E) [K.HasOrthogonalProjection]
    (T : E →L[ℝ] E) : ‖compress K T‖ ≤ ‖T‖ :=
  ContinuousLinearMap.opNorm_le_bound _ (norm_nonneg T) (norm_compress_apply_le K T)



/-- The rank-one map factors through the actual one-dimensional scalar space. -/
theorem rankOne_compact (v : E) : IsCompactOperator (rankOne v) := by
  have h := (isCompactOperator_of_locallyCompactSpace_dom (innerSL ℝ v)).clm_comp
    ((ContinuousLinearMap.id ℝ ℝ).smulRight v)
  exact h

theorem gramOperator_compact (v : I → E) : IsCompactOperator (gramOperator v) := by
  classical
  have hc (s : Finset I) : IsCompactOperator (∑ i ∈ s, rankOne (v i)) := by
    induction s using Finset.induction_on with
    | empty =>
        simp only [Finset.sum_empty]
        exact isCompactOperator_zero
    | @insert i s hi ih =>
        rw [Finset.sum_insert hi]
        exact (rankOne_compact (v i)).add ih
  exact hc Finset.univ

def analysis (v : I → E) (x : E) : I → ℝ := fun i => inner ℝ (v i) x

theorem analysis_synthesis (v : I → E) (a : I → ℝ) :
    analysis v (synthesis v a) = (gramMatrix v).mulVec a := by
  funext i
  simp only [analysis, synthesis, inner_sum, inner_smul_right, Matrix.mulVec,
    dotProduct, gramMatrix]
  apply Finset.sum_congr rfl
  intro j _
  ring

theorem synthesis_analysis (v : I → E) (x : E) :
    synthesis v (analysis v x) = gramOperator v x := (gramOperator_apply v x).symm

/-- Nonzero eigenvalues of the literal finite matrix and actual operator coincide.
The zero-eigenvalue exception is retained because feature coordinates can be redundant. -/
theorem nonzero_eigenvalues_iff (v : I → E) {λ : ℝ} (hλ : λ ≠ 0) :
    (∃ a : I → ℝ, a ≠ 0 ∧ (gramMatrix v).mulVec a = λ • a) ↔
      ∃ x : E, x ≠ 0 ∧ gramOperator v x = λ • x := by
  constructor
  · rintro ⟨a,ha,he⟩
    refine ⟨synthesis v a, ?_, eigenvector_lift v a λ he⟩
    intro hz
    have hg := analysis_synthesis v a
    rw [hz, he] at hg
    have hs : λ • a = 0 := by simpa [analysis] using hg.symm
    exact ha ((smul_eq_zero.mp hs).resolve_left hλ)
  · rintro ⟨x,hx,he⟩
    refine ⟨analysis v x, ?_, ?_⟩
    · intro hz
      have hsyn := synthesis_analysis v x
      rw [hz, he] at hsyn
      have hs : λ • x = 0 := by simpa [synthesis] using hsyn.symm
      exact hx ((smul_eq_zero.mp hs).resolve_left hλ)
    · rw [← analysis_synthesis, synthesis_analysis, he]
      funext i
      simp [analysis, inner_smul_right]

end GRWTSK.Analysis.InnerProductSpace.FiniteGramCompression
