# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheaf.Variant57f8d667a05f03236323b2a450866289aefe2a8a28ccd7586aa989a26e6f157d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8a6ad160fa7e6557864ed7da11c3467e96158dd` · SHA-256 `62e5427493f9d7f625d1990e5f3c1e37205530bcb4b572714c34962ff58a815a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FreeYoneda.Variantd0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FreeYoneda.Variantd0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Generator/Sheaf.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.CategoryTheory.Generator.Presheaf
import Mathlib.CategoryTheory.Sites.Sheafification
import Mathlib.CategoryTheory.Sites.Limits

/-!
# Generators in the category of sheaves

In this file, we show that if `J : GrothendieckTopology C` and `A` is a preadditive
category which has a separator (and suitable coproducts), then `Sheaf J A` has a separator.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FreeYoneda.Variantd0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab

universe w v' v u' u

namespace CategoryTheory

open Limits Opposite

namespace Sheaf

variable {C : Type u} [Category.{v} C]
  (J : GrothendieckTopology C) {A : Type u'} [Category.{v'} A]
  [HasCoproducts.{v} A] [HasWeakSheafify J A]

/-- Given `J : GrothendieckTopology C`, `X : C` and `M : A`, this is the associated
sheaf to the presheaf `Presheaf.freeYoneda X M`. -/
noncomputable def freeYoneda (X : C) (M : A) : Sheaf J A :=
  (presheafToSheaf J A).obj (Presheaf.freeYoneda X M)

variable {J} in
/-- The bijection `(Sheaf.freeYoneda J X M ⟶ F) ≃ (M ⟶ F.val.obj (op X))`
when `F : Sheaf J A`, `X : C` and `M : A`. -/
noncomputable def freeYonedaHomEquiv {X : C} {M : A} {F : Sheaf J A} :
    (freeYoneda J X M ⟶ F) ≃ (M ⟶ F.val.obj (op X)) :=
  ((sheafificationAdjunction J A).homEquiv _ _).trans Presheaf.freeYonedaHomEquiv

lemma isSeparating {ι : Type w} {S : ι → A} (hS : IsSeparating (Set.range S)) :
    IsSeparating (Set.range (fun (⟨X, i⟩ : C × ι) ↦ freeYoneda J X (S i))) := by
  intro F G f g hfg
  refine (sheafToPresheaf J A).map_injective (Presheaf.isSeparating C hS _ _ ?_)
  rintro _ ⟨⟨X, i⟩, rfl⟩ a
  apply ((sheafificationAdjunction _ _).homEquiv _ _).symm.injective
  simpa only [← Adjunction.homEquiv_naturality_right_symm] using
    hfg _ ⟨⟨X, i⟩, rfl⟩ (((sheafificationAdjunction _ _).homEquiv _ _).symm a)

lemma isSeparator {ι : Type w} {S : ι → A} (hS : IsSeparating (Set.range S))
    [HasCoproduct (fun (⟨X, i⟩ : C × ι) ↦ freeYoneda J X (S i))] [Preadditive A] :
    IsSeparator (∐ (fun (⟨X, i⟩ : C × ι) ↦ freeYoneda J X (S i))) :=
  (isSeparating J hS).isSeparator_coproduct

variable (A) in
instance hasSeparator [HasSeparator A] [Preadditive A] [HasCoproducts.{u} A] :
    HasSeparator (Sheaf J A) where
  hasSeparator := ⟨_, isSeparator J (S := fun (_ : Unit) ↦ separator A)
      (by simpa using isSeparator_separator A)⟩

end Sheaf

end CategoryTheory
```
