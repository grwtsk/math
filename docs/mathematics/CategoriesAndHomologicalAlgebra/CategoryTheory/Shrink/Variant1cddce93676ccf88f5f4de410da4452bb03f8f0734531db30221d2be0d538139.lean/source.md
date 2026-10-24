# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Shrink.Variant1cddce93676ccf88f5f4de410da4452bb03f8f0734531db30221d2be0d538139

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a89996ccf8cea8ccf2997510a4000d2caec1ec3` · SHA-256 `63b51aa14630cded6536ee8bcf9f5f3585aebf613b5265c6e5e4205b6978fb22`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ShrinkFunctor.Variantaf71eedf39c56bd905324c1cfe903dcbb2def3232dfd9ecd6e8b99f649e5102e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af71eedf39c56bd905324c1cfe903dcbb2def3232dfd9ecd6e8b99f649e5102e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ShrinkFunctor.Variantaf71eedf39c56bd905324c1cfe903dcbb2def3232dfd9ecd6e8b99f649e5102e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"af71eedf39c56bd905324c1cfe903dcbb2def3232dfd9ecd6e8b99f649e5102e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Sites/Sieves/Shrink.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta, Edward Ayers
-/
module

public import Mathlib.CategoryTheory.ShrinkYoneda
public import Mathlib.CategoryTheory.Sites.Sieves.Presheaf
public import Mathlib.CategoryTheory.Subfunctor.Basic

/-!
# Shrinking sieve functors

The presheaf associated to a sieve naturally takes values in the universe containing the hom-sets
of the ambient category. For a locally small category, the Yoneda shrinking construction allows
this presheaf to be represented in a chosen smaller universe.

This file defines `Sieve.shrinkFunctor`, the universe-shrunk presheaf associated to a sieve, and
constructs its comparison isomorphism with the lifted sieve presheaf. It also records the
compatibility of this isomorphism with the inclusion into the corresponding Yoneda presheaf.

## Tags

sieve, presheaf, universe
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ShrinkFunctor.Variantaf71eedf39c56bd905324c1cfe903dcbb2def3232dfd9ecd6e8b99f649e5102e

@[expose] public section


universe w w' v₁ u₁

namespace CategoryTheory

open Category

variable {C : Type u₁} [Category.{v₁} C] {X : C}

namespace Sieve

variable {S : Sieve X}

/-- If `C` is `w`-locally small, any sieve induces a subfunctor of `shrinkYoneda.{w}.obj X`. -/
@[simps, pp_with_univ]
def shrinkFunctor [LocallySmall.{w} C] {X : C} (S : Sieve X) :
    Subfunctor (shrinkYoneda.{w}.obj X) where
  obj Y := { f | S (shrinkYonedaObjObjEquiv f) }
  map {Y Z} g f hf := by
    simpa [shrinkYonedaObjObjEquiv_obj_map] using S.downward_closed hf _

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
variable (S) in
/-- `Sieve.shrinkFunctor` is compatible with universe lifting. -/
noncomputable
def shrinkFunctorUliftFunctorIso [LocallySmall.{w} C] [LocallySmall.{max w' w} C] :
    (shrinkFunctor.{w} S).toFunctor ⋙ CategoryTheory.uliftFunctor.{w', w} ≅
      (shrinkFunctor.{max w' w} S).toFunctor :=
  NatIso.ofComponents
    (fun X ↦ Equiv.toIso
      (.trans Equiv.ulift
        (Equiv.subtypeEquiv (shrinkYonedaObjObjEquiv.trans shrinkYonedaObjObjEquiv.symm)
        fun a ↦ by simp)))
    fun {U V} f ↦ by
      dsimp
      ext
      dsimp [Equiv.subtypeEquiv_apply]
      rw [shrinkYonedaObjObjEquiv_obj_map, shrinkYonedaObjObjEquiv_symm_comp]
      simp

@[reassoc]
lemma shrinkFunctorUliftFunctorIso_inv_ι [LocallySmall.{w} C] [LocallySmall.{max w' w} C] :
    (shrinkFunctorUliftFunctorIso.{w, w'} S).inv ≫
      Functor.whiskerRight (shrinkFunctor.{w} _).ι CategoryTheory.uliftFunctor.{w', w} =
    (shrinkFunctor.{max w' w} S).ι ≫
      shrinkYonedaUliftFunctorIso.{w, w'}.inv.app X :=
  rfl

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
variable (S) in
/-- Shrinking does nothing for the same universe level. -/
@[simps! hom_app inv_app]
noncomputable def shrinkFunctorIsoFunctor : (shrinkFunctor.{v₁} S).toFunctor ≅ S.functor :=
  NatIso.ofComponents (fun Y ↦ Equiv.toIso <| Equiv.subtypeEquiv shrinkYonedaObjObjEquiv (by simp))
    fun {U V} f ↦ by
      dsimp [Equiv.subtypeEquiv_apply]
      ext
      simp [shrinkYonedaObjObjEquiv_obj_map]

end Sieve

end CategoryTheory
```
