# idxOf_lt_length_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77c03aa5a3f59c3fe67e5c593c97f676c21f5320",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0a7a404-084c-0ecb-3a6c-5cf3e0762c8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b0f1416-252d-3334-e9da-8f7770ac59fd",
  "kind": "theorem",
  "lexical_name": "idxOf_lt_length_of_mem",
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
  "slug": "idxof-lt-length-of-mem--c7a1bc875d59138a8e860dbf",
  "source": {
    "blob": "77c03aa5a3f59c3fe67e5c593c97f676c21f5320",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1192,
    "line": 1180,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7a1bc875d59138a8e860dbf9a52ec89e2a539b84d141cceb94e8e2f2ed3a500",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b0f1416-252d-3334-e9da-8f7770ac59fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1180–1192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem idxOf_lt_length_of_mem [BEq α] [EquivBEq α] {l : List α} (h : a ∈ l) : l.idxOf a < l.length := by
  induction l with
  | nil => simp at h
  | cons x xs ih =>
    simp only [mem_cons] at h
    obtain rfl | h := h
    · simp
    · simp only [idxOf_cons, cond_eq_ite, length_cons]
      specialize ih h
      split
      · exact zero_lt_succ xs.length
      · exact Nat.add_lt_add_right ih 1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean#L1180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c03aa5a3f59c3fe67e5c593c97f676c21f5320` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
