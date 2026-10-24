# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomCongr.Variantf178aff9b5c2da98df29caacdb2bef513ce2e08d212d05d8d983f8a1c94a9d5a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ed643711e8deba2c5c513d1d5224a77c4992fd2` · SHA-256 `595962ebaebb919f46eafad37b8810527b55a467538928d07c5982efcbb18e10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EHomCongr.Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EHomCongr.Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Enriched/HomCongr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Nick Ward. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nick Ward
-/
import Mathlib.CategoryTheory.Enriched.Ordinary.Basic

/-!
# Congruence of enriched homs

Recall that when `C` is both a category and a `V`-enriched category, we say it
is an `EnrichedOrdinaryCategory` if it comes equipped with a sufficiently
compatible equivalence between morphisms `X ⟶ Y` in `C` and morphisms
`𝟙_ V ⟶ (X ⟶[V] Y)` in `V`.

In such a `V`-enriched ordinary category `C`, isomorphisms in `C` induce
isomorphisms between hom-objects in `V`. We define this isomorphism in
`CategoryTheory.Iso.eHomCongr` and prove that it respects composition in `C`.

The treatment here parallels that for unenriched categories in
`Mathlib/CategoryTheory/HomCongr.lean` and that for sorts in
`Mathlib/Logic/Equiv/Defs.lean` (cf. `Equiv.arrowCongr`). Note, however, that
they construct equivalences between `Type`s and `Sort`s, respectively, while
in this file we construct isomorphisms between objects in `V`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EHomCongr.Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5

universe v' v u u'

namespace CategoryTheory
namespace Iso

open Category MonoidalCategory

variable (V : Type u') [Category.{v'} V] [MonoidalCategory V]
  {C : Type u} [Category.{v} C] [EnrichedOrdinaryCategory V C]

/-- Given isomorphisms `α : X ≅ X₁` and `β : Y ≅ Y₁` in `C`, we can construct
an isomorphism between `V` objects `X ⟶[V] Y` and `X₁ ⟶[V] Y₁`. -/
@[simps]
def eHomCongr {X Y X₁ Y₁ : C} (α : X ≅ X₁) (β : Y ≅ Y₁) :
    (X ⟶[V] Y) ≅ (X₁ ⟶[V] Y₁) where
  hom := eHomWhiskerRight V α.inv Y ≫ eHomWhiskerLeft V X₁ β.hom
  inv := eHomWhiskerRight V α.hom Y₁ ≫ eHomWhiskerLeft V X β.inv
  hom_inv_id := by
    rw [← eHom_whisker_exchange]
    slice_lhs 2 3 => rw [← eHomWhiskerRight_comp]
    simp [← eHomWhiskerLeft_comp]
  inv_hom_id := by
    rw [← eHom_whisker_exchange]
    slice_lhs 2 3 => rw [← eHomWhiskerRight_comp]
    simp [← eHomWhiskerLeft_comp]

lemma eHomCongr_refl (X Y : C) :
    eHomCongr V (Iso.refl X) (Iso.refl Y) = Iso.refl (X ⟶[V] Y) := by aesop

lemma eHomCongr_trans {X₁ Y₁ X₂ Y₂ X₃ Y₃ : C} (α₁ : X₁ ≅ X₂) (β₁ : Y₁ ≅ Y₂)
    (α₂ : X₂ ≅ X₃) (β₂ : Y₂ ≅ Y₃) :
    eHomCongr V (α₁ ≪≫ α₂) (β₁ ≪≫ β₂) =
      eHomCongr V α₁ β₁ ≪≫ eHomCongr V α₂ β₂ := by
  ext; simp [eHom_whisker_exchange_assoc]

lemma eHomCongr_symm {X Y X₁ Y₁ : C} (α : X ≅ X₁) (β : Y ≅ Y₁) :
    (eHomCongr V α β).symm = eHomCongr V α.symm β.symm := rfl

/-- `eHomCongr` respects composition of morphisms. Recall that for any
composable pair of arrows `f : X ⟶ Y` and `g : Y ⟶ Z` in `C`, the composite
`f ≫ g` in `C` defines a morphism `𝟙_ V ⟶ (X ⟶[V] Z)` in `V`. Composing with
the isomorphism `eHomCongr V α γ` yields a morphism in `V` that can be factored
through the enriched composition map as shown:
`𝟙_ V ⟶ 𝟙_ V ⊗ 𝟙_ V ⟶ (X₁ ⟶[V] Y₁) ⊗ (Y₁ ⟶[V] Z₁) ⟶ (X₁ ⟶[V] Z₁)`. -/
@[reassoc]
lemma eHomCongr_comp {X Y Z X₁ Y₁ Z₁ : C} (α : X ≅ X₁) (β : Y ≅ Y₁) (γ : Z ≅ Z₁)
    (f : X ⟶ Y) (g : Y ⟶ Z) :
    eHomEquiv V (f ≫ g) ≫ (eHomCongr V α γ).hom =
      (λ_ _).inv ≫ (eHomEquiv V f ≫ (eHomCongr V α β).hom) ▷ _ ≫
        _ ◁ (eHomEquiv V g ≫ (eHomCongr V β γ).hom) ≫ eComp V X₁ Y₁ Z₁ := by
  simp only [eHomCongr, MonoidalCategory.whiskerRight_id, assoc,
    MonoidalCategory.whiskerLeft_comp]
  rw [rightUnitor_inv_naturality_assoc, rightUnitor_inv_naturality_assoc,
    rightUnitor_inv_naturality_assoc, hom_inv_id_assoc, ← whisker_exchange_assoc,
    ← whisker_exchange_assoc, ← eComp_eHomWhiskerLeft, eHom_whisker_cancel_assoc,
    ← eComp_eHomWhiskerRight_assoc, ← tensorHom_def_assoc,
    ← eHomEquiv_comp_assoc]

/-- The inverse map defined by `eHomCongr` respects composition of morphisms. -/
@[reassoc]
lemma eHomCongr_inv_comp {X Y Z X₁ Y₁ Z₁ : C} (α : X ≅ X₁) (β : Y ≅ Y₁)
    (γ : Z ≅ Z₁) (f : X₁ ⟶ Y₁) (g : Y₁ ⟶ Z₁) :
    eHomEquiv V (f ≫ g) ≫ (eHomCongr V α γ).inv =
      (λ_ _).inv ≫ (eHomEquiv V f ≫ (eHomCongr V α β).inv) ▷ _ ≫
        _ ◁ (eHomEquiv V g ≫ (eHomCongr V β γ).inv) ≫ eComp V X Y Z :=
  eHomCongr_comp V α.symm β.symm γ.symm f g

end Iso
end CategoryTheory
```
