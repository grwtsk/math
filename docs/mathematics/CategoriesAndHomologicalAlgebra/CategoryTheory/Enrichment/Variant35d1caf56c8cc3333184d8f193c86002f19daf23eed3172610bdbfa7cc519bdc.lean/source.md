# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Enrichment.Variant35d1caf56c8cc3333184d8f193c86002f19daf23eed3172610bdbfa7cc519bdc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e2eee213a45902a09163881f3c26b50723f3467` · SHA-256 `440a93131e8eb76d602b8486c40d208b02ce876e9527627544a236117091a00b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EnrichedCategorySelfHom.Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EnrichedCategorySelfHom.Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Closed/Enrichment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Daniel Carranza. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Daniel Carranza, Joël Riou
-/
import Mathlib.CategoryTheory.Enriched.Ordinary.Basic
import Mathlib.CategoryTheory.Closed.Monoidal

/-!
# A closed monoidal category is enriched in itself

From the data of a closed monoidal category `C`, we define a `C`-category structure for `C`.
where the hom-object is given by the internal hom (coming from the closed structure).

We use `scoped instance` to avoid potential issues where `C` may also have
a `C`-category structure coming from another source (e.g. the type of simplicial sets
`SSet.{v}` has an instance of `EnrichedCategory SSet.{v}` as a category of simplicial objects;
see `Mathlib/AlgebraicTopology/SimplicialCategory/SimplicialObject.lean`).

All structure field values are defined in `Mathlib/CategoryTheory/Closed/Monoidal.lean`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EnrichedCategorySelfHom.Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078

universe u v

namespace CategoryTheory

open Category MonoidalCategory

namespace MonoidalClosed

variable (C : Type u) [Category.{v} C] [MonoidalCategory C] [MonoidalClosed C]

/-- For `C` closed monoidal, build an instance of `C` as a `C`-category -/
scoped instance enrichedCategorySelf : EnrichedCategory C C where
  Hom x := (ihom x).obj
  id _ := id _
  comp _ _ _ := comp _ _ _
  assoc _ _ _ _ := assoc _ _ _ _

section

variable {C}

lemma enrichedCategorySelf_hom (X Y : C) :
    EnrichedCategory.Hom X Y = (ihom X).obj Y := rfl

lemma enrichedCategorySelf_id (X : C) :
    eId C X = id X := rfl

lemma enrichedCategorySelf_comp (X Y Z : C) :
    eComp C X Y Z = comp X Y Z := rfl

end

/-- A monoidal closed category is an enriched ordinary category over itself. -/
scoped instance enrichedOrdinaryCategorySelf : EnrichedOrdinaryCategory C C where
  homEquiv := curryHomEquiv'
  homEquiv_id X := curry'_id X
  homEquiv_comp := curry'_comp

lemma enrichedOrdinaryCategorySelf_eHomWhiskerLeft (X : C) {Y₁ Y₂ : C} (g : Y₁ ⟶ Y₂) :
    eHomWhiskerLeft C X g = (ihom X).map g := by
  change (ρ_ _).inv ≫ _ ◁ curry' g ≫ comp X Y₁ Y₂ = _
  rw [whiskerLeft_curry'_comp, Iso.inv_hom_id_assoc]

lemma enrichedOrdinaryCategorySelf_eHomWhiskerRight {X₁ X₂ : C} (f : X₁ ⟶ X₂) (Y : C) :
    eHomWhiskerRight C f Y = (pre f).app Y := by
  change (λ_ _).inv ≫ curry' f ▷ _ ≫ comp X₁ X₂ Y = _
  rw [curry'_whiskerRight_comp, Iso.inv_hom_id_assoc]

lemma enrichedOrdinaryCategorySelf_homEquiv {X Y : C} (f : X ⟶ Y) :
    eHomEquiv C f = curry' f := rfl

lemma enrichedOrdinaryCategorySelf_homEquiv_symm {X Y : C} (g : 𝟙_ C ⟶ (ihom X).obj Y):
    (eHomEquiv C).symm g = uncurry' g := rfl

end MonoidalClosed

end CategoryTheory
```
