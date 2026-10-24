# Complete source: GRWTSK.Topology.GeneralTopology.Induced.Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be561ceadc28b663fcaf5103e172ff8fcc113998` · SHA-256 `f888ab41687c058e15dbd895e1e78a5d3b8627a1bf40090f2054d3f06899d69a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsCoherentWith.Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsCoherentWith.Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5","mathematical_subject":"Topology.GeneralTopology","original_sha256":"34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Defs/Induced.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Jeremy Avigad
-/
import Mathlib.Data.Set.Lattice.Image
import Mathlib.Topology.Basic
/-!
# Induced and coinduced topologies

In this file we define the induced and coinduced topologies,
as well as topology inducing maps, topological embeddings, and quotient maps.

## Main definitions

* `TopologicalSpace.induced`: given `f : X → Y` and a topology on `Y`,
  the induced topology on `X` is the collection of sets
  that are preimages of some open set in `Y`.
  This is the coarsest topology that makes `f` continuous.

* `TopologicalSpace.coinduced`: given `f : X → Y` and a topology on `X`,
  the coinduced topology on `Y` is defined such that
  `s : Set Y` is open if the preimage of `s` is open.
  This is the finest topology that makes `f` continuous.

* `IsInducing`: a map `f : X → Y` is called *inducing*,
  if the topology on the domain is equal to the induced topology.

* `IsEmbedding`: a map `f : X → Y` is an *embedding*,
  if it is a topology inducing map and it is injective.

* `IsOpenEmbedding`: a map `f : X → Y` is an *open embedding*,
  if it is an embedding and its range is open.
  An open embedding is an open map.

* `IsClosedEmbedding`: a map `f : X → Y` is an *open embedding*,
  if it is an embedding and its range is open.
  An open embedding is an open map.

* `IsQuotientMap`: a map `f : X → Y` is a *quotient map*,
  if it is surjective
  and the topology on the codomain is equal to the coinduced topology.
-/


namespace GRWTSK.Topology.GeneralTopology.IsCoherentWith.Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5

open Set
open scoped Topology

namespace TopologicalSpace

variable {X Y : Type*}

/-- Given `f : X → Y` and a topology on `Y`,
  the induced topology on `X` is the collection of sets
  that are preimages of some open set in `Y`.
  This is the coarsest topology that makes `f` continuous. -/
def induced (f : X → Y) (t : TopologicalSpace Y) : TopologicalSpace X where
  IsOpen s := ∃ t, IsOpen t ∧ f ⁻¹' t = s
  isOpen_univ := ⟨univ, isOpen_univ, preimage_univ⟩
  isOpen_inter := by
    rintro s₁ s₂ ⟨s'₁, hs₁, rfl⟩ ⟨s'₂, hs₂, rfl⟩
    exact ⟨s'₁ ∩ s'₂, hs₁.inter hs₂, preimage_inter⟩
  isOpen_sUnion S h := by
    choose! g hgo hfg using h
    refine ⟨⋃₀ (g '' S), isOpen_sUnion <| forall_mem_image.2 hgo, ?_⟩
    rw [preimage_sUnion, biUnion_image, sUnion_eq_biUnion]
    exact iUnion₂_congr hfg

instance _root_.GRWTSK.Topology.GeneralTopology.IsCoherentWith.Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5.instTopologicalSpaceSubtype {p : X → Prop} [t : TopologicalSpace X] :
    TopologicalSpace (Subtype p) :=
  induced (↑) t

/-- Given `f : X → Y` and a topology on `X`,
  the coinduced topology on `Y` is defined such that
  `s : Set Y` is open if the preimage of `s` is open.
  This is the finest topology that makes `f` continuous. -/
def coinduced (f : X → Y) (t : TopologicalSpace X) : TopologicalSpace Y where
  IsOpen s := IsOpen (f ⁻¹' s)
  isOpen_univ := t.isOpen_univ
  isOpen_inter _ _ h₁ h₂ := h₁.inter h₂
  isOpen_sUnion s h := by simpa only [preimage_sUnion] using isOpen_biUnion h

end TopologicalSpace

namespace Topology
variable {X Y : Type*} [tX : TopologicalSpace X] [tY : TopologicalSpace Y]

/-- We say that restrictions of the topology on `X` to sets from a family `S`
generates the original topology,
if either of the following equivalent conditions hold:

- a set which is relatively open in each `s ∈ S` is open;
- a set which is relatively closed in each `s ∈ S` is closed;
- for any topological space `Y`, a function `f : X → Y` is continuous
  provided that it is continuous on each `s ∈ S`.
-/
structure IsCoherentWith (S : Set (Set X)) : Prop where
  isOpen_of_forall_induced (u : Set X) : (∀ s ∈ S, IsOpen ((↑) ⁻¹' u : Set s)) → IsOpen u

@[deprecated (since := "2025-04-08")] alias RestrictGenTopology := Topology.IsCoherentWith

/-- A function `f : X → Y` between topological spaces is inducing if the topology on `X` is induced
by the topology on `Y` through `f`, meaning that a set `s : Set X` is open iff it is the preimage
under `f` of some open set `t : Set Y`. -/
@[mk_iff]
structure IsInducing (f : X → Y) : Prop where
  /-- The topology on the domain is equal to the induced topology. -/
  eq_induced : tX = tY.induced f

@[deprecated (since := "2024-10-28")] alias Inducing := IsInducing

/-- A function between topological spaces is an embedding if it is injective,
  and for all `s : Set X`, `s` is open iff it is the preimage of an open set. -/
@[mk_iff]
structure IsEmbedding (f : X → Y) : Prop extends IsInducing f where
  /-- A topological embedding is injective. -/
  injective : Function.Injective f

@[deprecated (since := "2024-10-26")]
alias Embedding := IsEmbedding

/-- An open embedding is an embedding with open range. -/
@[mk_iff]
structure IsOpenEmbedding (f : X → Y) : Prop extends IsEmbedding f where
  /-- The range of an open embedding is an open set. -/
  isOpen_range : IsOpen <| range f

/-- A closed embedding is an embedding with closed image. -/
@[mk_iff]
structure IsClosedEmbedding (f : X → Y) : Prop extends IsEmbedding f where
  /-- The range of a closed embedding is a closed set. -/
  isClosed_range : IsClosed <| range f

/-- A function between topological spaces is a quotient map if it is surjective,
  and for all `s : Set Y`, `s` is open iff its preimage is an open set. -/
@[mk_iff isQuotientMap_iff']
structure IsQuotientMap {X : Type*} {Y : Type*} [tX : TopologicalSpace X] [tY : TopologicalSpace Y]
    (f : X → Y) : Prop where
  surjective : Function.Surjective f
  eq_coinduced : tY = tX.coinduced f

@[deprecated (since := "2024-10-22")]
alias QuotientMap := IsQuotientMap

end Topology
```
