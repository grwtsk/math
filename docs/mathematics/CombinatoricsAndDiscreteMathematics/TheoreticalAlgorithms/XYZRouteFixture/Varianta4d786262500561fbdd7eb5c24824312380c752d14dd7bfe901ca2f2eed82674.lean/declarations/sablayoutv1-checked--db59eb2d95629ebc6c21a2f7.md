# sabLayoutV1_checked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc7f587644307be8ec6e7c9b5c88c7106ee30649",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 603,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4d786262500561fbdd7eb5c24824312380c752d14dd7bfe901ca2f2eed82674.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8723e15-4fb6-ab21-261f-d323d8a221c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:436770d9-a030-9c3a-7e64-7a9b1467f12a",
  "kind": "theorem",
  "lexical_name": "sabLayoutV1_checked",
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
  "slug": "sablayoutv1-checked--db59eb2d95629ebc6c21a2f7",
  "source": {
    "blob": "bc7f587644307be8ec6e7c9b5c88c7106ee30649",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 603,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Varianta4d786262500561fbdd7eb5c24824312380c752d14dd7bfe901ca2f2eed82674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db59eb2d95629ebc6c21a2f77775695a5f4d195170949943ad9f200d5263054e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Varianta4d786262500561fbdd7eb5c24824312380c752d14dd7bfe901ca2f2eed82674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:436770d9-a030-9c3a-7e64-7a9b1467f12a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 603–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sabLayoutV1_checked :
    sabHeaderBytesV1 + sabSlotCountV1 * sabSlotBytesV1 = sabTotalBytesV1 ∧
      sabControlWordsV1 * 4 = sabHeaderBytesV1 ∧
      sabSlotOffsetsV1 = [sabHeaderBytesV1,
        sabHeaderBytesV1 + sabSlotBytesV1,
        sabHeaderBytesV1 + 2 * sabSlotBytesV1] ∧
      sabMagicUnsignedV1 = 1398298970 ∧
      sabAbiVersionV1 = 1 ∧
      sabWordIndicesV1 = List.range 11 ∧
      sabStateCodesV1 = List.range 4 := by
  decide

end Generated.XYZRouteFixture
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Varianta4d786262500561fbdd7eb5c24824312380c752d14dd7bfe901ca2f2eed82674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Varianta4d786262500561fbdd7eb5c24824312380c752d14dd7bfe901ca2f2eed82674.lean#L603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc7f587644307be8ec6e7c9b5c88c7106ee30649` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
