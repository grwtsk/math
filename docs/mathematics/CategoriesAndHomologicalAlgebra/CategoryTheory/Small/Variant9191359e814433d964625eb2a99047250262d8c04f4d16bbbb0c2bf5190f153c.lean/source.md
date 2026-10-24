# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Small.Variant9191359e814433d964625eb2a99047250262d8c04f4d16bbbb0c2bf5190f153c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84f3805b1bac1907684b794eef420b7047998948` · SHA-256 `a0164bec9c66b6b75f2aeb05993d8ab33a440ae3466bc15d447aaa93050c711a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EquivSmall.Variant661f80b214f81a03649c427f594eb1860e5f84b268bc98cf56758e4d5cc5dcbc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"661f80b214f81a03649c427f594eb1860e5f84b268bc98cf56758e4d5cc5dcbc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EquivSmall.Variant661f80b214f81a03649c427f594eb1860e5f84b268bc98cf56758e4d5cc5dcbc","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"661f80b214f81a03649c427f594eb1860e5f84b268bc98cf56758e4d5cc5dcbc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Condensed/Light/Small.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.Condensed.Light.Module

/-!

# Equivalence of light condensed objects with sheaves on a small site
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EquivSmall.Variant661f80b214f81a03649c427f594eb1860e5f84b268bc98cf56758e4d5cc5dcbc

@[expose] public section

universe u v w

open CategoryTheory Sheaf Functor

namespace LightCondensed

variable {C : Type w} [Category.{v} C]

variable (C) in
/--
The equivalence of categories from light condensed objects to sheaves on a small site
equivalent to light profinite sets.
-/
noncomputable abbrev equivSmall :
    LightCondensed.{u} C ≌
      Sheaf ((equivSmallModel.{u} LightProfinite.{u}).inverse.inducedTopology
        (coherentTopology LightProfinite.{u})) C :=
  (equivSmallModel LightProfinite).sheafCongr _ _ _

instance (X Y : LightCondensed.{u} C) : Small.{max u v} (X ⟶ Y) where
  equiv_small :=
    ⟨(equivSmall C).functor.obj X ⟶ (equivSmall C).functor.obj Y,
      ⟨(equivSmall C).fullyFaithfulFunctor.homEquiv⟩⟩

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/--
Sheafifying is preserved under conjugating with the equivalence between light condensed objects
and sheaves on a small site.
-/
noncomputable def equivSmallSheafificationIso
    [HasWeakSheafify (coherentTopology LightProfinite.{u}) C]
    [HasWeakSheafify ((equivSmallModel.{u} LightProfinite.{u}).inverse.inducedTopology
      (coherentTopology LightProfinite.{u})) C] :
    (equivSmallModel LightProfinite.{u}).op.congrLeft.inverse ⋙ presheafToSheaf _ _ ⋙
      (equivSmall C).functor ≅
    presheafToSheaf _ _ :=
  (conjugateIsoEquiv (sheafificationAdjunction _ _)
    (((equivSmallModel LightProfinite.{u}).op.congrLeft.symm.toAdjunction.comp
    (sheafificationAdjunction _ _)).comp (equivSmall C).toAdjunction)).symm <|
  NatIso.ofComponents (fun X ↦ ((equivSmallModel LightProfinite).op.invFunIdAssoc _).symm)

variable (R : Type u) [CommRing R]

set_option backward.defeqAttrib.useBackward true in
attribute [local simp] LightCondensed.forget in
set_option backward.isDefEq.respectTransparency false in
/--
Taking the free condensed module is preserved under conjugating with the equivalence between
light condensed objects and sheaves on a small site.
-/
noncomputable def equivSmallFreeIso :
    (equivSmall (Type u)).inverse ⋙ free R ⋙ (equivSmall (ModuleCat R)).functor ≅
    Sheaf.composeAndSheafify _ (ModuleCat.free R) :=
  conjugateIsoEquiv (Sheaf.adjunction _ (ModuleCat.adj R))
    (((equivSmall _).symm.toAdjunction.comp
      (freeForgetAdjunction R)).comp (equivSmall _).toAdjunction) |>.symm <| by
  refine NatIso.ofComponents
    (fun X ↦ (fullyFaithfulSheafToPresheaf _ _).preimageIso
      (isoWhiskerRight ((equivSmallModel LightProfinite).op.invFunIdAssoc _).symm _ ≪≫
        (Functor.associator _ _ _)))

end LightCondensed
```
