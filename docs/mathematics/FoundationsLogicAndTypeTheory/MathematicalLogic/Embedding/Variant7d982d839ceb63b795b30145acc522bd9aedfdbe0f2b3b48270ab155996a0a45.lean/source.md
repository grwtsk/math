# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Embedding.Variant7d982d839ceb63b795b30145acc522bd9aedfdbe0f2b3b48270ab155996a0a45

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53655a99bbfa6916262911342570e11b7cc88911` · SHA-256 `d758b77a023acbb93625aa140cc4114f99eac28d9b1d43f3d9aaf1721eda29eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SumEmbeddingEquivProdEmbeddingDisjoint.Variant76761cea481a3a62a80bf9cd19031b65d4a2e8aa10a69a1460d96e08aa354694","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76761cea481a3a62a80bf9cd19031b65d4a2e8aa10a69a1460d96e08aa354694","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.SumEmbeddingEquivProdEmbeddingDisjoint.Variant76761cea481a3a62a80bf9cd19031b65d4a2e8aa10a69a1460d96e08aa354694","mathematical_subject":"Logic.Foundations","original_sha256":"76761cea481a3a62a80bf9cd19031b65d4a2e8aa10a69a1460d96e08aa354694","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/Equiv/Embedding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Rodriguez. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Rodriguez
-/
import Mathlib.Logic.Embedding.Set

/-!
# Equivalences on embeddings

This file shows some advanced equivalences on embeddings, useful for constructing larger
embeddings from smaller ones.
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SumEmbeddingEquivProdEmbeddingDisjoint.Variant76761cea481a3a62a80bf9cd19031b65d4a2e8aa10a69a1460d96e08aa354694

open Function.Embedding

namespace Equiv

/-- Embeddings from a sum type are equivalent to two separate embeddings with disjoint ranges. -/
def sumEmbeddingEquivProdEmbeddingDisjoint {α β γ : Type*} :
    (α ⊕ β ↪ γ) ≃ { f : (α ↪ γ) × (β ↪ γ) // Disjoint (Set.range f.1) (Set.range f.2) } where
  toFun f :=
    ⟨(inl.trans f, inr.trans f), by
      rw [Set.disjoint_left]
      rintro _ ⟨a, h⟩ ⟨b, rfl⟩
      simp only [trans_apply, inl_apply, inr_apply] at h
      have : Sum.inl a = Sum.inr b := f.injective h
      simp only [reduceCtorEq] at this⟩
  invFun := fun ⟨⟨f, g⟩, disj⟩ =>
    ⟨fun x =>
      match x with
      | Sum.inl a => f a
      | Sum.inr b => g b, by
      rintro (a₁ | b₁) (a₂ | b₂) f_eq <;>
        simp only [Equiv.coe_fn_symm_mk, Sum.elim_inl, Sum.elim_inr] at f_eq
      · rw [f.injective f_eq]
      · exfalso
        exact disj.le_bot ⟨⟨a₁, f_eq⟩, ⟨b₂, by simp [f_eq]⟩⟩
      · exfalso
        exact disj.le_bot ⟨⟨a₂, rfl⟩, ⟨b₁, f_eq⟩⟩
      · rw [g.injective f_eq]⟩
  left_inv f := by
    dsimp only
    ext x
    cases x <;> simp!
  right_inv := fun ⟨⟨f, g⟩, _⟩ => by
    simp only [Prod.mk_inj]
    constructor

/-- Embeddings whose range lies within a set are equivalent to embeddings to that set.
This is `Function.Embedding.codRestrict` as an equiv. -/
def codRestrict (α : Type*) {β : Type*} (bs : Set β) :
    { f : α ↪ β // ∀ a, f a ∈ bs } ≃
      (α ↪ bs) where
  toFun f := (f : α ↪ β).codRestrict bs f.prop
  invFun f := ⟨f.trans (Function.Embedding.subtype _), fun a => (f a).prop⟩
  left_inv x := by ext; rfl
  right_inv x := by ext; rfl

/-- Pairs of embeddings with disjoint ranges are equivalent to a dependent sum of embeddings,
in which the second embedding cannot take values in the range of the first. -/
def prodEmbeddingDisjointEquivSigmaEmbeddingRestricted {α β γ : Type*} :
    { f : (α ↪ γ) × (β ↪ γ) // Disjoint (Set.range f.1) (Set.range f.2) } ≃
      Σf : α ↪ γ, β ↪ ↥(Set.range f)ᶜ :=
  (subtypeProdEquivSigmaSubtype fun (a : α ↪ γ) (b : β ↪ _) =>
        Disjoint (Set.range a) (Set.range b)).trans <|
    Equiv.sigmaCongrRight fun a =>
      (subtypeEquivProp <| by
            ext f
            rw [← Set.range_subset_iff, Set.subset_compl_iff_disjoint_right, disjoint_comm]).trans
        (codRestrict _ _)

/-- A combination of the above results, allowing us to turn one embedding over a sum type
into two dependent embeddings, the second of which avoids any members of the range
of the first. This is helpful for constructing larger embeddings out of smaller ones. -/
def sumEmbeddingEquivSigmaEmbeddingRestricted {α β γ : Type*} :
    (α ⊕ β ↪ γ) ≃ Σf : α ↪ γ, β ↪ ↥(Set.range f)ᶜ :=
  Equiv.trans sumEmbeddingEquivProdEmbeddingDisjoint
    prodEmbeddingDisjointEquivSigmaEmbeddingRestricted

/-- Embeddings from a single-member type are equivalent to members of the target type. -/
def uniqueEmbeddingEquivResult {α β : Type*} [Unique α] :
    (α ↪ β) ≃ β where
  toFun f := f default
  invFun x := ⟨fun _ => x, fun _ _ _ => Subsingleton.elim _ _⟩
  left_inv _ := by
    ext x
    simp_rw [Function.Embedding.coeFn_mk]
    congr 1
    exact Subsingleton.elim _ x
  right_inv _ := by simp

end Equiv
```
