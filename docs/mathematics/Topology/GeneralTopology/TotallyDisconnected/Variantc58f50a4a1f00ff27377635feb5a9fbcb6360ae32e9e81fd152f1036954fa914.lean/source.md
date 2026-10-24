# Complete source: GRWTSK.Topology.GeneralTopology.TotallyDisconnected.Variantc58f50a4a1f00ff27377635feb5a9fbcb6360ae32e9e81fd152f1036954fa914

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `965eb4c9a570727d351624c24629cadff4c87271` · SHA-256 `459b6e22ea4dd5cb99f2ddcecc4655f1f6972150a470cc30732249c2e23e1eba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ExistsOpenSubgroupSeparating.Variante14d07947f65eda9121fa1cdbd3ecb4ffac72db60e60b46c7d14ab46d21e0c46","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e14d07947f65eda9121fa1cdbd3ecb4ffac72db60e60b46c7d14ab46d21e0c46","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ExistsOpenSubgroupSeparating.Variante14d07947f65eda9121fa1cdbd3ecb4ffac72db60e60b46c7d14ab46d21e0c46","mathematical_subject":"Topology.GeneralTopology","original_sha256":"e14d07947f65eda9121fa1cdbd3ecb4ffac72db60e60b46c7d14ab46d21e0c46","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Nonarchimedean/TotallyDisconnected.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jou Glasheen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jou Glasheen, Kevin Buzzard, David Loeffler, Yongle Hu, Johan Commelin
-/

import Mathlib.Topology.Algebra.Nonarchimedean.Basic

/-!
# Total separatedness of nonarchimedean groups

In this file, we prove that a nonarchimedean group is a totally separated topological space.
The fact that a nonarchimedean group is a totally disconnected topological space
is implied by the fact that a nonarchimedean group is totally separated.

## Main results

- `NonarchimedeanGroup.instTotallySeparated`:
  A nonarchimedean group is a totally separated topological space.

## Notation

- `G` : Is a nonarchimedean group.
- `V` : Is an open subgroup which is a neighbourhood of the identity in `G`.

## References

See Proposition 2.3.9 and Problem 63 in [F. Q. Gouvêa, *p-adic numbers*][gouvea1997].
-/


namespace GRWTSK.Topology.GeneralTopology.ExistsOpenSubgroupSeparating.Variante14d07947f65eda9121fa1cdbd3ecb4ffac72db60e60b46c7d14ab46d21e0c46

open Pointwise TopologicalSpace

variable {G : Type*} [TopologicalSpace G] [Group G] [NonarchimedeanGroup G] [T2Space G]

namespace NonarchimedeanGroup

@[to_additive]
lemma exists_openSubgroup_separating {a b : G} (h : a ≠ b) :
    ∃ V : OpenSubgroup G, Disjoint (a • (V : Set G)) (b • V) := by
  obtain ⟨u, v, _, open_v, mem_u, mem_v, dis⟩ := t2_separation (h ∘ inv_mul_eq_one.mp)
  obtain ⟨V, hV⟩ := is_nonarchimedean v (open_v.mem_nhds mem_v)
  use V
  simp only [Disjoint, Set.le_eq_subset, Set.bot_eq_empty, Set.subset_empty_iff]
  intros x mem_aV mem_bV
  by_contra! con
  obtain ⟨s, hs⟩ := con
  have hsa : s ∈ a • (V : Set G) := mem_aV hs
  have hsb : s ∈ b • (V : Set G) := mem_bV hs
  rw [mem_leftCoset_iff] at hsa hsb
  refine dis.subset_compl_right mem_u (hV ?_)
  simpa [mul_assoc] using mul_mem hsa (inv_mem hsb)

@[to_additive]
instance (priority := 100) instTotallySeparated : TotallySeparatedSpace G where
  isTotallySeparated_univ x _ y _ hxy := by
    obtain ⟨V, dxy⟩ := exists_openSubgroup_separating hxy
    exact ⟨_, _, V.isOpen.smul x, (V.isClosed.smul x).isOpen_compl, mem_own_leftCoset ..,
      dxy.subset_compl_left <| mem_own_leftCoset .., by simp, disjoint_compl_right⟩

end NonarchimedeanGroup
```
