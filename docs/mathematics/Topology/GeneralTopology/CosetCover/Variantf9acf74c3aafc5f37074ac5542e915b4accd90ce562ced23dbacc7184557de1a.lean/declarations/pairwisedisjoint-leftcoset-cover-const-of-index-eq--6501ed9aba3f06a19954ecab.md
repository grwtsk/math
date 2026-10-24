# pairwiseDisjoint_leftCoset_cover_const_of_index_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e598607cd2ca2768c08f0bc01ea6ec0f2c4daa8a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13b3543b-7080-3c24-558c-a657a8f773da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4c45a1d-e7e1-627a-90d7-a67fcd7413dc",
  "kind": "theorem",
  "lexical_name": "pairwiseDisjoint_leftCoset_cover_const_of_index_eq",
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
  "slug": "pairwisedisjoint-leftcoset-cover-const-of-index-eq--6501ed9aba3f06a19954ecab",
  "source": {
    "blob": "e598607cd2ca2768c08f0bc01ea6ec0f2c4daa8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 106,
    "path": "GRWTSK/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6501ed9aba3f06a19954ecabd1a98ea7fd0a64521c3377d76540de8156a2aefc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4c45a1d-e7e1-627a-90d7-a67fcd7413dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairwiseDisjoint_leftCoset_cover_const_of_index_eq (hind : H.index = s.card) :
    Set.PairwiseDisjoint s (g · • (H : Set G)) := by
  have : Fintype (G ⧸ H) := fintypeOfIndexNeZero fun h => by
    rw [hind, Finset.card_eq_zero] at h
    rw [h, ← Finset.set_biUnion_coe, Finset.coe_empty, Set.biUnion_empty] at hcovers
    exact Set.empty_ne_univ hcovers
  suffices Function.Bijective (g · : s → G ⧸ H) by
    intro i hi j hj h' c hi' hj' x hx
    specialize hi' hx
    specialize hj' hx
    rw [mem_leftCoset_iff, SetLike.mem_coe, ← QuotientGroup.eq] at hi' hj'
    rw [ne_eq, ← Subtype.mk.injEq (p := (· ∈ (s : Set ι))) i hi j hj] at h'
    exact h' <| this.injective <| by simp only [hi', hj']
  rw [Fintype.bijective_iff_surjective_and_card]
  constructor
  · rwa [leftCoset_cover_const_iff_surjOn, Set.surjOn_iff_surjective] at hcovers
  · simp only [Fintype.card_coe, ← hind, index_eq_card, Nat.card_eq_fintype_card]

end leftCoset_cover_const

section

variable {ι : Type*} {H : ι → Subgroup G} {g : ι → G} {s : Finset ι}
    (hcovers : ⋃ i ∈ s, (g i) • (H i : Set G) = Set.univ)
include hcovers

-- Inductive inner part of `Subgroup.exists_finiteIndex_of_leftCoset_cover`
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e598607cd2ca2768c08f0bc01ea6ec0f2c4daa8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
