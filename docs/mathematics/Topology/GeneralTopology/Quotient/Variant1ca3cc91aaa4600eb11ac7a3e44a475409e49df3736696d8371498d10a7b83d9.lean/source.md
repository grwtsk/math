# Complete source: GRWTSK.Topology.GeneralTopology.Quotient.Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26077b1460ca7f968b9c9f04ce33e420dfb5871d` · SHA-256 `584b995cd01d5ac8dce27e3c245b7ce88606c9b1b4946372bb279b2ec84b16b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsQuotientMapMk.Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsQuotientMapMk.Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41","mathematical_subject":"Topology.GeneralTopology","original_sha256":"8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Group/Quotient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Patrick Massot, Yury Kudryashov
-/
import Mathlib.GroupTheory.GroupAction.Quotient
import Mathlib.GroupTheory.QuotientGroup.Defs
import Mathlib.Topology.Algebra.Group.Pointwise
import Mathlib.Topology.Maps.OpenQuotient

/-!
# Topology on the quotient group

In this file we define topology on `G ⧸ N`, where `N` is a subgroup of `G`,
and prove basic properties of this topology.
-/


namespace GRWTSK.Topology.GeneralTopology.IsQuotientMapMk.Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41

open Topology
open scoped Pointwise

variable {G : Type*} [TopologicalSpace G] [Group G]

namespace QuotientGroup

@[to_additive]
instance instTopologicalSpace (N : Subgroup G) : TopologicalSpace (G ⧸ N) :=
  instTopologicalSpaceQuotient

@[to_additive]
instance [CompactSpace G] (N : Subgroup G) : CompactSpace (G ⧸ N) :=
  Quotient.compactSpace

@[to_additive]
theorem isQuotientMap_mk (N : Subgroup G) : IsQuotientMap (mk : G → G ⧸ N) :=
  isQuotientMap_quot_mk

@[deprecated (since := "2024-10-22")]
alias quotientMap_mk := isQuotientMap_mk

@[to_additive (attr := continuity, fun_prop)]
theorem continuous_mk {N : Subgroup G} : Continuous (mk : G → G ⧸ N) :=
  continuous_quot_mk

section ContinuousMul

variable [ContinuousMul G] {N : Subgroup G}

@[to_additive]
theorem isOpenMap_coe : IsOpenMap ((↑) : G → G ⧸ N) := isOpenMap_quotient_mk'_mul

@[to_additive]
theorem isOpenQuotientMap_mk : IsOpenQuotientMap (mk : G → G ⧸ N) :=
  MulAction.isOpenQuotientMap_quotientMk

@[to_additive (attr := simp)]
theorem dense_preimage_mk {s : Set (G ⧸ N)} : Dense ((↑) ⁻¹' s : Set G) ↔ Dense s :=
  isOpenQuotientMap_mk.dense_preimage_iff

@[to_additive]
theorem dense_image_mk {s : Set G} :
    Dense (mk '' s : Set (G ⧸ N)) ↔ Dense (s * (N : Set G)) := by
  rw [← dense_preimage_mk, preimage_image_mk_eq_mul]

@[to_additive]
instance instContinuousSMul : ContinuousSMul G (G ⧸ N) where
  continuous_smul := by
    rw [← (IsOpenQuotientMap.id.prodMap isOpenQuotientMap_mk).continuous_comp_iff]
    exact continuous_mk.comp continuous_mul

@[to_additive]
instance instContinuousConstSMul : ContinuousConstSMul G (G ⧸ N) := inferInstance

/-- A quotient of a locally compact group is locally compact. -/
@[to_additive]
instance instLocallyCompactSpace [LocallyCompactSpace G] (N : Subgroup G) :
    LocallyCompactSpace (G ⧸ N) :=
  QuotientGroup.isOpenQuotientMap_mk.locallyCompactSpace

variable (N)

/-- Neighborhoods in the quotient are precisely the map of neighborhoods in the prequotient. -/
@[to_additive
  "Neighborhoods in the quotient are precisely the map of neighborhoods in the prequotient."]
theorem nhds_eq (x : G) : 𝓝 (x : G ⧸ N) = Filter.map (↑) (𝓝 x) :=
  (isOpenQuotientMap_mk.map_nhds_eq _).symm

@[to_additive]
instance instFirstCountableTopology [FirstCountableTopology G] :
    FirstCountableTopology (G ⧸ N) where
  nhds_generated_countable := mk_surjective.forall.2 fun x ↦ nhds_eq N x ▸ inferInstance

/-- The quotient of a second countable topological group by a subgroup is second countable. -/
@[to_additive
  "The quotient of a second countable additive topological group by a subgroup is second
  countable."]
instance instSecondCountableTopology [SecondCountableTopology G] :
    SecondCountableTopology (G ⧸ N) :=
  ContinuousConstSMul.secondCountableTopology

end ContinuousMul

variable [IsTopologicalGroup G] (N : Subgroup G)

@[to_additive]
instance instIsTopologicalGroup [N.Normal] : IsTopologicalGroup (G ⧸ N) where
  continuous_mul := by
    rw [← (isOpenQuotientMap_mk.prodMap isOpenQuotientMap_mk).continuous_comp_iff]
    exact continuous_mk.comp continuous_mul
  continuous_inv := continuous_inv.quotient_map' _

@[to_additive]
theorem isClosedMap_coe {H : Subgroup G} (hH : IsCompact (H : Set G)) :
    IsClosedMap ((↑) : G → G ⧸ H) := by
  intro t ht
  rw [← (isQuotientMap_mk H).isClosed_preimage, preimage_image_mk_eq_mul]
  exact ht.mul_right_of_isCompact hH

@[to_additive]
instance instT3Space [N.Normal] [hN : IsClosed (N : Set G)] : T3Space (G ⧸ N) := by
  rw [← QuotientGroup.ker_mk' N] at hN
  haveI := IsTopologicalGroup.t1Space (G ⧸ N) ((isQuotientMap_mk N).isClosed_preimage.mp hN)
  infer_instance

end QuotientGroup
```
