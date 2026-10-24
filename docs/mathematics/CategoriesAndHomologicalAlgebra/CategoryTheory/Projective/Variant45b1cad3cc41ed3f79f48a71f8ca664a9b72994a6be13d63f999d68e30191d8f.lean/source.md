# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Projective.Variant45b1cad3cc41ed3f79f48a71f8ca664a9b72994a6be13d63f999d68e30191d8f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77182c5732899e96433a9df5efe670541e9d3156` · SHA-256 `0ef35402e79b2f97df3256b8b71fd2bb531f02418a98722b01f932683b61b056`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProjectiveIffPreservesEpimorphismsPreadditiveCoyonedaObj.Varianta16d15a0ad11daec35d633f5c8f8f8c236994bfc8fd1f30c6b3462ca9847b376","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a16d15a0ad11daec35d633f5c8f8f8c236994bfc8fd1f30c6b3462ca9847b376","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ProjectiveIffPreservesEpimorphismsPreadditiveCoyonedaObj.Varianta16d15a0ad11daec35d633f5c8f8f8c236994bfc8fd1f30c6b3462ca9847b376","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a16d15a0ad11daec35d633f5c8f8f8c236994bfc8fd1f30c6b3462ca9847b376","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Preadditive/Yoneda/Projective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel, Kim Morrison
-/
import Mathlib.CategoryTheory.Preadditive.Yoneda.Basic
import Mathlib.CategoryTheory.Preadditive.Projective.Basic
import Mathlib.Algebra.Category.Grp.EpiMono
import Mathlib.Algebra.Category.ModuleCat.EpiMono

/-!
An object is projective iff the preadditive coyoneda functor on it preserves epimorphisms.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProjectiveIffPreservesEpimorphismsPreadditiveCoyonedaObj.Varianta16d15a0ad11daec35d633f5c8f8f8c236994bfc8fd1f30c6b3462ca9847b376

universe v u

open Opposite

namespace CategoryTheory

variable {C : Type u} [Category.{v} C]

section Preadditive

variable [Preadditive C]

namespace Projective

theorem projective_iff_preservesEpimorphisms_preadditiveCoyoneda_obj (P : C) :
    Projective P ↔ (preadditiveCoyoneda.obj (op P)).PreservesEpimorphisms := by
  rw [projective_iff_preservesEpimorphisms_coyoneda_obj]
  refine ⟨fun h : (preadditiveCoyoneda.obj (op P) ⋙
      forget AddCommGrp).PreservesEpimorphisms => ?_, ?_⟩
  · exact Functor.preservesEpimorphisms_of_preserves_of_reflects (preadditiveCoyoneda.obj (op P))
        (forget _)
  · intro
    exact (inferInstance : (preadditiveCoyoneda.obj (op P) ⋙ forget _).PreservesEpimorphisms)

theorem projective_iff_preservesEpimorphisms_preadditiveCoyonedaObj (P : C) :
    Projective P ↔ (preadditiveCoyonedaObj P).PreservesEpimorphisms := by
  rw [projective_iff_preservesEpimorphisms_coyoneda_obj]
  refine ⟨fun h : (preadditiveCoyonedaObj P ⋙ forget _).PreservesEpimorphisms => ?_, ?_⟩
  · exact Functor.preservesEpimorphisms_of_preserves_of_reflects (preadditiveCoyonedaObj P)
        (forget _)
  · intro
    exact (inferInstance : (preadditiveCoyonedaObj P ⋙ forget _).PreservesEpimorphisms)

end Projective

end Preadditive

end CategoryTheory
```
