# maxKey_eq_back_keysArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a21803e62d3ee266c84ee30f20e7924eb0ccf23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 8351,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d72513f42efb6f9f1963cc8905d9eaae26ad13b458c4e1bca2e90145ce0f4439.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4210017d-038c-e918-72e6-9555123c7d98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f446c7b3-0b72-19eb-847b-3bb0a5d99da5",
  "kind": "theorem",
  "lexical_name": "maxKey_eq_back_keysArray",
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
  "slug": "maxkey-eq-back-keysarray--d8b805345c2b9e3815c9de15",
  "source": {
    "blob": "8a21803e62d3ee266c84ee30f20e7924eb0ccf23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 8354,
    "line": 8351,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd72513f42efb6f9f1963cc8905d9eaae26ad13b458c4e1bca2e90145ce0f4439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8b805345c2b9e3815c9de15eee4df9cc788f8329e6937fb58d5f40f6136ba7e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd72513f42efb6f9f1963cc8905d9eaae26ad13b458c4e1bca2e90145ce0f4439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f446c7b3-0b72-19eb-847b-3bb0a5d99da5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8351–8354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem maxKey_eq_back_keysArray [TransOrd α] (h : t.WF) {he} :
    t.maxKey he = t.keysArray.back (Nat.zero_lt_of_ne_zero (by simpa [size_keysArray h, isEmpty_eq_size_eq_zero h] using he)) := by
  simp [maxKey_eq_getLast_keys h, ← toArray_keys, List.back_toArray]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd72513f42efb6f9f1963cc8905d9eaae26ad13b458c4e1bca2e90145ce0f4439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd72513f42efb6f9f1963cc8905d9eaae26ad13b458c4e1bca2e90145ce0f4439.lean#L8351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a21803e62d3ee266c84ee30f20e7924eb0ccf23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
