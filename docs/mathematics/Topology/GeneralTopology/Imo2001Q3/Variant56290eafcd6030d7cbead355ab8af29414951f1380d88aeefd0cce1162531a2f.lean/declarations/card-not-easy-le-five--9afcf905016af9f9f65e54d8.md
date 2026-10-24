# card_not_easy_le_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63e536926674379247508fe33bec853f15aa3ce0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56290eafcd6030d7cbead355ab8af29414951f1380d88aeefd0cce1162531a2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef460999-80c8-0359-d40d-c0ec0876c05d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8bad58b-efd4-562b-734c-cfbdc556c346",
  "kind": "lemma",
  "lexical_name": "card_not_easy_le_five",
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
  "slug": "card-not-easy-le-five--9afcf905016af9f9f65e54d8",
  "source": {
    "blob": "63e536926674379247508fe33bec853f15aa3ce0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/Imo2001Q3/Variant56290eafcd6030d7cbead355ab8af29414951f1380d88aeefd0cce1162531a2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9afcf905016af9f9f65e54d8ea98a4f9e9c5abc11812fa980f1bd3cb81503e2b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Imo2001Q3/Variant56290eafcd6030d7cbead355ab8af29414951f1380d88aeefd0cce1162531a2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8bad58b-efd4-562b-734c-cfbdc556c346`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_not_easy_le_five {i : Fin 21} (hG : #(G i) ≤ 6) (hB : ∀ j, ¬Disjoint (G i) (B j)) :
    #{p ∈ G i | ¬Easy B p} ≤ 5 := by
  by_contra! h
  replace h := le_antisymm (card_filter_le ..) (hG.trans h)
  simp_rw [card_filter_eq_iff, Easy, not_le] at h
  suffices 21 ≤ 12 by norm_num at this
  calc
    _ = #{j | ¬Disjoint (G i) (B j)} := by simp [filter_true_of_mem fun j _ ↦ hB j]
    _ = #((G i).biUnion fun p ↦ {j | p ∈ B j}) := by congr 1; ext j; simp [not_disjoint_iff]
    _ ≤ ∑ p ∈ G i, #{j | p ∈ B j} := card_biUnion_le
    _ ≤ ∑ p ∈ G i, 2 := sum_le_sum fun p mp ↦ Nat.le_of_lt_succ (h p mp)
    _ ≤ _ := by rw [sum_const, smul_eq_mul]; lia

open scoped Classical in
/-- There are at most 210 girl-boy pairs who solved some problem in common that was not easy for
a fixed cohort. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Imo2001Q3/Variant56290eafcd6030d7cbead355ab8af29414951f1380d88aeefd0cce1162531a2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Imo2001Q3/Variant56290eafcd6030d7cbead355ab8af29414951f1380d88aeefd0cce1162531a2f.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63e536926674379247508fe33bec853f15aa3ce0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
