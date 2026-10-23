/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMRegularBaseChange
import GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEigenlines
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

/-- Scalar conjugation is inverted by the inverse field automorphism. -/
theorem scalarConjugate_symm_apply
    (σ : E ≃ₐ[k] E)
    (t : E ⊗[k] E) :
    scalarConjugate σ.symm (scalarConjugate σ t) = t := by
  induction t with
  | tmul a v =>
      simp [scalarConjugate_tmul]
  | add x y hx hy =>
      simp [hx, hy]

/-- Scalar conjugation preserves nonzero tensors. -/
theorem scalarConjugate_ne_zero
    (σ : E ≃ₐ[k] E)
    {t : E ⊗[k] E}
    (ht : t ≠ 0) :
    scalarConjugate σ t ≠ 0 := by
  intro hzero
  apply ht
  have h := congrArg (scalarConjugate σ.symm) hzero
  simpa [scalarConjugate_symm_apply] using h

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


/-- Four canonical embedding-line vectors transported simultaneously.

This package is still factorwise: it does not form their tensor product. -/
structure FourEmbeddingLineVectors where
  character : Fin 4 → E →ₐ[k] E
  vector : Fin 4 → E ⊗[k] E
  mem : ∀ r, vector r ∈ embeddingEigenspace (k := k) (character r)

/-- Scalar conjugation transports all four embedding-line factors at once. -/
def FourEmbeddingLineVectors.scalarTransport
    (D : FourEmbeddingLineVectors (k := k) (E := E))
    (σ : E ≃ₐ[k] E) :
    FourEmbeddingLineVectors (k := k) (E := E) where
  character := fun r => transportedCharacter σ (D.character r)
  vector := fun r => scalarConjugate σ (D.vector r)
  mem := fun r =>
    scalarConjugate_mem_embeddingEigenspace
      σ (D.character r) (D.mem r)

/-- Pointwise description of the transported four-factor character tuple. -/
@[simp]
theorem FourEmbeddingLineVectors.scalarTransport_character
    (D : FourEmbeddingLineVectors (k := k) (E := E))
    (σ : E ≃ₐ[k] E)
    (r : Fin 4) :
    (D.scalarTransport σ).character r =
      transportedCharacter σ (D.character r) :=
  rfl

/-- Pointwise description of the transported four-factor vector tuple. -/
@[simp]
theorem FourEmbeddingLineVectors.scalarTransport_vector
    (D : FourEmbeddingLineVectors (k := k) (E := E))
    (σ : E ≃ₐ[k] E)
    (r : Fin 4) :
    (D.scalarTransport σ).vector r =
      scalarConjugate σ (D.vector r) :=
  rfl


section GaloisTransportedLine

variable [FiniteDimensional k E] [IsGalois k E]

/-- The transported character is the character of the composite Galois
automorphism. -/
theorem transportedCharacter_eq_mul
    (σ τ : E ≃ₐ[k] E) :
    transportedCharacter σ τ.toAlgHom = (σ * τ).toAlgHom := by
  ext a
  rfl

/-- A nonzero vector in the transported canonical embedding line is a nonzero
scalar multiple of the scalar-conjugated source vector.

This is precisely the local linear-algebra content of the manuscript's
statement that gamma is a nonzero scalar multiple of conjugate beta. -/
theorem exists_ne_zero_smul_scalarConjugate_eq
    (σ τ : E ≃ₐ[k] E)
    {beta gamma : E ⊗[k] E}
    (hbeta_mem :
      beta ∈ embeddingEigenspace (k := k) τ.toAlgHom)
    (hgamma_mem :
      gamma ∈ embeddingEigenspace (k := k) (σ * τ).toAlgHom)
    (hbeta : beta ≠ 0)
    (hgamma : gamma ≠ 0) :
    ∃ c : E, c ≠ 0 ∧ gamma = c • scalarConjugate σ beta := by
  have htransport :
      scalarConjugate σ beta ∈
        embeddingEigenspace (k := k) (σ * τ).toAlgHom := by
    rw [← transportedCharacter_eq_mul σ τ]
    exact scalarConjugate_mem_embeddingEigenspace
      σ τ.toAlgHom hbeta_mem
  have htransport0 : scalarConjugate σ beta ≠ 0 :=
    scalarConjugate_ne_zero σ hbeta
  exact CMGaloisEigenlines.exists_ne_zero_smul_eq_of_mem_embeddingEigenspace
    k E (σ * τ) htransport hgamma_mem htransport0 hgamma

end GaloisTransportedLine


end

end GRWTSK.AlgebraicGeometry.Hodge.CMEmbeddingTransport
