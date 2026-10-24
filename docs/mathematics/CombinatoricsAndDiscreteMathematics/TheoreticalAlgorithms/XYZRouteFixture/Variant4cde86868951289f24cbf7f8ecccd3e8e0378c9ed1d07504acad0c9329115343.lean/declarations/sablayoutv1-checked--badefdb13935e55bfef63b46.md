# sabLayoutV1_checked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "283fd74d0ce481cc6998dc0329134b69f37d02b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 578,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e892cb29-2933-21dc-ae4e-6b3f0708323f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28c69869-1a04-27f2-fd74-9278d40cbe01",
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
  "slug": "sablayoutv1-checked--badefdb13935e55bfef63b46",
  "source": {
    "blob": "283fd74d0ce481cc6998dc0329134b69f37d02b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 578,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:badefdb13935e55bfef63b4650e52a2427e47747c6da22911ee5a13f94f54fb8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28c69869-1a04-27f2-fd74-9278d40cbe01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 578–590.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean#L578).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `283fd74d0ce481cc6998dc0329134b69f37d02b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
