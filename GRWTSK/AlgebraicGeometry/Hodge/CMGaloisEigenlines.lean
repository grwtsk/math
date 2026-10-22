/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEvaluation
import GRWTSK.AlgebraicGeometry.Hodge.CMRegularBaseChange

/-!
# Canonical Galois embedding eigenlines

For a finite Galois extension E/k, the evaluation equivalence

  E tensor_k E  ~=  functions Gal(E/k) -> E

turns the regular E-action into pointwise multiplication by the corresponding
Galois embedding. The eigenspace for one embedding is therefore exactly one
coordinate axis. This proves the one-dimensionality and nonvanishing needed by
the CM embedding-line interface, without any Hodge-theoretic input.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEigenlines

open scoped TensorProduct
open CMGaloisEmbeddingMatrix
open CMGaloisEvaluation
open CMRegularBaseChange

noncomputable section

variable (k E : Type*) [Field k] [Field E] [Algebra k E]
  [FiniteDimensional k E] [IsGalois k E]

local notation "n" => Module.finrank k E

/-- The j-th Galois embedding, viewed as a k-algebra character. -/
noncomputable def embeddingCharacter (j : Fin n) : E →ₐ[k] E :=
  (galIndexEquiv k E j).toAlgHom

/-- The j-th standard coordinate line in the evaluation model. -/
def coordinateLine (j : Fin n) : Submodule E (Fin n → E) :=
  Submodule.span E {Pi.single j 1}

/-- A canonical source vector whose evaluation is the j-th coordinate vector. -/
noncomputable def canonicalEigenvector (j : Fin n) : E ⊗[k] E :=
  (evaluationEquiv k E).symm (Pi.single j 1)

@[simp]
theorem evaluationEquiv_canonicalEigenvector (j : Fin n) :
    evaluationEquiv k E (canonicalEigenvector k E j) = Pi.single j 1 := by
  exact LinearEquiv.apply_symm_apply _ _

/-- Evaluation intertwines the regular action with coordinatewise multiplication
by the corresponding embedding value. -/
theorem evaluation_regularAction
    (a : E) (t : E ⊗[k] E) (i : Fin n) :
    evaluation k E
        (regularAction (k := k) (E := E) (C := E) a t) i =
      galIndexEquiv k E i a * evaluation k E t i := by
  induction t with
  | tmul c x =>
      simp [regularAction_tmul, evaluation_tmul, map_mul, mul_assoc,
        mul_left_comm, mul_comm]
  | add x y hx hy =>
      simp [hx, hy, mul_add]

/-- The canonical coordinate preimage is nonzero. -/
theorem canonicalEigenvector_ne_zero (j : Fin n) :
    canonicalEigenvector k E j ≠ 0 := by
  intro h
  have he := congrArg (evaluationEquiv k E) h
  have hj := congrFun he j
  simp [canonicalEigenvector] at hj

/-- The canonical coordinate preimage lies in the matching embedding
eigenspace. -/
theorem canonicalEigenvector_mem (j : Fin n) :
    canonicalEigenvector k E j ∈
      embeddingEigenspace (k := k) (embeddingCharacter k E j) := by
  rw [mem_embeddingEigenspace_iff]
  intro a
  apply (evaluationEquiv k E).injective
  funext i
  rw [evaluationEquiv_apply, evaluation_regularAction]
  simp only [map_smul, Pi.smul_apply, smul_eq_mul]
  by_cases hij : i = j
  · subst i
    simp [embeddingCharacter, canonicalEigenvector]
  · simp [embeddingCharacter, canonicalEigenvector, Pi.single_apply, hij]

/-- An embedding eigenvector has no coordinate away from its matching Galois
embedding. -/
theorem evaluation_offDiagonal_zero
    (j i : Fin n) (hij : i ≠ j)
    {t : E ⊗[k] E}
    (ht : t ∈ embeddingEigenspace (k := k) (embeddingCharacter k E j)) :
    evaluation k E t i = 0 := by
  rw [mem_embeddingEigenspace_iff] at ht
  by_contra hzero
  have hchar : ∀ a : E, galIndexEquiv k E i a = galIndexEquiv k E j a := by
    intro a
    have he := congrArg
      (fun u : E ⊗[k] E => evaluation k E u i) (ht a)
    have he' :
        galIndexEquiv k E i a * evaluation k E t i =
          galIndexEquiv k E j a * evaluation k E t i := by
      simpa [evaluation_regularAction, embeddingCharacter, Pi.smul_apply,
        smul_eq_mul] using he
    exact mul_right_cancel₀ hzero he'
  have heq : galIndexEquiv k E i = galIndexEquiv k E j := by
    apply AlgEquiv.ext
    intro a
    exact hchar a
  exact hij ((galIndexEquiv k E).injective heq)

/-- Evaluation of an embedding eigenvector lies in the corresponding
coordinate line. -/
theorem evaluation_mem_coordinateLine
    (j : Fin n) {t : E ⊗[k] E}
    (ht : t ∈ embeddingEigenspace (k := k) (embeddingCharacter k E j)) :
    evaluationEquiv k E t ∈ coordinateLine k E j := by
  apply Submodule.mem_span_singleton.mpr
  refine ⟨evaluation k E t j, ?_⟩
  funext i
  by_cases hij : i = j
  · subst i
    simp [coordinateLine, evaluationEquiv_apply]
  · simp [coordinateLine, evaluationEquiv_apply, Pi.single_apply, hij,
      evaluation_offDiagonal_zero k E j i hij ht]

/-- The canonical embedding eigenspace is exactly the span of its canonical
coordinate preimage. -/
theorem embeddingEigenspace_eq_span (j : Fin n) :
    embeddingEigenspace (k := k) (embeddingCharacter k E j) =
      Submodule.span E {canonicalEigenvector k E j} := by
  apply le_antisymm
  · intro t ht
    have hcoord := evaluation_mem_coordinateLine k E j ht
    obtain ⟨c, hc⟩ := Submodule.mem_span_singleton.mp hcoord
    apply Submodule.mem_span_singleton.mpr
    refine ⟨c, ?_⟩
    apply (evaluationEquiv k E).injective
    rw [map_smul, evaluationEquiv_canonicalEigenvector]
    simpa [evaluationEquiv_apply] using hc
  · intro t ht
    obtain ⟨c, rfl⟩ := Submodule.mem_span_singleton.mp ht
    exact (embeddingEigenspace (k := k) (embeddingCharacter k E j)).smul_mem
      c (canonicalEigenvector_mem k E j)

/-- Every canonical embedding eigenspace is one-dimensional. -/
theorem embeddingEigenspace_finrank_one (j : Fin n) :
    Module.finrank E
      (embeddingEigenspace (k := k) (embeddingCharacter k E j)) = 1 := by
  rw [embeddingEigenspace_eq_span k E j]
  exact finrank_span_singleton (canonicalEigenvector_ne_zero k E j)

/-- Every canonical embedding eigenspace contains a nonzero vector. -/
theorem embeddingEigenspace_nonzero (j : Fin n) :
    ∃ t : E ⊗[k] E,
      t ∈ embeddingEigenspace (k := k) (embeddingCharacter k E j) ∧ t ≠ 0 :=
  ⟨canonicalEigenvector k E j, canonicalEigenvector_mem k E j,
    canonicalEigenvector_ne_zero k E j⟩

/-- One-dimensionality for an arbitrary Galois automorphism index. -/
theorem embeddingEigenspace_finrank_one_aut (σ : E ≃ₐ[k] E) :
    Module.finrank E
      (embeddingEigenspace (k := k) σ.toAlgHom) = 1 := by
  let j : Fin n := (galIndexEquiv k E).symm σ
  have hj : embeddingCharacter k E j = σ.toAlgHom := by
    apply AlgHom.ext
    intro a
    simp [embeddingCharacter, j]
  rw [← hj]
  exact embeddingEigenspace_finrank_one k E j

/-- Nonvanishing for an arbitrary Galois automorphism index. -/
theorem embeddingEigenspace_nonzero_aut (σ : E ≃ₐ[k] E) :
    ∃ t : E ⊗[k] E, t ∈ embeddingEigenspace (k := k) σ.toAlgHom ∧ t ≠ 0 := by
  let j : Fin n := (galIndexEquiv k E).symm σ
  have hj : embeddingCharacter k E j = σ.toAlgHom := by
    apply AlgHom.ext
    intro a
    simp [embeddingCharacter, j]
  rw [← hj]
  exact embeddingEigenspace_nonzero k E j


/-- Package the canonical Galois embedding eigenspaces into the generic
character-eigenline interface once a sign-compatible weight-one type
assignment is supplied. One-dimensionality and nonvanishing are proved here;
only the Hodge-type assignment remains external to this construction. -/
noncomputable def canonicalEigenlineRealization
    {conj : (E ≃ₐ[k] E) → (E ≃ₐ[k] E)}
    (v : CMFourBalance.OddSignRow (E ≃ₐ[k] E) conj)
    (typeAt : (E ≃ₐ[k] E) → CMEmbeddingLines.WeightOneHodgeType)
    (htype : ∀ σ, typeAt σ = CMEmbeddingLines.typeOfSign (v.value σ)) :
    CMEmbeddingEigenspaces.CharacterEigenlineRealization
      E E (E ⊗[k] E) (E ≃ₐ[k] E) conj v :=
  CMRegularBaseChange.eigenlineRealization
    v
    (fun σ => σ.toAlgHom)
    (fun σ => embeddingEigenspace_finrank_one_aut k E σ)
    (fun σ => embeddingEigenspace_nonzero_aut k E σ)
    typeAt
    htype
end

end GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEigenlines
