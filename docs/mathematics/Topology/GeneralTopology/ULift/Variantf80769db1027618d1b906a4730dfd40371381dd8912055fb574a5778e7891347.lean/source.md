# Complete source: GRWTSK.Topology.GeneralTopology.ULift.Variantf80769db1027618d1b906a4730dfd40371381dd8912055fb574a5778e7891347

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0953094043fd99fd7be1a6bf08581332b16c3e39` · SHA-256 `9594acc082a2cd2b3360fab90b10445c6094ef40cdd8f3384cb982c41d539c8d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.UliftFunctor.Variantd5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.UliftFunctor.Variantd5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281","mathematical_subject":"Topology.GeneralTopology","original_sha256":"d5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/TopCat/ULift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Topology.Category.TopCat.Basic
import Mathlib.Topology.Homeomorph.Lemmas

/-!
# Lifting topological spaces to a higher universe

In this file, we construct the functor `uliftFunctor.{v, u} : TopCat.{u} ⥤ TopCat.{max u v}`
which sends a topological space `X : Type u` to a homeomorphic space in `Type (max u v)`.

-/


namespace GRWTSK.Topology.GeneralTopology.UliftFunctor.Variantd5ccb712ac2bdf592e26cb2f62eaf06fe82d5177ddf2d06f763dfa9a8e202281

universe v u

open CategoryTheory

namespace TopCat

-- Note: no `@[simps!]` attribute here in order to get good simplification lemmas
-- like `uliftFunctorObjHomeo_naturality_apply` below. We should access
-- `uliftFunctor.obj X` via the homeomorphism `X.uliftFunctorObjHomeo`.
/-- The functor which sends a topological space in `Type u` to a homeomorphic
space in `Type (max u v)`. -/
def uliftFunctor : TopCat.{u} ⥤ TopCat.{max u v} where
  obj X := TopCat.of (ULift.{v} X)
  map {X Y} f := ofHom ⟨ULift.map f, by continuity⟩

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

/-- The `ULift` functor on categories of topological spaces is fully faithful. -/
def uliftFunctorFullyFaithful : uliftFunctor.{v, u}.FullyFaithful where
  preimage f := ofHom ⟨ULift.down ∘ f ∘ ULift.up, by continuity⟩

instance : uliftFunctor.{v, u}.Full :=
  uliftFunctorFullyFaithful.full

instance : uliftFunctor.{v, u}.Faithful :=
  uliftFunctorFullyFaithful.faithful

end TopCat
```
