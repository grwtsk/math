# IsOfFinOrder.finite_zpowers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8afbda46565bde81b0c49034c56049b39cf66df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb8ced6a-9939-0f39-d847-f57120102ed0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9ebf9f7-0cee-b96f-d4da-283a9eaf83f8",
  "kind": "theorem",
  "lexical_name": "IsOfFinOrder.finite_zpowers",
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
  "slug": "isoffinorder-finite-zpowers--9d7a93d3152fc107ef482c0e",
  "source": {
    "blob": "f8afbda46565bde81b0c49034c56049b39cf66df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 201,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d7a93d3152fc107ef482c0e91ed759d5a1b008643d9a74349d6caee1afa870c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9ebf9f7-0cee-b96f-d4da-283a9eaf83f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsOfFinOrder.finite_zpowers (h : IsOfFinOrder a) : Finite <| zpowers a := by
  rw [← orderOf_pos_iff, order_eq_card_zpowers'] at h
  exact Nat.finite_of_card_ne_zero h.ne.symm
#align is_of_fin_order.finite_zpowers IsOfFinOrder.finite_zpowers
#align is_of_fin_add_order.finite_zmultiples IsOfFinAddOrder.finite_zmultiples

end Group
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8afbda46565bde81b0c49034c56049b39cf66df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
