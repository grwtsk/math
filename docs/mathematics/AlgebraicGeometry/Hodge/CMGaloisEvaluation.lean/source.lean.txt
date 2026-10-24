/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEmbeddingMatrix
import GRWTSK.AlgebraicGeometry.Hodge.CMRegularBaseChange
import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
import Mathlib.RingTheory.TensorProduct.Free

/-!
# Evaluation equivalence for a finite Galois extension

For a finite Galois extension E/k, evaluate a tensor in E tensor_k E at all
Galois automorphisms on the second factor. The matrix of this map in a finite
basis is the transpose of the nonsingular Galois embeddings matrix, hence the
evaluation map is a linear equivalence.

This is the canonical product-coordinate decomposition underlying the
embedding-line picture; no Hodge structure is used.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEvaluation

open scoped TensorProduct
open TensorProduct Matrix Module
open CMGaloisEmbeddingMatrix

noncomputable section

variable (k E : Type*) [Field k] [Field E] [Algebra k E]
  [FiniteDimensional k E] [IsGalois k E]

local notation "n" => Module.finrank k E

/-- Evaluation of one E-vector at all Galois automorphisms, reindexed by
Fin(finrank k E). -/
noncomputable def embeddingValues : E →ₗ[k] (Fin n → E) where
  toFun x i := galIndexEquiv k E i x
  map_add' x y := by
    funext i
    simp
  map_smul' a x := by
    funext i
    simp [Algebra.smul_def]

/-- Base-change the embedding-value map to E tensor_k E. -/
noncomputable def evaluation : E ⊗[k] E →ₗ[E] (Fin n → E) :=
  (embeddingValues k E).liftBaseChange E

@[simp]
theorem evaluation_tmul (a x : E) (i : Fin n) :
    evaluation k E (a ⊗ₜ[k] x) i =
      a * galIndexEquiv k E i x := by
  simp [evaluation, embeddingValues, Algebra.smul_def]

/-- The source basis obtained by scalar extension of a finite k-basis of E. -/
noncomputable def sourceBasis : Basis (Fin n) E (E ⊗[k] E) :=
  Algebra.TensorProduct.basis E (Module.finBasis k E)

/-- The evaluation matrix is the transpose of the Galois embeddings matrix. -/
theorem evaluation_toMatrix :
    LinearMap.toMatrix (sourceBasis k E) (Pi.basisFun E (Fin n))
        (evaluation k E) =
      (embeddingMatrix k E)ᵀ := by
  classical
  ext i j
  simp [LinearMap.toMatrix_apply, sourceBasis, evaluation_tmul,
    embeddingMatrix_apply]

/-- The evaluation matrix is nonsingular. -/
theorem evaluation_matrix_det_ne_zero :
    (LinearMap.toMatrix (sourceBasis k E) (Pi.basisFun E (Fin n))
      (evaluation k E)).det ≠ 0 := by
  rw [evaluation_toMatrix k E, Matrix.det_transpose]
  exact embeddingMatrix_det_ne_zero k E

/-- Evaluation at all Galois automorphisms is injective. -/
theorem evaluation_injective : Function.Injective (evaluation k E) := by
  classical
  intro x y hxy
  let bsrc := sourceBasis k E
  let bdst := Pi.basisFun E (Fin n)
  let M := LinearMap.toMatrix bsrc bdst (evaluation k E)
  have hM : M.det ≠ 0 := by
    simpa [M, bsrc, bdst] using evaluation_matrix_det_ne_zero k E
  have hinj := Matrix.mulVec_injective_of_det_ne_zero hM
  apply bsrc.repr.injective
  apply hinj
  rw [LinearMap.toMatrix_mulVec_repr, LinearMap.toMatrix_mulVec_repr, hxy]

/-- Source and target have the same E-dimension. -/
theorem evaluation_finrank_eq :
    Module.finrank E (E ⊗[k] E) = Module.finrank E (Fin n → E) := by
  rw [Module.finrank_baseChange, Module.finrank_pi,
    Fintype.card_fin, Module.finrank_self, mul_one]

/-- Canonical linear equivalence obtained from the nonsingular evaluation map. -/
noncomputable def evaluationEquiv :
    E ⊗[k] E ≃ₗ[E] (Fin n → E) :=
  (evaluation k E).linearEquivOfInjective
    (evaluation_injective k E) (evaluation_finrank_eq k E)

@[simp]
theorem evaluationEquiv_apply (t : E ⊗[k] E) :
    evaluationEquiv k E t = evaluation k E t := rfl

@[simp]
theorem evaluationEquiv_tmul (a x : E) (i : Fin n) :
    evaluationEquiv k E (a ⊗ₜ[k] x) i =
      a * galIndexEquiv k E i x := by
  exact evaluation_tmul k E a x i

end

end GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEvaluation
