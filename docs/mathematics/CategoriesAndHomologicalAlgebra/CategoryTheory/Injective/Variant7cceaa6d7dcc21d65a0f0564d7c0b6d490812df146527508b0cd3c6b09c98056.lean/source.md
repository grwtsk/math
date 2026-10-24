# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Injective.Variant7cceaa6d7dcc21d65a0f0564d7c0b6d490812df146527508b0cd3c6b09c98056

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4de916f81a37ca9e1a261fb56f43fdeddc1f2415` · SHA-256 `79216839199db8bce5f599d8768f5575b44b8b2ce940f83e533f5ab73b20ee68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InjectiveIffPreservesEpimorphismsPreadditiveYonedaObj.Variant0a49f4e4b97f0f778f1d2cb5adb5dc47ee79bb1d7c57169a340bff8481807c1b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a49f4e4b97f0f778f1d2cb5adb5dc47ee79bb1d7c57169a340bff8481807c1b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.InjectiveIffPreservesEpimorphismsPreadditiveYonedaObj.Variant0a49f4e4b97f0f778f1d2cb5adb5dc47ee79bb1d7c57169a340bff8481807c1b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0a49f4e4b97f0f778f1d2cb5adb5dc47ee79bb1d7c57169a340bff8481807c1b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Preadditive/Yoneda/Injective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel, Kim Morrison
-/
import Mathlib.CategoryTheory.Preadditive.Yoneda.Basic
import Mathlib.CategoryTheory.Preadditive.Injective.Basic
import Mathlib.Algebra.Category.Grp.EpiMono
import Mathlib.Algebra.Category.ModuleCat.EpiMono

/-!
An object is injective iff the preadditive yoneda functor on it preserves epimorphisms.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InjectiveIffPreservesEpimorphismsPreadditiveYonedaObj.Variant0a49f4e4b97f0f778f1d2cb5adb5dc47ee79bb1d7c57169a340bff8481807c1b

universe v u

open Opposite

namespace CategoryTheory

variable {C : Type u} [Category.{v} C]

section Preadditive

variable [Preadditive C]

namespace Injective

theorem injective_iff_preservesEpimorphisms_preadditiveYoneda_obj (J : C) :
    Injective J ↔ (preadditiveYoneda.obj J).PreservesEpimorphisms := by
  rw [injective_iff_preservesEpimorphisms_yoneda_obj]
  refine
    ⟨fun h : (preadditiveYoneda.obj J ⋙ (forget AddCommGrp)).PreservesEpimorphisms => ?_, ?_⟩
  · exact
      Functor.preservesEpimorphisms_of_preserves_of_reflects (preadditiveYoneda.obj J) (forget _)
  · intro
    exact (inferInstance : (preadditiveYoneda.obj J ⋙ forget _).PreservesEpimorphisms)

theorem injective_iff_preservesEpimorphisms_preadditive_yoneda_obj' (J : C) :
    Injective J ↔ (preadditiveYonedaObj J).PreservesEpimorphisms := by
  rw [injective_iff_preservesEpimorphisms_yoneda_obj]
  refine ⟨fun h : (preadditiveYonedaObj J ⋙ (forget <| ModuleCat (End J))).PreservesEpimorphisms =>
    ?_, ?_⟩
  · exact
      Functor.preservesEpimorphisms_of_preserves_of_reflects (preadditiveYonedaObj J) (forget _)
  · intro
    exact (inferInstance : (preadditiveYonedaObj J ⋙ forget _).PreservesEpimorphisms)

end Injective

end Preadditive

end CategoryTheory
```
