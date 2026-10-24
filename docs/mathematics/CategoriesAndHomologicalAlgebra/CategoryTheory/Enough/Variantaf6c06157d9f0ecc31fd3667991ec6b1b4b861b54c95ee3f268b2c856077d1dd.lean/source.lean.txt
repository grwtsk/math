-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EffectivePresentation.Variant5e1f99972a331da5b10cf355f56b4e5a1cb3c8c35b9da3b21654a7ded9147364","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e1f99972a331da5b10cf355f56b4e5a1cb3c8c35b9da3b21654a7ded9147364","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EffectivePresentation.Variant5e1f99972a331da5b10cf355f56b4e5a1cb3c8c35b9da3b21654a7ded9147364","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"5e1f99972a331da5b10cf355f56b4e5a1cb3c8c35b9da3b21654a7ded9147364","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/EffectiveEpi/Enough.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.EffectiveEpi.Basic
/-!

# Effectively enough objects in the image of a functor

We define the class `F.EffectivelyEnough` on a functor `F : C ⥤ D` which says that for every object
in `D`, there exists an effective epi to it from an object in the image of `F`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EffectivePresentation.Variant5e1f99972a331da5b10cf355f56b4e5a1cb3c8c35b9da3b21654a7ded9147364

@[expose] public section

namespace CategoryTheory

variable {C D : Type*} [Category* C] [Category* D] (F : C ⥤ D)

namespace Functor

/--
An effective presentation of an object `X` with respect to a functor `F` is the data of an effective
epimorphism of the form `F.obj p ⟶ X`.
-/
structure EffectivePresentation (X : D) where
  /-- The object of `C` giving the source of the effective epi -/
  p : C
  /-- The morphism `F.obj p ⟶ X` -/
  f : F.obj p ⟶ X
  /-- `f` is an effective epi -/
  effectiveEpi : EffectiveEpi f

/--
`D` has *effectively enough objects* with respect to the functor `F` if every object has an
effective presentation.
-/
class EffectivelyEnough : Prop where
  /-- For every `X : D`, there exists an object `p` of `C` with an effective epi `F.obj p ⟶ X`. -/
  presentation : ∀ (X : D), Nonempty (F.EffectivePresentation X)

variable [F.EffectivelyEnough]

/--
`F.effectiveEpiOverObj X` provides an arbitrarily chosen object in the image of `F` equipped with an
effective epimorphism `F.effectiveEpiOver : F.effectiveEpiOverObj X ⟶ X`.
-/
noncomputable def effectiveEpiOverObj (X : D) : D :=
  F.obj (EffectivelyEnough.presentation (F := F) X).some.p

/--
The epimorphism `F.effectiveEpiOver : F.effectiveEpiOverObj X ⟶ X` from the arbitrarily chosen
object in the image of `F` over `X`.
-/
noncomputable def effectiveEpiOver (X : D) : F.effectiveEpiOverObj X ⟶ X :=
  (EffectivelyEnough.presentation X).some.f

instance (X : D) : EffectiveEpi (F.effectiveEpiOver X) :=
  (EffectivelyEnough.presentation X).some.effectiveEpi

/-- An effective presentation of an object with respect to an equivalence of categories. -/
def equivalenceEffectivePresentation (e : C ≌ D) (X : D) :
    EffectivePresentation e.functor X where
  p := e.inverse.obj X
  f := e.counit.app _
  effectiveEpi := inferInstance

instance [IsEquivalence F] : EffectivelyEnough F where
  presentation X := ⟨equivalenceEffectivePresentation F.asEquivalence X⟩

end Functor

end CategoryTheory
