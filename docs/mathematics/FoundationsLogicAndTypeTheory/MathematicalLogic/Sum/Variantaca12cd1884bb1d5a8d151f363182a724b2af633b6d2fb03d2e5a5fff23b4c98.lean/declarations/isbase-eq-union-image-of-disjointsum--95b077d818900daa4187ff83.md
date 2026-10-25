# IsBase.eq_union_image_of_disjointSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "957b2c416839fd965c1cfeb80f95267d3eb0eefb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/aca12cd1884bb1d5a8d151f363182a724b2af633b6d2fb03d2e5a5fff23b4c98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7098767f-a836-3729-1748-762a8bf10590",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c0d0781-0700-a6bb-20f1-d3de805c1bba",
  "kind": "lemma",
  "lexical_name": "IsBase.eq_union_image_of_disjointSum",
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
  "slug": "isbase-eq-union-image-of-disjointsum--95b077d818900daa4187ff83",
  "source": {
    "blob": "957b2c416839fd965c1cfeb80f95267d3eb0eefb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 299,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantaca12cd1884bb1d5a8d151f363182a724b2af633b6d2fb03d2e5a5fff23b4c98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95b077d818900daa4187ff83629d5fcc9ab839d8f21f1eb470b151d7e2fd7894",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantaca12cd1884bb1d5a8d151f363182a724b2af633b6d2fb03d2e5a5fff23b4c98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c0d0781-0700-a6bb-20f1-d3de805c1bba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsBase.eq_union_image_of_disjointSum {h B} (hB : (disjointSum M N h).IsBase B) :
    ∃ BM BN, M.IsBase BM ∧ N.IsBase BN ∧ Disjoint BM BN ∧ B = BM ∪ BN := by
  rw [disjointSum_isBase_iff] at hB
  refine ⟨_, _, hB.1, hB.2.1, h.mono inter_subset_right inter_subset_right, ?_⟩
  rw [← inter_union_distrib_left, inter_eq_self_of_subset_left hB.2.2]

end disjointSum

end Matroid
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantaca12cd1884bb1d5a8d151f363182a724b2af633b6d2fb03d2e5a5fff23b4c98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantaca12cd1884bb1d5a8d151f363182a724b2af633b6d2fb03d2e5a5fff23b4c98.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `957b2c416839fd965c1cfeb80f95267d3eb0eefb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
