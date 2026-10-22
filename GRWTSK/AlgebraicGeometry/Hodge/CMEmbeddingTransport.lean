/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMRegularBaseChange
import GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent

/-!
# Scalar conjugation transports canonical embedding eigenspaces

For a Galois coefficient field E/k, scalar conjugation acts on the first
factor of E tensor_k E, while the regular E-action acts on the second factor.
Base-change naturality therefore transports the eigenspace of an embedding
lambda to the eigenspace of sigma composed with lambda.

This is the linear-algebra content of the CM label-transport equation. It does
not attach Hodge types or construct an abelian variety.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMEmbeddingTransport

open scoped TensorProduct
open GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent
open CMRegularBaseChange

noncomputable section

variable {k E : Type*} [Field k] [Field E] [Algebra k E]

/-- Transport an embedding character by a coefficient-field automorphism. -/
def transportedCharacter
    (σ : E ≃ₐ[k] E) (λ : E →ₐ[k] E) : E →ₐ[k] E :=
  σ.toAlgHom.comp λ

@[simp]
theorem transportedCharacter_apply
    (σ : E ≃ₐ[k] E) (λ : E →ₐ[k] E) (a : E) :
    transportedCharacter σ λ a = σ (λ a) := rfl

/-- Scalar conjugation commutes with the regular action up to the expected
semilinearity on coefficients. -/
theorem scalarConjugate_regularAction
    (σ : E ≃ₐ[k] E) (a : E) (t : E ⊗[k] E) :
    scalarConjugate σ
        (regularAction (k := k) (E := E) (C := E) a t) =
      regularAction (k := k) (E := E) (C := E) a
        (scalarConjugate σ t) := by
  exact LinearMap.rTensor_baseChange σ.toAlgHom t
    ((Algebra.lsmul k k E) a)

/-- The canonical embedding eigenspace is transported from lambda to
sigma composed with lambda. -/
theorem scalarConjugate_mem_embeddingEigenspace
    (σ : E ≃ₐ[k] E) (λ : E →ₐ[k] E)
    {t : E ⊗[k] E}
    (ht : t ∈ embeddingEigenspace (k := k) λ) :
    scalarConjugate σ t ∈
      embeddingEigenspace (k := k) (transportedCharacter σ λ) := by
  rw [mem_embeddingEigenspace_iff] at ht ⊢
  intro a
  rw [← scalarConjugate_regularAction σ a t, ht a,
    scalarConjugate_smul, transportedCharacter_apply]

/-- Applying the inverse automorphism gives the reverse inclusion, so scalar
conjugation identifies the two eigenspaces set-theoretically. -/
theorem embeddingEigenspace_transport_iff
    (σ : E ≃ₐ[k] E) (λ : E →ₐ[k] E) (t : E ⊗[k] E) :
    scalarConjugate σ t ∈
        embeddingEigenspace (k := k) (transportedCharacter σ λ) ↔
      t ∈ embeddingEigenspace (k := k) λ := by
  constructor
  · intro h
    have h' := scalarConjugate_mem_embeddingEigenspace
      (σ := σ.symm)
      (λ := transportedCharacter σ λ)
      h
    simpa [transportedCharacter, scalarConjugate] using h'
  · exact scalarConjugate_mem_embeddingEigenspace σ λ

end

end GRWTSK.AlgebraicGeometry.Hodge.CMEmbeddingTransport
