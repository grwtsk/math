# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtensiveColimits.Variant84d9c0dc2feb73f69e49f610d8fe9e9747fdde38555fff215326e4c36bebb86d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8aa5077d767120dcf7f565669e31abd777c7391` · SHA-256 `14e871a24ea8bd5243b69ce0b020682d5a1e44c950268027a7612dbfad342ed3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsSheafPointwiseColimit.Varianta232c710b0d1c95d1c2e2c872413657450cc00296499a004feb9b014d0e3c71e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a232c710b0d1c95d1c2e2c872413657450cc00296499a004feb9b014d0e3c71e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsSheafPointwiseColimit.Varianta232c710b0d1c95d1c2e2c872413657450cc00296499a004feb9b014d0e3c71e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a232c710b0d1c95d1c2e2c872413657450cc00296499a004feb9b014d0e3c71e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Sites/Coherent/ExtensiveColimits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Preadditive.Biproducts
import Mathlib.CategoryTheory.Sites.Coherent.ExtensiveSheaves
import Mathlib.CategoryTheory.Sites.Limits
/-!

# Colimits in categories of extensive sheaves

This file proves that `J`-shaped colimits of `A`-valued sheaves for the extensive topology are
computed objectwise if `colim : J ⥤ A ⥤ A` preserves finite products.

This holds for all shapes `J` if `A` is a preadditive category.

This can also easily be applied to filtered `J` in the case when `A` is a category of sets, and
eventually to sifted `J` once that API is developed.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsSheafPointwiseColimit.Varianta232c710b0d1c95d1c2e2c872413657450cc00296499a004feb9b014d0e3c71e

namespace CategoryTheory

open CategoryTheory Limits Sheaf GrothendieckTopology Opposite

section

variable {A C J : Type*} [Category A] [Category C] [Category J]
  [FinitaryExtensive C] [HasColimitsOfShape J A]

lemma isSheaf_pointwiseColimit [PreservesFiniteProducts (colim (J := J) (C := A))]
    (G : J ⥤ Sheaf (extensiveTopology C) A) :
    Presheaf.IsSheaf (extensiveTopology C) (pointwiseCocone (G ⋙ sheafToPresheaf _ A)).pt := by
  rw [Presheaf.isSheaf_iff_preservesFiniteProducts]
  dsimp only [pointwiseCocone_pt]
  apply (config := { allowSynthFailures := true } ) comp_preservesFiniteProducts
  have : ∀ (i : J), PreservesFiniteProducts ((G ⋙ sheafToPresheaf _ A).obj i) := fun i ↦ by
    rw [← Presheaf.isSheaf_iff_preservesFiniteProducts]
    exact Sheaf.cond _
  exact ⟨fun _ ↦ preservesLimitsOfShape_of_evaluation _ _ fun d ↦
    inferInstanceAs (PreservesLimitsOfShape _ ((G ⋙ sheafToPresheaf _ _).obj d))⟩

instance [Preadditive A] : PreservesFiniteProducts (colim (J := J) (C := A)) where
  preserves _ := by
    apply (config := { allowSynthFailures := true })
      preservesProductsOfShape_of_preservesBiproductsOfShape
    apply preservesBiproductsOfShape_of_preservesCoproductsOfShape

instance [PreservesFiniteProducts (colim (J := J) (C := A))] :
    PreservesColimitsOfShape J (sheafToPresheaf (extensiveTopology C) A) where
  preservesColimit {G} := by
    suffices CreatesColimit G (sheafToPresheaf (extensiveTopology C) A) from inferInstance
    refine createsColimitOfIsSheaf _ (fun c hc ↦ ?_)
    let i : c.pt ≅ (G ⋙ sheafToPresheaf _ _).flip ⋙ colim :=
      hc.coconePointUniqueUpToIso (pointwiseIsColimit _)
    rw [Presheaf.isSheaf_of_iso_iff i]
    exact isSheaf_pointwiseColimit _

instance [Preadditive A] [HasFiniteColimits A] :
    PreservesFiniteColimits (sheafToPresheaf (extensiveTopology C) A) where
  preservesFiniteColimits _ := inferInstance

end

end CategoryTheory
```
