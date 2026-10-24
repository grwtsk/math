# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CombinedProducts.Variantb223251e3bd4ba0cf394a5694328c21f10ca454dc534479753cf6197fe3e3d7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35f714cf6690cc223b0543e5da33e5fcec5574f6` · SHA-256 `0fdec757a40d0daf56aa5109b05e9a53ac2286873ae185c29f8226b4970463fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CombPairHoms.Variant4c25c2b5bef33d7956b93054f63b09e804bf2f5b4807cec7456e11f75aa4f29d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4c25c2b5bef33d7956b93054f63b09e804bf2f5b4807cec7456e11f75aa4f29d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CombPairHoms.Variant4c25c2b5bef33d7956b93054f63b09e804bf2f5b4807cec7456e11f75aa4f29d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"4c25c2b5bef33d7956b93054f63b09e804bf2f5b4807cec7456e11f75aa4f29d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Shapes/CombinedProducts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
import Mathlib.CategoryTheory.Limits.Shapes.Products
import Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts

/-!
# Constructors for combining (co)fans

We provide constructors for combining (co)fans and show their (co)limit properties.

## TODO

* Combine (co)fans on sigma types

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CombPairHoms.Variant4c25c2b5bef33d7956b93054f63b09e804bf2f5b4807cec7456e11f75aa4f29d

universe u₁ u₂

namespace CategoryTheory

namespace Limits

variable {C : Type u₁} [Category.{u₂} C]

namespace Fan

variable {ι₁ ι₂ : Type*} {X : C} {f₁ : ι₁ → C} {f₂ : ι₂ → C}
    (c₁ : Fan f₁) (c₂ : Fan f₂) (bc : BinaryFan c₁.pt c₂.pt)
    (h₁ : IsLimit c₁) (h₂ : IsLimit c₂) (h : IsLimit bc)

/-- For fans on maps `f₁ : ι₁ → C`, `f₂ : ι₂ → C` and a binary fan on their
cone points, construct one family of morphisms indexed by `ι₁ ⊕ ι₂` -/
@[simp]
abbrev combPairHoms : (i : ι₁ ⊕ ι₂) → bc.pt ⟶ Sum.elim f₁ f₂ i
  | .inl a => bc.fst ≫ c₁.proj a
  | .inr a => bc.snd ≫ c₂.proj a

variable {c₁ c₂ bc}

/-- If `c₁` and `c₂` are limit fans and `bc` is a limit binary fan on their cone
points, then the fan constructed from `combPairHoms` is a limit cone. -/
def combPairIsLimit : IsLimit (Fan.mk bc.pt (combPairHoms c₁ c₂ bc)) :=
  mkFanLimit _
    (fun s ↦ Fan.IsLimit.desc h <| fun i ↦ by
      cases i
      · exact Fan.IsLimit.desc h₁ (fun a ↦ s.proj (.inl a))
      · exact Fan.IsLimit.desc h₂ (fun a ↦ s.proj (.inr a)))
    (fun s w ↦ by
      cases w <;>
      · simp only [fan_mk_proj, combPairHoms]
        erw [← Category.assoc, h.fac]
        simp only [pair_obj_left, mk_pt, mk_π_app, IsLimit.fac])
    (fun s m hm ↦ Fan.IsLimit.hom_ext h _ _ <| fun w ↦ by
      cases w
      · refine Fan.IsLimit.hom_ext h₁ _ _ (fun a ↦ by aesop)
      · refine Fan.IsLimit.hom_ext h₂ _ _ (fun a ↦ by aesop))

end Fan

namespace Cofan

variable {ι₁ ι₂ : Type*} {X : C} {f₁ : ι₁ → C} {f₂ : ι₂ → C}
    (c₁ : Cofan f₁) (c₂ : Cofan f₂) (bc : BinaryCofan c₁.pt c₂.pt)
    (h₁ : IsColimit c₁) (h₂ : IsColimit c₂) (h : IsColimit bc)

/-- For cofans on maps `f₁ : ι₁ → C`, `f₂ : ι₂ → C` and a binary cofan on their
cocone points, construct one family of morphisms indexed by `ι₁ ⊕ ι₂` -/
@[simp]
abbrev combPairHoms : (i : ι₁ ⊕ ι₂) → Sum.elim f₁ f₂ i ⟶ bc.pt
  | .inl a => c₁.inj a ≫ bc.inl
  | .inr a => c₂.inj a ≫ bc.inr

variable {c₁ c₂ bc}

/-- If `c₁` and `c₂` are colimit cofans and `bc` is a colimit binary cofan on their cocone
points, then the cofan constructed from `combPairHoms` is a colimit cocone. -/
def combPairIsColimit : IsColimit (Cofan.mk bc.pt (combPairHoms c₁ c₂ bc)) :=
  mkCofanColimit _
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
