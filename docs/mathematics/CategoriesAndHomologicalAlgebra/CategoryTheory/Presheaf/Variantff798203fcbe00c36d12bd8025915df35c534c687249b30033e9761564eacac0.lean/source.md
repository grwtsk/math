# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presheaf.Variantff798203fcbe00c36d12bd8025915df35c534c687249b30033e9761564eacac0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb136a03bf5dea31cd04d0970db603f51a49bbb0` · SHA-256 `dc7cbf984e79bea34928ee602cc216533bfaac38d51ed00f83bf139e4fb1455e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FreeYoneda.Variant978b8c7ab7d9e1d9b354f5b6f5145d1e34d0f1d7b31c05a2a914615116296de3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"978b8c7ab7d9e1d9b354f5b6f5145d1e34d0f1d7b31c05a2a914615116296de3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FreeYoneda.Variant978b8c7ab7d9e1d9b354f5b6f5145d1e34d0f1d7b31c05a2a914615116296de3","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"978b8c7ab7d9e1d9b354f5b6f5145d1e34d0f1d7b31c05a2a914615116296de3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Generator/Presheaf.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.CategoryTheory.Generator.Basic
import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic

/-!
# Generators in the category of presheaves

In this file, we show that if `A` is a category with zero morphisms that
has a separator (and suitable coproducts), then the category of
presheaves `Cᵒᵖ ⥤ A` also has a separator.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FreeYoneda.Variant978b8c7ab7d9e1d9b354f5b6f5145d1e34d0f1d7b31c05a2a914615116296de3

universe w v' v u' u

namespace CategoryTheory

open Limits Opposite

namespace Presheaf

variable {C : Type u} [Category.{v} C] {A : Type u'} [Category.{v'} A]
  [HasCoproducts.{v} A]

/-- Given `X : C` and `M : A`, this is the presheaf `Cᵒᵖ ⥤ A` which sends
`Y : Cᵒᵖ` to the coproduct of copies of `M` indexed by `Y.unop ⟶ X`. -/
@[simps]
noncomputable def freeYoneda (X : C) (M : A) : Cᵒᵖ ⥤ A where
  obj Y := ∐ (fun (i : (yoneda.obj X).obj Y) ↦ M)
  map f := Sigma.map' ((yoneda.obj X).map f) (fun _ ↦ 𝟙 M)

/-- The bijection `(Presheaf.freeYoneda X M ⟶ F) ≃ (M ⟶ F.obj (op X))`. -/
noncomputable def freeYonedaHomEquiv {X : C} {M : A} {F : Cᵒᵖ ⥤ A} :
    (freeYoneda X M ⟶ F) ≃ (M ⟶ F.obj (op X)) where
  toFun f := Sigma.ι (fun (i : (yoneda.obj X).obj _) ↦ M) (𝟙 _) ≫ f.app (op X)
  invFun g :=
    { app Y := Sigma.desc (fun φ ↦ g ≫ F.map φ.op)
      naturality _ _ _ := Sigma.hom_ext _ _ (by simp)}
  left_inv f := by
    ext Y
    refine Sigma.hom_ext _ _ (fun φ ↦ ?_)
    simpa using (Sigma.ι _ (𝟙 _) ≫= f.naturality φ.op).symm
  right_inv g := by simp

@[reassoc]
lemma freeYonedaHomEquiv_comp {X : C} {M : A} {F G : Cᵒᵖ ⥤ A}
    (α : freeYoneda X M ⟶ F) (f : F ⟶ G) :
    freeYonedaHomEquiv (α ≫ f) = freeYonedaHomEquiv α ≫ f.app (op X) := by
  simp [freeYonedaHomEquiv]

@[reassoc]
lemma freeYonedaHomEquiv_symm_comp {X : C} {M : A} {F G : Cᵒᵖ ⥤ A} (α : M ⟶ F.obj (op X))
    (f : F ⟶ G) :
    freeYonedaHomEquiv.symm α ≫ f = freeYonedaHomEquiv.symm (α ≫ f.app (op X)) := by
  obtain ⟨β, rfl⟩ := freeYonedaHomEquiv.surjective α
  apply freeYonedaHomEquiv.injective
  simp only [Equiv.symm_apply_apply, freeYonedaHomEquiv_comp, Equiv.apply_symm_apply]

variable (C)

lemma isSeparating {ι : Type w} {S : ι → A} (hS : IsSeparating (Set.range S)) :
    IsSeparating (Set.range (fun (⟨X, i⟩ : C × ι) ↦ freeYoneda X (S i))) := by
  intro F G f g h
  ext ⟨X⟩
  refine hS _ _ ?_
  rintro _ ⟨i, rfl⟩ α
  apply freeYonedaHomEquiv.symm.injective
  simpa only [freeYonedaHomEquiv_symm_comp] using
    h _ ⟨⟨X, i⟩, rfl⟩ (freeYonedaHomEquiv.symm α)

lemma isSeparator {ι : Type w} {S : ι → A} (hS : IsSeparating (Set.range S))
    [HasCoproduct (fun (⟨X, i⟩ : C × ι) ↦ freeYoneda X (S i))]
    [HasZeroMorphisms A] :
    IsSeparator (∐ (fun (⟨X, i⟩ : C × ι) ↦ freeYoneda X (S i))) :=
  (isSeparating C hS).isSeparator_coproduct

variable (A) in
instance hasSeparator [HasSeparator A] [HasZeroMorphisms A] [HasCoproducts.{u} A] :
    HasSeparator (Cᵒᵖ ⥤ A) where
  hasSeparator := ⟨_, isSeparator C (S := fun (_ : Unit) ↦ separator A)
      (by simpa using isSeparator_separator A)⟩

end Presheaf

end CategoryTheory
```
