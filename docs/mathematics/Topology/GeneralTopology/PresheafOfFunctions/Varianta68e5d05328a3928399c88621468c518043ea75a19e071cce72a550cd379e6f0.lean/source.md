# Complete source: GRWTSK.Topology.GeneralTopology.PresheafOfFunctions.Varianta68e5d05328a3928399c88621468c518043ea75a19e071cce72a550cd379e6f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `771f84bfb13f93f124f10576564a36c8a7ede005` · SHA-256 `3f76e1b904c0820fa0a378928aa28d0faab9f386f4da40d38fce821fd7a563dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.PresheafToTypes.Variant61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.PresheafToTypes.Variant61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304","mathematical_subject":"Topology.GeneralTopology","original_sha256":"61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Sheaves/PresheafOfFunctions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Topology.Sheaves.Presheaf
/-!
# Presheaves of functions

We construct some simple examples of presheaves of functions on a topological space.
* `presheafToTypes X T`, where `T : X → Type`,
  is the presheaf of dependently-typed (not-necessarily continuous) functions
* `presheafToType X T`, where `T : Type`,
  is the presheaf of (not-necessarily-continuous) functions to a fixed target type `T`
* `presheafToTop X T`, where `T : TopCat`,
  is the presheaf of continuous functions into a topological space `T`
* `presheafToTopCommRing X R`, where `R : TopCommRingCat`
  is the presheaf valued in `CommRing` of functions functions into a topological ring `R`
* as an example of the previous construction,
  `presheafToTopCommRing X (TopCommRingCat.of ℂ)`
  is the presheaf of rings of continuous complex-valued functions on `X`.
-/


namespace GRWTSK.Topology.GeneralTopology.PresheafToTypes.Variant61f230263cbcd2f6cf455b227b994418b11e590397021cca8f7713a557ab2304

open CategoryTheory TopologicalSpace Opposite

namespace TopCat

variable (X : TopCat)

/-- The presheaf of dependently typed functions on `X`, with fibres given by a type family `T`.
There is no requirement that the functions are continuous, here.
-/
def presheafToTypes (T : X → Type*) : X.Presheaf (Type _) where
  obj U := ∀ x : U.unop, T x
  map {_ V} i g := fun x : V.unop => g (i.unop x)
  map_id U := by
    ext g
    rfl
  map_comp {_ _ _} _ _ := rfl

@[simp]
theorem presheafToTypes_obj {T : X → Type*} {U : (Opens X)ᵒᵖ} :
    (presheafToTypes X T).obj U = ∀ x : U.unop, T x :=
  rfl

@[simp]
theorem presheafToTypes_map {T : X → Type*} {U V : (Opens X)ᵒᵖ} {i : U ⟶ V} {f} :
    (presheafToTypes X T).map i f = fun x => f (i.unop x) :=
  rfl

-- We don't just define this in terms of `presheafToTypes`,
-- as it's helpful later to see (at a syntactic level) that `(presheafToType X T).obj U`
-- is a non-dependent function.
-- We don't use `@[simps]` to generate the projection lemmas here,
-- as it turns out to be useful to have `presheafToType_map`
-- written as an equality of functions (rather than being applied to some argument).
/-- The presheaf of functions on `X` with values in a type `T`.
There is no requirement that the functions are continuous, here.
-/
def presheafToType (T : Type*) : X.Presheaf (Type _) where
  obj U := U.unop → T
  map {_ _} i g := g ∘ i.unop
  map_id U := by
    ext g
    rfl
  map_comp {_ _ _} _ _ := rfl

@[simp]
theorem presheafToType_obj {T : Type*} {U : (Opens X)ᵒᵖ} :
    (presheafToType X T).obj U = (U.unop → T) :=
  rfl

@[simp]
theorem presheafToType_map {T : Type*} {U V : (Opens X)ᵒᵖ} {i : U ⟶ V} {f} :
    (presheafToType X T).map i f = f ∘ i.unop :=
  rfl

/-- The presheaf of continuous functions on `X` with values in fixed target topological space
`T`. -/
def presheafToTop (T : TopCat) : X.Presheaf (Type _) :=
  (Opens.toTopCat X).op ⋙ yoneda.obj T

@[simp]
theorem presheafToTop_obj (T : TopCat) (U : (Opens X)ᵒᵖ) :
    (presheafToTop X T).obj U = ((Opens.toTopCat X).obj (unop U) ⟶ T) :=
  rfl

end TopCat
```
