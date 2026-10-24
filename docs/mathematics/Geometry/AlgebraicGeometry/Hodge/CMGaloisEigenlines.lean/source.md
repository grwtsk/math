# Complete source: GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEigenlines

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b59ccd41eab0807d8f739789c4d50d56e583b0d5` · SHA-256 `4aca0a4071114d3a15cf332fc1fd586c1c8235a4ca4f3278565e2fa3d7bf2315`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
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

/-- Any two nonzero vectors in one canonical Galois embedding eigenspace
differ by a unique-up-to-value nonzero scalar.  This is the linear-algebra
content needed later for the manuscript's "gamma is a nonzero scalar multiple
of conjugate beta" statement. -/
theorem exists_ne_zero_smul_eq_of_mem_embeddingEigenspace
    (σ : E ≃ₐ[k] E)
    {x y : E ⊗[k] E}
    (hxmem : x ∈ embeddingEigenspace (k := k) σ.toAlgHom)
    (hymem : y ∈ embeddingEigenspace (k := k) σ.toAlgHom)
    (hx : x ≠ 0)
    (hy : y ≠ 0) :
    ∃ c : E, c ≠ 0 ∧ y = c • x := by
  let j : Fin n := (galIndexEquiv k E).symm σ
  have hj : embeddingCharacter k E j = σ.toAlgHom := by
    apply AlgHom.ext
    intro a
    simp [embeddingCharacter, j]
  rw [← hj, embeddingEigenspace_eq_span k E j] at hxmem hymem
  obtain ⟨a, ha⟩ := Submodule.mem_span_singleton.mp hxmem
  obtain ⟨b, hb⟩ := Submodule.mem_span_singleton.mp hymem
  have ha0 : a ≠ 0 := by
    intro hzero
    apply hx
    rw [← ha, hzero, zero_smul]
  have hb0 : b ≠ 0 := by
    intro hzero
    apply hy
    rw [← hb, hzero, zero_smul]
  refine ⟨b / a, div_ne_zero hb0 ha0, ?_⟩
  calc
    y = b • canonicalEigenvector k E j := hb.symm
    _ = (b / a) • (a • canonicalEigenvector k E j) := by
      rw [smul_smul, div_mul_cancel₀ b ha0]
    _ = (b / a) • x := by rw [ha]

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


/-- The finite coordinate projector transported back through the Galois
evaluation equivalence. -/
noncomputable def coordinateProjector (j : Fin n) :
    (E ⊗[k] E) →ₗ[E] (E ⊗[k] E) :=
  (evaluationEquiv k E).symm.toLinearMap.comp
    ((LinearMap.single E (fun _ : Fin n => E) j).comp
      ((LinearMap.proj j).comp (evaluationEquiv k E).toLinearMap))

/-- Evaluation of the transported coordinate projector is the corresponding
single-coordinate vector. -/
theorem evaluationEquiv_coordinateProjector
    (j : Fin n) (t : E ⊗[k] E) :
    evaluationEquiv k E (coordinateProjector k E j t) =
      Pi.single j (evaluationEquiv k E t j) := by
  ext i
  by_cases hij : i = j
  · subst i
    simp [coordinateProjector, Pi.single_apply]
  · simp [coordinateProjector, Pi.single_apply, hij]

/-- Coordinate projection is scalar multiplication of the canonical
eigenvector. -/
theorem coordinateProjector_eq_smul_canonicalEigenvector
    (j : Fin n) (t : E ⊗[k] E) :
    coordinateProjector k E j t =
      (evaluationEquiv k E t j) • canonicalEigenvector k E j := by
  apply (evaluationEquiv k E).injective
  rw [evaluationEquiv_coordinateProjector, map_smul,
    evaluationEquiv_canonicalEigenvector]
  ext i
  by_cases hij : i = j
  · subst i
    simp
  · simp [Pi.single_apply, hij]

/-- Every coordinate projector lands in the matching embedding eigenspace. -/
theorem coordinateProjector_mem
    (j : Fin n) (t : E ⊗[k] E) :
    coordinateProjector k E j t ∈
      embeddingEigenspace (k := k) (embeddingCharacter k E j) := by
  rw [coordinateProjector_eq_smul_canonicalEigenvector]
  exact (embeddingEigenspace (k := k) (embeddingCharacter k E j)).smul_mem
    _ (canonicalEigenvector_mem k E j)

/-- The matching coordinate projector acts as the identity on its eigenspace. -/
theorem coordinateProjector_same
    (j : Fin n) {t : E ⊗[k] E}
    (ht : t ∈ embeddingEigenspace (k := k) (embeddingCharacter k E j)) :
    coordinateProjector k E j t = t := by
  rw [embeddingEigenspace_eq_span k E j] at ht
  obtain ⟨a, rfl⟩ := Submodule.mem_span_singleton.mp ht
  rw [map_smul]
  apply congrArg (fun u => a • u)
  rw [coordinateProjector_eq_smul_canonicalEigenvector]
  simp

/-- A different coordinate projector vanishes on the selected eigenspace. -/
theorem coordinateProjector_other
    (i j : Fin n) (hij : i ≠ j)
    {t : E ⊗[k] E}
    (ht : t ∈ embeddingEigenspace (k := k) (embeddingCharacter k E j)) :
    coordinateProjector k E i t = 0 := by
  rw [coordinateProjector_eq_smul_canonicalEigenvector,
    evaluationEquiv_apply, evaluation_offDiagonal_zero k E j i hij ht,
    zero_smul]

/-- The finite coordinate projectors sum to the identity. -/
theorem sum_coordinateProjector (t : E ⊗[k] E) :
    (∑ j : Fin n, coordinateProjector k E j t) = t := by
  apply (evaluationEquiv k E).injective
  rw [map_sum]
  simp_rw [evaluationEquiv_coordinateProjector]
  exact LinearMap.sum_single_apply (fun _ : Fin n => E) (evaluationEquiv k E t)

/-- Character identity for the coordinate corresponding to one Galois
automorphism. -/
theorem embeddingCharacter_symm (σ : E ≃ₐ[k] E) :
    embeddingCharacter k E ((galIndexEquiv k E).symm σ) = σ.toAlgHom := by
  apply AlgHom.ext
  intro a
  simp [embeddingCharacter]

/-- Coordinate projector indexed directly by the Galois automorphism. -/
noncomputable def automorphismProjector (σ : E ≃ₐ[k] E) :
    (E ⊗[k] E) →ₗ[E] (E ⊗[k] E) :=
  coordinateProjector k E ((galIndexEquiv k E).symm σ)

/-- The automorphism-indexed projector lands in the corresponding literal
character eigenspace. -/
theorem automorphismProjector_mem
    (σ : E ≃ₐ[k] E) (t : E ⊗[k] E) :
    automorphismProjector k E σ t ∈
      embeddingEigenspace (k := k) σ.toAlgHom := by
  rw [← embeddingCharacter_symm k E σ]
  exact coordinateProjector_mem k E ((galIndexEquiv k E).symm σ) t

/-- Matching automorphism projector is identity on its eigenspace. -/
theorem automorphismProjector_same
    (σ : E ≃ₐ[k] E) {t : E ⊗[k] E}
    (ht : t ∈ embeddingEigenspace (k := k) σ.toAlgHom) :
    automorphismProjector k E σ t = t := by
  rw [← embeddingCharacter_symm k E σ] at ht
  exact coordinateProjector_same k E ((galIndexEquiv k E).symm σ) ht

/-- Distinct automorphism projectors annihilate one another's eigenspaces. -/
theorem automorphismProjector_other
    (σ τ : E ≃ₐ[k] E) (hστ : σ ≠ τ)
    {t : E ⊗[k] E}
    (ht : t ∈ embeddingEigenspace (k := k) τ.toAlgHom) :
    automorphismProjector k E σ t = 0 := by
  rw [← embeddingCharacter_symm k E τ] at ht
  apply coordinateProjector_other k E
  · exact fun h => hστ ((galIndexEquiv k E).symm.injective h)
  · exact ht

/-- The automorphism-indexed projectors sum to the identity. -/
theorem sum_automorphismProjector (t : E ⊗[k] E) :
    (∑ σ : E ≃ₐ[k] E, automorphismProjector k E σ t) = t := by
  have hsum := Fintype.sum_equiv (galIndexEquiv k E)
    (fun j : Fin n => coordinateProjector k E j t)
    (fun σ : E ≃ₐ[k] E => automorphismProjector k E σ t)
    (fun j => by simp [automorphismProjector])
  rw [← hsum]
  exact sum_coordinateProjector k E t

/-- The canonical Galois embedding eigenspaces form a complete internal direct
sum decomposition of the regular scalar extension. -/
theorem canonicalEigenspaces_isInternal :
    DirectSum.IsInternal
      (fun σ : E ≃ₐ[k] E => embeddingEigenspace (k := k) σ.toAlgHom) := by
  classical
  apply DirectSum.isInternal_submodule_of_iSupIndep_of_iSup_eq_top
  · apply (iSupIndep_iff_finsetSum_eq_zero_imp_eq_zero _).mpr
    intro s v hv hz σ hσ
    have hp := congrArg (automorphismProjector k E σ) hz
    rw [map_sum, map_zero, Finset.sum_eq_single_of_mem σ hσ] at hp
    · rw [automorphismProjector_same k E σ (hv σ hσ)] at hp
      exact hp
    · intro τ hτ hτσ
      exact automorphismProjector_other k E σ τ (Ne.symm hτσ) (hv τ hτ)
  · apply top_unique
    intro t _
    rw [← sum_automorphismProjector k E t]
    apply Submodule.sum_mem
    intro σ _
    exact (le_iSup
      (fun τ : E ≃ₐ[k] E => embeddingEigenspace (k := k) τ.toAlgHom) σ)
      (automorphismProjector_mem k E σ t)

/-- Canonical complete character-eigenspace decomposition with formal
sign-derived weight-one labels. -/
noncomputable def canonicalTypedEigenspaceDecomposition
    {conj : (E ≃ₐ[k] E) → (E ≃ₐ[k] E)}
    (v : CMFourBalance.OddSignRow (E ≃ₐ[k] E) conj) :
    CMEmbeddingEigenspaces.CharacterEigenspaceDecomposition
      E E (E ⊗[k] E) (E ≃ₐ[k] E) conj v where
  action := regularAction (k := k) (E := E) (C := E)
  character := fun σ => σ.toAlgHom
  line_finrank_one := fun σ => embeddingEigenspace_finrank_one_aut k E σ
  line_nonzero := fun σ => embeddingEigenspace_nonzero_aut k E σ
  typeAt := fun σ => CMEmbeddingLines.typeOfSign (v.value σ)
  typeAt_eq := fun _ => rfl
  decomposition := canonicalEigenspaces_isInternal k E
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

/-- Canonical formal weight-one type labels on the canonical Galois eigenlines.

This is a typed profile only: it assigns `(1,0)`/`(0,1)` labels from the sign
row by definition. The theorem does not prove that these labels arise from an
actual polarized rational Hodge structure. -/
noncomputable def canonicalTypedEigenlineRealization
    {conj : (E ≃ₐ[k] E) → (E ≃ₐ[k] E)}
    (v : CMFourBalance.OddSignRow (E ≃ₐ[k] E) conj) :
    CMEmbeddingEigenspaces.CharacterEigenlineRealization
      E E (E ⊗[k] E) (E ≃ₐ[k] E) conj v :=
  canonicalEigenlineRealization k E v
    (fun σ => CMEmbeddingLines.typeOfSign (v.value σ))
    (fun _ => rfl)

/-- Four balanced sign rows on the canonical Galois eigenspaces have the
formal all-coordinate `(2,2)` type-label count.

This still does not assert that the labelled decomposition is a Hodge
decomposition or that the corresponding tensor line is algebraic. -/
theorem canonicalTypedEigenlines_fourFactor_bidegree_two_two
    {conj : (E ≃ₐ[k] E) → (E ≃ₐ[k] E)}
    (v₁ v₂ v₃ v₄ : CMFourBalance.OddSignRow (E ≃ₐ[k] E) conj)
    (hbal : CMFourBalance.FourBalance v₁ v₂ v₃ v₄) :
    ∀ g,
      (CMEmbeddingLines.pIndex
          ((canonicalTypedEigenlineRealization k E v₁).typeAt g) +
        CMEmbeddingLines.pIndex
          ((canonicalTypedEigenlineRealization k E v₂).typeAt g) +
        CMEmbeddingLines.pIndex
          ((canonicalTypedEigenlineRealization k E v₃).typeAt (conj g)) +
        CMEmbeddingLines.pIndex
          ((canonicalTypedEigenlineRealization k E v₄).typeAt (conj g)) = 2) ∧
      (CMEmbeddingLines.qIndex
          ((canonicalTypedEigenlineRealization k E v₁).typeAt g) +
        CMEmbeddingLines.qIndex
          ((canonicalTypedEigenlineRealization k E v₂).typeAt g) +
        CMEmbeddingLines.qIndex
          ((canonicalTypedEigenlineRealization k E v₃).typeAt (conj g)) +
        CMEmbeddingLines.qIndex
          ((canonicalTypedEigenlineRealization k E v₄).typeAt (conj g)) = 2) :=
  CMEmbeddingEigenspaces.characterEigenlines_fourFactor_bidegree_two_two
    v₁ v₂ v₃ v₄
    (canonicalTypedEigenlineRealization k E v₁)
    (canonicalTypedEigenlineRealization k E v₂)
    (canonicalTypedEigenlineRealization k E v₃)
    (canonicalTypedEigenlineRealization k E v₄)
    hbal
end

end GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEigenlines
```
