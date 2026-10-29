-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Sequential.Variant06682711382330ed1659f2f92d6ab05a9520b22510d418f717bf3bb4c40d8b82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06682711382330ed1659f2f92d6ab05a9520b22510d418f717bf3bb4c40d8b82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Sequential.Variant06682711382330ed1659f2f92d6ab05a9520b22510d418f717bf3bb4c40d8b82","mathematical_subject":"Topology.GeneralTopology","original_sha256":"06682711382330ed1659f2f92d6ab05a9520b22510d418f717bf3bb4c40d8b82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Category/Sequential.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Elementwise
public import Mathlib.Topology.Sequences
public import Mathlib.Topology.Instances.Discrete
public import Mathlib.Topology.Category.TopCat.Basic
/-!

# The category of sequential topological spaces

We define the category `Sequential` of sequential topological spaces. We follow the usual template
for defining categories of topological spaces, by giving it the induced category structure from
`TopCat`.
-/


namespace GRWTSK.Topology.GeneralTopology.Sequential.Variant06682711382330ed1659f2f92d6ab05a9520b22510d418f717bf3bb4c40d8b82

@[expose] public section

open CategoryTheory

universe u

/-- The type sequential topological spaces. -/
structure Sequential where
  /-- The underlying topological space of an object of `Sequential`. -/
  toTop : TopCat.{u} -- TODO: turn this into `extends`
  /-- The underlying topological space is sequential. -/
  [is_sequential : SequentialSpace toTop]

namespace Sequential

instance : Inhabited Sequential.{u} :=
  ⟨{ toTop := ↧(ULift (Fin 37)) }⟩

instance : CoeSort Sequential Type* :=
  ⟨fun X => X.toTop⟩

attribute [instance] is_sequential

instance : Category.{u, u + 1} Sequential.{u} :=
  inferInstanceAs <| Category (InducedCategory _ toTop)

instance : ConcreteCategory.{u} Sequential.{u} (C(·, ·)) :=
  inferInstanceAs <| ConcreteCategory (InducedCategory _ toTop) _

variable (X : Type u) [TopologicalSpace X] [SequentialSpace X]

/-- Constructor for objects of the category `Sequential`. -/
abbrev of : Sequential.{u} where
  toTop := ↧X
  is_sequential := ‹_›

open Lean.PrettyPrinter.Delaborator in
/-- This prints `Sequential.of X` as `↧X`. -/
@[app_delab Sequential.of]
meta def delabOf : Delab := CategoryTheory.delabOf

/-- The fully faithful embedding of `Sequential` in `TopCat`. -/
@[simps!]
def sequentialToTop : Sequential.{u} ⥤ TopCat.{u} :=
  inducedFunctor _

/-- The functor to `TopCat` is indeed fully faithful. -/
def fullyFaithfulSequentialToTop : sequentialToTop.FullyFaithful :=
  fullyFaithfulInducedFunctor _

instance : sequentialToTop.{u}.Full :=
  inferInstanceAs (inducedFunctor _).Full

instance : sequentialToTop.{u}.Faithful :=
  inferInstanceAs (inducedFunctor _).Faithful

/-- Construct an isomorphism from a homeomorphism. -/
@[simps hom inv]
def isoOfHomeo {X Y : Sequential.{u}} (f : X ≃ₜ Y) : X ≅ Y where
  hom := InducedCategory.homMk (TopCat.ofHom ⟨f, f.continuous⟩)
  inv := InducedCategory.homMk (TopCat.ofHom ⟨f.symm, f.symm.continuous⟩)
  hom_inv_id := by
    ext x
    exact f.symm_apply_apply x
  inv_hom_id := by
    ext x
    exact f.apply_symm_apply x

/-- Construct a homeomorphism from an isomorphism. -/
@[simps]
def homeoOfIso {X Y : Sequential.{u}} (f : X ≅ Y) : X ≃ₜ Y where
  toFun := f.hom
  invFun := f.inv
  left_inv := f.hom_inv_id_apply
  right_inv := f.inv_hom_id_apply
  continuous_toFun := f.hom.hom.hom.continuous
  continuous_invFun := f.inv.hom.hom.continuous

/-- The equivalence between isomorphisms in `Sequential` and homeomorphisms
of topological spaces. -/
@[simps]
def isoEquivHomeo {X Y : Sequential.{u}} : (X ≅ Y) ≃ (X ≃ₜ Y) where
  toFun := homeoOfIso
  invFun := isoOfHomeo

end Sequential
