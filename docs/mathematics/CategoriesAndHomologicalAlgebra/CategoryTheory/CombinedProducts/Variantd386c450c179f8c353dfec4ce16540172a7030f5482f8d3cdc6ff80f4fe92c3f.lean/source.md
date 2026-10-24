# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CombinedProducts.Variantd386c450c179f8c353dfec4ce16540172a7030f5482f8d3cdc6ff80f4fe92c3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `644d68abced4024effca5279937e7401496aec2a` · SHA-256 `de854fe6ae39f49b4e7a3a0d622c08ccee25afbf9a8e4248ead7ca93581561c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CombPairHoms.Varianta13d93b7ebac6bbed3e8ca66d97c1134fec15539e82a85f846eaf4c863841c02","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a13d93b7ebac6bbed3e8ca66d97c1134fec15539e82a85f846eaf4c863841c02","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CombPairHoms.Varianta13d93b7ebac6bbed3e8ca66d97c1134fec15539e82a85f846eaf4c863841c02","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a13d93b7ebac6bbed3e8ca66d97c1134fec15539e82a85f846eaf4c863841c02","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Shapes/CombinedProducts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
module

public import Mathlib.CategoryTheory.Limits.Shapes.Products
public import Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts.BinaryFan

/-!
# Constructors for combining (co)fans

We provide constructors for combining (co)fans and show their (co)limit properties.

## TODO

* Combine (co)fans on sigma types

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CombPairHoms.Varianta13d93b7ebac6bbed3e8ca66d97c1134fec15539e82a85f846eaf4c863841c02

@[expose] public section

universe u₁ u₂

namespace CategoryTheory

namespace Limits

variable {C : Type u₁} [Category.{u₂} C]

namespace Fan

variable {ι₁ ι₂ : Type*} {f₁ : ι₁ → C} {f₂ : ι₂ → C}
    (c₁ : Fan f₁) (c₂ : Fan f₂) (bc : BinaryFan c₁.pt c₂.pt)
    (h₁ : IsLimit c₁) (h₂ : IsLimit c₂) (h : IsLimit bc)

/-- For fans on maps `f₁ : ι₁ → C`, `f₂ : ι₂ → C` and a binary fan on their
cone points, construct one family of morphisms indexed by `ι₁ ⊕ ι₂` -/
@[simp]
abbrev combPairHoms : (i : ι₁ ⊕ ι₂) → bc.pt ⟶ Sum.elim f₁ f₂ i
  | .inl a => bc.fst ≫ c₁.proj a
  | .inr a => bc.snd ≫ c₂.proj a

variable {c₁ c₂ bc}

set_option backward.isDefEq.respectTransparency false in
/-- If `c₁` and `c₂` are limit fans and `bc` is a limit binary fan on their cone
points, then the fan constructed from `combPairHoms` is a limit cone. -/
def combPairIsLimit : IsLimit (Fan.mk bc.pt (combPairHoms c₁ c₂ bc)) :=
  Fan.IsLimit.mk _
    (fun s ↦ Fan.IsLimit.lift h <| fun i ↦ by
      cases i
      · exact Fan.IsLimit.lift h₁ (fun a ↦ s.proj (.inl a))
      · exact Fan.IsLimit.lift h₂ (fun a ↦ s.proj (.inr a)))
    (fun s w ↦ by
      cases w <;>
      · simp only [fan_mk_proj, combPairHoms]
        erw [← Category.assoc, h.fac]
        simp only [pair_obj_left, mk_π_app, IsLimit.fac])
    (fun s m hm ↦ Fan.IsLimit.hom_ext h _ _ <| fun w ↦ by
      cases w
      · refine Fan.IsLimit.hom_ext h₁ _ _ (fun a ↦ by aesop)
      · refine Fan.IsLimit.hom_ext h₂ _ _ (fun a ↦ by aesop))

end Fan

namespace Cofan

variable {ι₁ ι₂ : Type*} {f₁ : ι₁ → C} {f₂ : ι₂ → C}
    (c₁ : Cofan f₁) (c₂ : Cofan f₂) (bc : BinaryCofan c₁.pt c₂.pt)
    (h₁ : IsColimit c₁) (h₂ : IsColimit c₂) (h : IsColimit bc)

/-- For cofans on maps `f₁ : ι₁ → C`, `f₂ : ι₂ → C` and a binary cofan on their
cocone points, construct one family of morphisms indexed by `ι₁ ⊕ ι₂` -/
@[simp]
abbrev combPairHoms : (i : ι₁ ⊕ ι₂) → Sum.elim f₁ f₂ i ⟶ bc.pt
  | .inl a => c₁.inj a ≫ bc.inl
  | .inr a => c₂.inj a ≫ bc.inr

variable {c₁ c₂ bc}

set_option backward.isDefEq.respectTransparency false in
/-- If `c₁` and `c₂` are colimit cofans and `bc` is a colimit binary cofan on their cocone
points, then the cofan constructed from `combPairHoms` is a colimit cocone. -/
def combPairIsColimit : IsColimit (Cofan.mk bc.pt (combPairHoms c₁ c₂ bc)) :=
  Cofan.IsColimit.mk _
    (fun s ↦ Cofan.IsColimit.desc h <| fun i ↦ by
      cases i
      · exact Cofan.IsColimit.desc h₁ (fun a ↦ s.inj (.inl a))
      · exact Cofan.IsColimit.desc h₂ (fun a ↦ s.inj (.inr a)))
    (fun s w ↦ by
      cases w <;>
      · simp only [cofan_mk_inj, combPairHoms, Category.assoc]
        erw [h.fac]
        simp only [Cofan.mk_ι_app, Cofan.IsColimit.fac])
    (fun s m hm ↦ Cofan.IsColimit.hom_ext h _ _ <| fun w ↦ by
      cases w
      · refine Cofan.IsColimit.hom_ext h₁ _ _ (fun a ↦ by aesop)
      · refine Cofan.IsColimit.hom_ext h₂ _ _ (fun a ↦ by aesop))

end Cofan

end Limits

end CategoryTheory
```
