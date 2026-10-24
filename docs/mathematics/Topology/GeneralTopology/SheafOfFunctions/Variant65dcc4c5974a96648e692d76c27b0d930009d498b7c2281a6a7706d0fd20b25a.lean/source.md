# Complete source: GRWTSK.Topology.GeneralTopology.SheafOfFunctions.Variant65dcc4c5974a96648e692d76c27b0d930009d498b7c2281a6a7706d0fd20b25a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b12b2922ac1ab5e6d65db74180bfa7c6c14a305e` · SHA-256 `99c7d24ea1e5a977f86630b12e310645e4aad96e69d80d9754a674cf144cb7c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ToTypesIsSheaf.Variant74ba0d9eb7a4c8d16ef063f247fb1ddb002f6fa220a16bcb5965a360c96ff176","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"74ba0d9eb7a4c8d16ef063f247fb1ddb002f6fa220a16bcb5965a360c96ff176","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ToTypesIsSheaf.Variant74ba0d9eb7a4c8d16ef063f247fb1ddb002f6fa220a16bcb5965a360c96ff176","mathematical_subject":"Topology.GeneralTopology","original_sha256":"74ba0d9eb7a4c8d16ef063f247fb1ddb002f6fa220a16bcb5965a360c96ff176","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Sheaves/SheafOfFunctions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Kim Morrison
-/
module

public import Mathlib.Topology.Sheaves.PresheafOfFunctions
public import Mathlib.Topology.Sheaves.SheafCondition.UniqueGluing

/-!
# Sheaf conditions for presheaves of (continuous) functions.

We show that
* `Top.Presheaf.toType_isSheaf`: not-necessarily-continuous functions into a type form a sheaf
* `Top.Presheaf.toTypes_isSheaf`: in fact, these may be dependent functions into a type family

For
* `Top.sheafToTop`: continuous functions into a topological space form a sheaf

please see `Mathlib/Topology/Sheaves/LocalPredicate.lean`, where we set up a general framework
for constructing sub(pre)sheaves of the sheaf of dependent functions.

## Future work
Obviously there's more to do:
* sections of a fiber bundle
* various classes of smooth and structure-preserving functions
* functions into spaces with algebraic structure, which the sections inherit
-/


namespace GRWTSK.Topology.GeneralTopology.ToTypesIsSheaf.Variant74ba0d9eb7a4c8d16ef063f247fb1ddb002f6fa220a16bcb5965a360c96ff176

@[expose] public section


open CategoryTheory TopologicalSpace Opens

noncomputable section

variable (X : TopCat)

open TopCat

namespace TopCat.Presheaf

/-- We show that the presheaf of functions to a type `T`
(no continuity assumptions, just plain functions)
form a sheaf.

In fact, the proof is identical when we do this for dependent functions to a type family `T`,
so we do the more general case.
-/
theorem toTypes_isSheaf (T : X → Type*) : (presheafToTypes X T).IsSheaf :=
  isSheaf_of_isSheafUniqueGluing_types _ fun ι U sf hsf => by
  -- We use the sheaf condition in terms of unique gluing
  -- U is a family of open sets, indexed by `ι` and `sf` is a compatible family of sections.
  -- In the informal comments below, I'll just write `U` to represent the union.
    -- Our first goal is to define a function "lifted" to all of `U`.
    -- We do this one point at a time. Using the axiom of choice, we can pick for each
    -- `x : ↑(iSup U)` an index `i : ι` such that `x` lies in `U i`
    choose index index_spec using fun x : ↑(iSup U) => Opens.mem_iSup.mp x.2
    -- Using this data, we can glue our functions together to a single section
    let s : ∀ x : ↑(iSup U), T x := fun x => sf (index x) ⟨x.1, index_spec x⟩
    refine ⟨s, ?_, ?_⟩
    · intro i
      funext x
      -- Now we need to verify that this lifted function restricts correctly to each set `U i`.
      -- Of course, the difficulty is that at any given point `x ∈ U i`,
      -- we may have used the axiom of choice to pick a different `j` with `x ∈ U j`
      -- when defining the function.
      -- Thus we'll need to use the fact that the restrictions are compatible.
      exact congr_fun (hsf (index ⟨x, _⟩) i) ⟨x, ⟨index_spec ⟨x.1, _⟩, x.2⟩⟩
    · -- Now we just need to check that the lift we picked was the only possible one.
      -- So we suppose we had some other gluing `t` of our sections
      intro t ht
      -- and observe that we need to check that it agrees with our choice
      -- for each `x ∈ ↑(iSup U)`.
      funext x
      exact congr_fun (ht (index x)) ⟨x.1, index_spec x⟩

-- We verify that the non-dependent version is an immediate consequence:
/-- The presheaf of not-necessarily-continuous functions to
a target type `T` satisfies the sheaf condition.
-/
theorem toType_isSheaf (T : Type*) : (presheafToType X T).IsSheaf :=
  toTypes_isSheaf X fun _ => T

end TopCat.Presheaf

namespace TopCat

/-- The sheaf of not-necessarily-continuous functions on `X` with values in type family
`T : X → Type u`.
-/
def sheafToTypes (T : X → Type*) : Sheaf (Type _) X :=
  ⟨presheafToTypes X T, Presheaf.toTypes_isSheaf _ _⟩

/-- The sheaf of not-necessarily-continuous functions on `X` with values in a type `T`.
-/
def sheafToType (T : Type*) : Sheaf (Type _) X :=
  ⟨presheafToType X T, Presheaf.toType_isSheaf _ _⟩

end TopCat
```
