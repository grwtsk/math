# IsPreprimitive.isPreprimitive_ofFixingSubgroup_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87bc2bd82adec3b891b2ba8d5c1d45ba54000ffb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 500,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62b401d4f64f145b3cbe7c520ac97e88e028c16a749b113ed8d8ea17aa9ca17f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f377f9fa-d6a8-22b4-c083-ee2d198921f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29ccfcef-f5d3-e1e6-d990-9892a304e973",
  "kind": "theorem",
  "lexical_name": "IsPreprimitive.isPreprimitive_ofFixingSubgroup_inter",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "ispreprimitive-ispreprimitive-offixingsubgroup-inter--d78079fe4fb111040c915b11",
  "source": {
    "blob": "87bc2bd82adec3b891b2ba8d5c1d45ba54000ffb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 500,
    "path": "GRWTSK/Algebra/GroupTheory/OfFixingSubgroup/Variant62b401d4f64f145b3cbe7c520ac97e88e028c16a749b113ed8d8ea17aa9ca17f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d78079fe4fb111040c915b11e3575b65c9d09cbd21851a51e334341c3a6f0a0b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OfFixingSubgroup/Variant62b401d4f64f145b3cbe7c520ac97e88e028c16a749b113ed8d8ea17aa9ca17f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29ccfcef-f5d3-e1e6-d990-9892a304e973`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreprimitive.isPreprimitive_ofFixingSubgroup_inter
    [Finite α]
    (hs : IsPreprimitive (fixingSubgroup M s) (ofFixingSubgroup M s))
    {g : M} (ha : s ∪ g • s ≠ ⊤) :
    IsPreprimitive (fixingSubgroup M (s ∩ g • s)) (ofFixingSubgroup M (s ∩ g • s)) := by
  have := IsPretransitive.isPretransitive_ofFixingSubgroup_inter hs.toIsPretransitive ha
  apply IsPreprimitive.of_card_lt (f := ofFixingSubgroup_of_inclusion M Set.inter_subset_left)
  rw [show Nat.card (ofFixingSubgroup M (s ∩ g • s)) = (s ∩ g • s)ᶜ.ncard from
    Nat.card_coe_set_eq _, Set.ncard_range_of_injective ofFixingSubgroup_of_inclusion_injective,
    show Nat.card (ofFixingSubgroup M s) = sᶜ.ncard from Nat.card_coe_set_eq _, Set.compl_inter]
  refine (Set.ncard_union_lt sᶜ.toFinite (g • s)ᶜ.toFinite ?_).trans_le ?_
  · rwa [Set.disjoint_compl_right_iff_subset, Set.compl_subset_iff_union]
  · rw [← Set.smul_set_compl, Set.ncard_smul_set, two_mul]

end TwoCriteria

end SubMulAction

section Pointwise

open MulAction Set

variable (G : Type*) [Group G] {α : Type*} [MulAction G α]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OfFixingSubgroup/Variant62b401d4f64f145b3cbe7c520ac97e88e028c16a749b113ed8d8ea17aa9ca17f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OfFixingSubgroup/Variant62b401d4f64f145b3cbe7c520ac97e88e028c16a749b113ed8d8ea17aa9ca17f.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87bc2bd82adec3b891b2ba8d5c1d45ba54000ffb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
