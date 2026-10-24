-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProjectiveIffPreservesEpimorphismsPreadditiveCoyonedaObj.Variant3e87591441ac0395a04065ff4479b230e22358132dddd051c652428e208393f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e87591441ac0395a04065ff4479b230e22358132dddd051c652428e208393f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ProjectiveIffPreservesEpimorphismsPreadditiveCoyonedaObj.Variant3e87591441ac0395a04065ff4479b230e22358132dddd051c652428e208393f1","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"3e87591441ac0395a04065ff4479b230e22358132dddd051c652428e208393f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Preadditive/Yoneda/Projective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel, Kim Morrison
-/
module

public import Mathlib.CategoryTheory.Preadditive.Yoneda.Basic
public import Mathlib.CategoryTheory.Preadditive.Projective.Basic
public import Mathlib.Algebra.Category.Grp.EpiMono
public import Mathlib.Algebra.Category.ModuleCat.EpiMono

/-!
# Projective objects

An object is projective iff the preadditive coyoneda functor on it preserves epimorphisms.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProjectiveIffPreservesEpimorphismsPreadditiveCoyonedaObj.Variant3e87591441ac0395a04065ff4479b230e22358132dddd051c652428e208393f1

public section


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
      forget AddCommGrpCat).PreservesEpimorphisms => ?_, ?_⟩
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
