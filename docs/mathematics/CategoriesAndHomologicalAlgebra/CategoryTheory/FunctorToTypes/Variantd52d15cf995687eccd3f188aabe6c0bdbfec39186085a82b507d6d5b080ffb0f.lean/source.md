# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorToTypes.Variantd52d15cf995687eccd3f188aabe6c0bdbfec39186085a82b507d6d5b080ffb0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89113beaab523124893c789a7f0e589040ae8559` · SHA-256 `427da20ec4ac3328d89d7f05100d8a286dd99f768d185ac141e0d1bdc5c0d7a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.JointlySurjective.Variant8019314bc77921b0ccac672296c8011d25ba6d1def9cbd43957a01d66c2ecf1e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8019314bc77921b0ccac672296c8011d25ba6d1def9cbd43957a01d66c2ecf1e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.JointlySurjective.Variant8019314bc77921b0ccac672296c8011d25ba6d1def9cbd43957a01d66c2ecf1e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"8019314bc77921b0ccac672296c8011d25ba6d1def9cbd43957a01d66c2ecf1e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/FunctorToTypes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic
import Mathlib.CategoryTheory.Limits.Types.Colimits

/-!
# Concrete description of (co)limits in functor categories

Some of the concrete descriptions of (co)limits in `Type v` extend to (co)limits in the functor
category `K ⥤ Type v`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.JointlySurjective.Variant8019314bc77921b0ccac672296c8011d25ba6d1def9cbd43957a01d66c2ecf1e

namespace CategoryTheory.FunctorToTypes

open CategoryTheory.Limits

universe w v₁ v₂ u₁ u₂

variable {J : Type u₁} [Category.{v₁} J] {K : Type u₂} [Category.{v₂} K]
variable (F : J ⥤ K ⥤ Type w)

theorem jointly_surjective (k : K) {t : Cocone F} (h : IsColimit t) (x : t.pt.obj k)
    [∀ k, HasColimit (F.flip.obj k)] : ∃ j y, x = (t.ι.app j).app k y := by
  let hev := isColimitOfPreserves ((evaluation _ _).obj k) h
  obtain ⟨j, y, rfl⟩ := Types.jointly_surjective _ hev x
  exact ⟨j, y, by simp⟩

theorem jointly_surjective' [∀ k, HasColimit (F.flip.obj k)] (k : K) (x : (colimit F).obj k) :
    ∃ j y, x = (colimit.ι F j).app k y :=
  jointly_surjective _ _ (colimit.isColimit _) x

theorem colimit.map_ι_apply [HasColimit F] (j : J) {k k' : K} {f : k ⟶ k'} {x} :
    (colimit F).map f ((colimit.ι F j).app _ x) = (colimit.ι F j).app _ ((F.obj j).map f x) :=
  congrFun ((colimit.ι F j).naturality _).symm _

end CategoryTheory.FunctorToTypes
```
