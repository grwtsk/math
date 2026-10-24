# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Normalized.Variant59363a6d0b6b02d971ff5d536268e0073eef82ac377e98e6a364cc48da2544bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef3f03e4395b737753b0c7bb6412cfed6c770d9a` · SHA-256 `54e43e737003332839ce2b33cc0d79c424c8f2edbf8eebab32915cda62c355fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HigherFacesVanishInclusionOfMooreComplexMap.Variant148a4e8ea2291cf440aa6b841d187ce2d727af3243649c8fff3c894463cbd671","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"148a4e8ea2291cf440aa6b841d187ce2d727af3243649c8fff3c894463cbd671","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HigherFacesVanishInclusionOfMooreComplexMap.Variant148a4e8ea2291cf440aa6b841d187ce2d727af3243649c8fff3c894463cbd671","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"148a4e8ea2291cf440aa6b841d187ce2d727af3243649c8fff3c894463cbd671","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/DoldKan/Normalized.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.DoldKan.FunctorN

/-!

# Comparison with the normalized Moore complex functor

In this file, we show that when the category `A` is abelian,
there is an isomorphism `N₁_iso_normalizedMooreComplex_comp_toKaroubi` between
the functor `N₁ : SimplicialObject A ⥤ Karoubi (ChainComplex A ℕ)`
defined in `FunctorN.lean` and the composition of
`normalizedMooreComplex A` with the inclusion
`ChainComplex A ℕ ⥤ Karoubi (ChainComplex A ℕ)`.

This isomorphism shall be used in `Equivalence.lean` in order to obtain
the Dold-Kan equivalence
`CategoryTheory.Abelian.DoldKan.equivalence : SimplicialObject A ≌ ChainComplex A ℕ`
with a functor (definitionally) equal to `normalizedMooreComplex A`.

(See `Equivalence.lean` for the general strategy of proof of the Dold-Kan equivalence.)

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HigherFacesVanishInclusionOfMooreComplexMap.Variant148a4e8ea2291cf440aa6b841d187ce2d727af3243649c8fff3c894463cbd671

@[expose] public section


open CategoryTheory CategoryTheory.Category CategoryTheory.Limits
  CategoryTheory.Subobject CategoryTheory.Idempotents

open scoped DoldKan

noncomputable section

namespace AlgebraicTopology

namespace DoldKan

universe v

variable {A : Type*} [Category* A] [Abelian A] {X : SimplicialObject A}

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
theorem HigherFacesVanish.inclusionOfMooreComplexMap (n : ℕ) :
    HigherFacesVanish (n + 1) ((inclusionOfMooreComplexMap X).f (n + 1)) := fun j _ => by
  dsimp [AlgebraicTopology.inclusionOfMooreComplexMap, NormalizedMooreComplex.objX]
  rw [← factorThru_arrow _ _ (finset_inf_arrow_factors Finset.univ _ j
    (by simp)), assoc, kernelSubobject_arrow_comp, comp_zero]

theorem factors_normalizedMooreComplex_PInfty (n : ℕ) :
    Subobject.Factors (NormalizedMooreComplex.objX X n) (PInfty.f n) := by
  rcases n with _ | n
  · apply top_factors
  · rw [PInfty_f, NormalizedMooreComplex.objX, finset_inf_factors]
    intro i _
    apply kernelSubobject_factors
    exact (HigherFacesVanish.of_P (n + 1) n) i le_add_self

set_option backward.isDefEq.respectTransparency false in
/-- `PInfty` factors through the normalized Moore complex -/
@[simps!]
def PInftyToNormalizedMooreComplex (X : SimplicialObject A) : K[X] ⟶ N[X] :=
  ChainComplex.ofHom
    (fun n => factorThru _ _ (factors_normalizedMooreComplex_PInfty n)) fun n => by
    rw [← cancel_mono (NormalizedMooreComplex.objX X n).arrow, assoc, assoc, factorThru_arrow,
      ← inclusionOfMooreComplexMap_f, NormalizedMooreComplex.obj_d, ChainComplex.of_d,
      ← normalizedMooreComplex_objD, ← (inclusionOfMooreComplexMap X).comm (n + 1) n,
      inclusionOfMooreComplexMap_f, factorThru_arrow_assoc, alternatingFaceMapComplex_obj_d,
      ← alternatingFaceMapComplex_obj_d]
    exact PInfty.comm (n + 1) n

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
@[reassoc (attr := simp)]
theorem PInftyToNormalizedMooreComplex_comp_inclusionOfMooreComplexMap (X : SimplicialObject A) :
    PInftyToNormalizedMooreComplex X ≫ inclusionOfMooreComplexMap X = PInfty := by cat_disch

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
@[reassoc (attr := simp)]
theorem PInftyToNormalizedMooreComplex_naturality {X Y : SimplicialObject A} (f : X ⟶ Y) :
    AlternatingFaceMapComplex.map f ≫ PInftyToNormalizedMooreComplex Y =
      PInftyToNormalizedMooreComplex X ≫ NormalizedMooreComplex.map f := by
  cat_disch

set_option backward.defeqAttrib.useBackward true in
@[reassoc (attr := simp)]
theorem PInfty_comp_PInftyToNormalizedMooreComplex (X : SimplicialObject A) :
    PInfty ≫ PInftyToNormalizedMooreComplex X = PInftyToNormalizedMooreComplex X := by cat_disch

@[reassoc (attr := simp)]
theorem inclusionOfMooreComplexMap_comp_PInfty (X : SimplicialObject A) :
    inclusionOfMooreComplexMap X ≫ PInfty = inclusionOfMooreComplexMap X := by
  ext (_ | n)
  · dsimp
    simp only [comp_id]
  · exact (HigherFacesVanish.inclusionOfMooreComplexMap n).comp_P_eq_self

set_option backward.defeqAttrib.useBackward true in
instance : Mono (inclusionOfMooreComplexMap X) :=
  ⟨fun _ _ hf => by
    ext n
    dsimp
    ext
    exact HomologicalComplex.congr_hom hf n⟩

set_option backward.isDefEq.respectTransparency false in
/-- `inclusionOfMooreComplexMap X` is a split mono. -/
def splitMonoInclusionOfMooreComplexMap (X : SimplicialObject A) :
    SplitMono (inclusionOfMooreComplexMap X) where
  retraction := PInftyToNormalizedMooreComplex X
  id := by
    simp only [← cancel_mono (inclusionOfMooreComplexMap X), assoc, id_comp,
      PInftyToNormalizedMooreComplex_comp_inclusionOfMooreComplexMap,
      inclusionOfMooreComplexMap_comp_PInfty]

variable (A)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- When the category `A` is abelian,
the functor `N₁ : SimplicialObject A ⥤ Karoubi (ChainComplex A ℕ)` defined
using `PInfty` identifies to the composition of the normalized Moore complex functor
and the inclusion in the Karoubi envelope. -/
def N₁_iso_normalizedMooreComplex_comp_toKaroubi : N₁ ≅ normalizedMooreComplex A ⋙ toKaroubi _ where
  hom :=
    { app := fun X => { f := PInftyToNormalizedMooreComplex X } }
  inv :=
    { app := fun X => { f := inclusionOfMooreComplexMap X } }
  hom_inv_id := by
    ext X : 3
    simp only [PInftyToNormalizedMooreComplex_comp_inclusionOfMooreComplexMap,
      NatTrans.comp_app, Karoubi.comp_f, N₁_obj_p, NatTrans.id_app, Karoubi.id_f]
  inv_hom_id := by
    ext X : 3
    rw [← cancel_mono (inclusionOfMooreComplexMap X)]
    simp only [NatTrans.comp_app, Karoubi.comp_f, assoc, NatTrans.id_app, Karoubi.id_f,
      PInftyToNormalizedMooreComplex_comp_inclusionOfMooreComplexMap,
      inclusionOfMooreComplexMap_comp_PInfty]
    dsimp only [Functor.comp_obj, toKaroubi]
    rw [id_comp]

end DoldKan

end AlgebraicTopology
```
