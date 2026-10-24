# Complete source: GRWTSK.Topology.GeneralTopology.TopCatAdjunction.Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `652423528df7373a1e38d0ef5579443851ccae88` · SHA-256 `0835a715f3ee88bcba6a4f8fdc0aacc8cd548a337636c27230847ba1ed6d53bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.CondensedSetCoinducingCoprod.Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.CondensedSetCoinducingCoprod.Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e","mathematical_subject":"Topology.GeneralTopology","original_sha256":"da7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Condensed/TopCatAdjunction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.Condensed.TopComparison
public import Mathlib.Topology.Category.CompactlyGenerated
/-!

# The adjunction between condensed sets and topological spaces

This file defines the functor `condensedSetToTopCat : CondensedSet.{u} ⥤ TopCat.{u + 1}` which is
left adjoint to `topCatToCondensedSet : TopCat.{u + 1} ⥤ CondensedSet.{u}`. We prove that the counit
is bijective (but not in general an isomorphism) and conclude that the right adjoint is faithful.

The counit is an isomorphism for compactly generated spaces, and we conclude that the functor
`topCatToCondensedSet` is fully faithful when restricted to compactly generated spaces.
-/


namespace GRWTSK.Topology.GeneralTopology.CondensedSetCoinducingCoprod.Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e

@[expose] public section

universe u

open Condensed CondensedSet CategoryTheory CompHaus

variable (X : CondensedSet.{u})

set_option backward.privateInPublic true in
/-- Auxiliary definition to define the topology on `X(*)` for a condensed set `X`. -/
private def CondensedSet.coinducingCoprod :
    (Σ (i : (S : CompHaus.{u}) × X.obj.obj ⟨S⟩), i.fst) → X.obj.obj ⟨of PUnit⟩ :=
  fun ⟨⟨_, i⟩, s⟩ ↦ X.obj.map ((of PUnit.{u + 1}).const s).op i

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- Let `X` be a condensed set. We define a topology on `X(*)` as the quotient topology of
all the maps from compact Hausdorff `S` spaces to `X(*)`, corresponding to elements of `X(S)`.
In other words, the topology coinduced by the map `CondensedSet.coinducingCoprod` above. -/
local instance : TopologicalSpace (X.obj.obj ⟨↧PUnit⟩) :=
  TopologicalSpace.coinduced (coinducingCoprod X) inferInstance

/-- The object part of the functor `CondensedSet ⥤ TopCat` -/
abbrev CondensedSet.toTopCat : TopCat.{u + 1} := ↧(X.obj.obj ⟨of PUnit⟩)

namespace CondensedSet

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
lemma continuous_coinducingCoprod {S : CompHaus.{u}} (x : X.obj.obj ⟨S⟩) :
    Continuous fun a ↦ (X.coinducingCoprod ⟨⟨S, x⟩, a⟩) := by
  suffices ∀ (i : (T : CompHaus.{u}) × X.obj.obj ⟨T⟩),
      Continuous (fun (a : i.fst) ↦ X.coinducingCoprod ⟨i, a⟩) from this ⟨_, _⟩
  rw [← continuous_sigma_iff]
  apply continuous_coinduced_rng

variable {X} {Y : CondensedSet} (f : X ⟶ Y)

/-- The map part of the functor `CondensedSet ⥤ TopCat` -/
@[simps!]
def toTopCatMap : X.toTopCat ⟶ Y.toTopCat :=
  TopCat.ofHom
  { toFun := f.hom.app ⟨of PUnit⟩
    continuous_toFun := by
      rw [continuous_coinduced_dom]
      apply continuous_sigma
      intro ⟨S, x⟩
      simp only [Function.comp_apply, coinducingCoprod]
      rw [show (fun (a : S) ↦
          f.hom.app ⟨of PUnit⟩ (X.obj.map ((of PUnit.{u + 1}).const a).op x)) = _
        from funext fun a ↦ NatTrans.naturality_apply f.hom ((of PUnit.{u + 1}).const a).op x]
      exact continuous_coinducingCoprod Y _ }

end CondensedSet

/-- The functor `CondensedSet ⥤ TopCat` -/
@[simps]
def condensedSetToTopCat : CondensedSet.{u} ⥤ TopCat.{u + 1} where
  obj X := X.toTopCat
  map f := toTopCatMap f

namespace CondensedSet

set_option backward.isDefEq.respectTransparency.types false in
/-- The counit of the adjunction `condensedSetToTopCat ⊣ topCatToCondensedSet` -/
@[simps!]
noncomputable def topCatAdjunctionCounit (X : TopCat.{u + 1}) : X.toCondensedSet.toTopCat ⟶ X :=
  TopCat.ofHom
  { toFun x := x.1 PUnit.unit
    continuous_toFun := by
      rw [continuous_coinduced_dom]
      continuity }

/-- The counit of the adjunction `condensedSetToTopCat ⊣ topCatToCondensedSet` is always bijective,
but not an isomorphism in general (the inverse isn't continuous unless `X` is compactly generated).
-/
noncomputable def topCatAdjunctionCounitEquiv (X : TopCat.{u + 1}) :
    X.toCondensedSet.toTopCat ≃ X where
  toFun := topCatAdjunctionCounit X
  invFun x := ContinuousMap.const _ x

lemma topCatAdjunctionCounit_bijective (X : TopCat.{u + 1}) :
    Function.Bijective (topCatAdjunctionCounit X) :=
  (topCatAdjunctionCounitEquiv X).bijective

set_option backward.isDefEq.respectTransparency.types false in
/-- The unit of the adjunction `condensedSetToTopCat ⊣ topCatToCondensedSet` -/
@[simps hom_app]
noncomputable def topCatAdjunctionUnit (X : CondensedSet.{u}) : X ⟶ X.toTopCat.toCondensedSet where
  hom := {
    app S := ↾fun x ↦ {
      toFun := fun s ↦ X.obj.map ((of PUnit.{u + 1}).const s).op x
      continuous_toFun := by
        suffices ∀ (i : (T : CompHaus.{u}) × X.obj.obj ⟨T⟩),
          Continuous (fun (a : i.fst) ↦ X.coinducingCoprod ⟨i, a⟩) from this ⟨_, _⟩
        rw [← continuous_sigma_iff]
        apply continuous_coinduced_rng }
    naturality := fun _ _ _ ↦ by
      ext
      simp only [TypeCat.Fun.toFun_apply,
        comp_apply, TopCat.toSheafCompHausLike_obj_map, ConcreteCategory.hom_ofHom,
        TypeCat.Fun.coe_mk, ← Functor.map_comp_apply]
      rfl }

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The adjunction `condensedSetToTopCat ⊣ topCatToCondensedSet` -/
noncomputable def topCatAdjunction : condensedSetToTopCat.{u} ⊣ topCatToCondensedSet where
  unit.app := topCatAdjunctionUnit
  counit.app := topCatAdjunctionCounit
  left_triangle_components Y := by
    ext
    change Y.obj.map (𝟙 _) _ = _
    simp

instance (X : TopCat) : Epi (topCatAdjunction.counit.app X) := by
  rw [TopCat.epi_iff_surjective]
  exact (topCatAdjunctionCounit_bijective _).2

instance : topCatToCondensedSet.Faithful := topCatAdjunction.faithful_R_of_epi_counit_app

open CompactlyGenerated

instance (X : CondensedSet.{u}) : UCompactlyGeneratedSpace.{u, u + 1} X.toTopCat := by
  apply uCompactlyGeneratedSpace_of_continuous_maps
  intro Y _ f h
  rw [continuous_coinduced_dom, continuous_sigma_iff]
  exact fun ⟨S, s⟩ ↦ h S ⟨_, continuous_coinducingCoprod X _⟩

instance (X : CondensedSet.{u}) :
    UCompactlyGeneratedSpace.{u, u + 1} (condensedSetToTopCat.obj X) :=
  inferInstanceAs (UCompactlyGeneratedSpace.{u, u + 1} X.toTopCat)

/-- The functor from condensed sets to topological spaces lands in compactly generated spaces. -/
def condensedSetToCompactlyGenerated : CondensedSet.{u} ⥤ CompactlyGenerated.{u, u + 1} where
  obj X := ↧(condensedSetToTopCat.obj X)
  map f := InducedCategory.homMk (toTopCatMap f)

/--
The functor from topological spaces to condensed sets restricted to compactly generated spaces.
-/
noncomputable def compactlyGeneratedToCondensedSet :
    CompactlyGenerated.{u, u + 1} ⥤ CondensedSet.{u} :=
  compactlyGeneratedToTop ⋙ topCatToCondensedSet


/--
The adjunction `condensedSetToTopCat ⊣ topCatToCondensedSet` restricted to compactly generated
spaces.
-/
noncomputable def compactlyGeneratedAdjunction :
    condensedSetToCompactlyGenerated ⊣ compactlyGeneratedToCondensedSet :=
  topCatAdjunction.restrictFullyFaithful (iC := 𝟭 _) (iD := compactlyGeneratedToTop)
    (Functor.FullyFaithful.id _) fullyFaithfulCompactlyGeneratedToTop
    (Iso.refl _) (Iso.refl _)

/--
The counit of the adjunction `condensedSetToCompactlyGenerated ⊣ compactlyGeneratedToCondensedSet`
is a homeomorphism.
-/
noncomputable def compactlyGeneratedAdjunctionCounitHomeo
    (X : TopCat.{u + 1}) [UCompactlyGeneratedSpace.{u} X] :
    X.toCondensedSet.toTopCat ≃ₜ X where
  toEquiv := topCatAdjunctionCounitEquiv X
  continuous_invFun := by
    apply continuous_from_uCompactlyGeneratedSpace
    exact fun _ _ ↦ continuous_coinducingCoprod X.toCondensedSet _

/--
The counit of the adjunction `condensedSetToCompactlyGenerated ⊣ compactlyGeneratedToCondensedSet`
is an isomorphism.
-/
noncomputable def compactlyGeneratedAdjunctionCounitIso (X : CompactlyGenerated.{u, u + 1}) :
    condensedSetToCompactlyGenerated.obj (compactlyGeneratedToCondensedSet.obj X) ≅ X :=
  isoOfHomeo (compactlyGeneratedAdjunctionCounitHomeo X.toTop)

instance : IsIso compactlyGeneratedAdjunction.counit := by
  rw [NatTrans.isIso_iff_isIso_app]
  intro X
  exact inferInstanceAs (IsIso (compactlyGeneratedAdjunctionCounitIso X).hom)

/--
The functor from topological spaces to condensed sets restricted to compactly generated spaces
is fully faithful.
-/
noncomputable def fullyFaithfulCompactlyGeneratedToCondensedSet :
    compactlyGeneratedToCondensedSet.FullyFaithful :=
  compactlyGeneratedAdjunction.fullyFaithfulROfIsIsoCounit

end CondensedSet
```
