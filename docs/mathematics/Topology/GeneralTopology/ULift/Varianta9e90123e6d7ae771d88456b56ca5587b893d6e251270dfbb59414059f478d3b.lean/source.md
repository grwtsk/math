# Complete source: GRWTSK.Topology.GeneralTopology.ULift.Varianta9e90123e6d7ae771d88456b56ca5587b893d6e251270dfbb59414059f478d3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9da0a33b637d29fe9042f1f94861ce0aaad9beee` · SHA-256 `cee69d5f43afd0c05169b72110ef4837e6ac4d09c834437283c26deae2ceefbd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.UliftFunctor.Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.UliftFunctor.Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc","mathematical_subject":"Topology.GeneralTopology","original_sha256":"944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Category/TopCat/ULift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Topology.Category.TopCat.Limits.Basic
public import Mathlib.Topology.Homeomorph.Lemmas
public import Mathlib.CategoryTheory.Limits.Preserves.Ulift

/-!
# Lifting topological spaces to a higher universe

In this file, we construct the functor `uliftFunctor.{v, u} : TopCat.{u} ⥤ TopCat.{max u v}`
which sends a topological space `X : Type u` to a homeomorphic space in `Type (max u v)`.

-/


namespace GRWTSK.Topology.GeneralTopology.UliftFunctor.Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc

@[expose] public section

universe w w' v u

open CategoryTheory

namespace TopCat

-- Note: no `@[simps!]` attribute here in order to get good simplification lemmas
-- like `uliftFunctorObjHomeo_naturality_apply` below. We should access
-- `uliftFunctor.obj X` via the homeomorphism `X.uliftFunctorObjHomeo`.
/-- The functor which sends a topological space in `Type u` to a homeomorphic
space in `Type (max u v)`. -/
def uliftFunctor : TopCat.{u} ⥤ TopCat.{max u v} where
  obj X := ↧(ULift.{v} X)
  map {X Y} f := ofHom ⟨ULift.map f, by fun_prop⟩

/-- Given `X : TopCat.{u}`, this is the homeomorphism `X ≃ₜ uliftFunctor.{v}.obj X`. -/
def uliftFunctorObjHomeo (X : TopCat.{u}) : X ≃ₜ uliftFunctor.{v}.obj X :=
  Homeomorph.ulift.symm

@[simp]
lemma uliftFunctorObjHomeo_naturality_apply {X Y : TopCat.{u}} (f : X ⟶ Y) (x : X) :
    uliftFunctor.{v}.map f (X.uliftFunctorObjHomeo x) =
      Y.uliftFunctorObjHomeo (f x) := rfl

@[simp]
lemma uliftFunctorObjHomeo_symm_naturality_apply {X Y : TopCat.{u}} (f : X ⟶ Y)
    (x : uliftFunctor.{v}.obj X) :
    Y.uliftFunctorObjHomeo.symm (uliftFunctor.{v}.map f x) =
      f (X.uliftFunctorObjHomeo.symm x) :=
  rfl

/-- The `ULift` functor on categories of topological spaces is compatible
with the one defined on categories of types. -/
@[simps!]
def uliftFunctorCompForgetIso : uliftFunctor.{v, u} ⋙ forget TopCat.{max u v} ≅
    forget TopCat.{u} ⋙ CategoryTheory.uliftFunctor.{v, u} := Iso.refl _

set_option backward.isDefEq.respectTransparency.types false in
/-- The `ULift` functor on categories of topological spaces is fully faithful. -/
def uliftFunctorFullyFaithful : uliftFunctor.{v, u}.FullyFaithful where
  preimage f := ofHom ⟨ULift.down ∘ f ∘ ULift.up, by fun_prop⟩

instance : uliftFunctor.{v, u}.Full :=
  uliftFunctorFullyFaithful.full

instance : uliftFunctor.{v, u}.Faithful :=
  uliftFunctorFullyFaithful.faithful

open Limits

set_option backward.isDefEq.respectTransparency.types false in
instance : PreservesLimitsOfSize.{w', w} uliftFunctor.{v, u} := by
  refine ⟨⟨fun {K} ↦ ⟨fun {c} hc ↦ ?_⟩⟩⟩
  rw [nonempty_isLimit_iff_eq_induced]
  · refine le_antisymm ?_ ?_
    · rw [le_iInf_iff]
      rintro j s ⟨t, ht, rfl⟩
      refine ⟨Homeomorph.ulift.symm ⁻¹' ((uliftFunctor.map (c.π.app j)) ⁻¹' t), ?_, rfl⟩
      apply Homeomorph.ulift.continuous_invFun.isOpen_preimage
      apply (uliftFunctor.map (c.π.app j)).hom.continuous_toFun.isOpen_preimage _ ht
    · change _ ≤ TopologicalSpace.induced _ _
      rw [← generateFrom_iUnion_isOpen, induced_of_isLimit _ hc, induced_iInf, le_iInf_iff]
      rintro i s ⟨-, ⟨t, ht, rfl⟩, rfl⟩
      refine .basic _ ?_
      rw [Set.mem_iUnion]
      exact ⟨i, ULift.down ⁻¹' t, Homeomorph.ulift.continuous_toFun.isOpen_preimage _ ht, rfl⟩
  · exact isLimitOfPreserves (forget TopCat ⋙ CategoryTheory.uliftFunctor) hc

set_option backward.isDefEq.respectTransparency false in
instance : PreservesColimitsOfSize.{w', w} uliftFunctor.{v, u} := by
  refine ⟨⟨fun {K} ↦ ⟨fun {c} hc ↦ ?_⟩⟩⟩
  rw [nonempty_isColimit_iff_eq_coinduced]
  · ext s
    rw [Homeomorph.ulift.symm.isOpenEmbedding.isOpen_iff_preimage_isOpen (by simp),
      isOpen_iff_of_isColimit _ hc, isOpen_iSup_iff]
    congr!
    rw [Homeomorph.ulift.isOpenEmbedding.isOpen_iff_preimage_isOpen (by simp)]
    rfl
  · exact isColimitOfPreserves (forget TopCat ⋙ CategoryTheory.uliftFunctor) hc

end TopCat
```
