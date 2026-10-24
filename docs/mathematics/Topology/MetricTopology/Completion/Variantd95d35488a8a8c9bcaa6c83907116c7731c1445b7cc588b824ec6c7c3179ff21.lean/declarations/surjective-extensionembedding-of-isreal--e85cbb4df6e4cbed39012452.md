# surjective_extensionEmbedding_of_isReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ae4976624cf5b9d7dd9b490abf2a07ebd9d5b77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e44e4172-6587-90f7-d1c2-d189d59c2ccc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fcfcd92b-780e-f382-a440-30a4d9743851",
  "kind": "theorem",
  "lexical_name": "surjective_extensionEmbedding_of_isReal",
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
  "slug": "surjective-extensionembedding-of-isreal--e85cbb4df6e4cbed39012452",
  "source": {
    "blob": "7ae4976624cf5b9d7dd9b490abf2a07ebd9d5b77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 175,
    "path": "GRWTSK/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e85cbb4df6e4cbed3901245290030923e12258f58c35e43de6f7989b4f44c5b9",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcfcd92b-780e-f382-a440-30a4d9743851`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surjective_extensionEmbedding_of_isReal {v : InfinitePlace K} (hv : IsReal v) :
    Function.Surjective (extensionEmbeddingOfIsReal hv) := by
  rw [← RingHom.fieldRange_eq_top_iff, ← Real.subfield_eq_of_closed]
  exact isClosed_image_extensionEmbedding_of_isReal hv

/-- If `v` is a real infinite place, then the embedding `v.Completion →+* ℝ` is bijective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ae4976624cf5b9d7dd9b490abf2a07ebd9d5b77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
