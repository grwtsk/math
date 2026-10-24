# tendsto_inv_nhdsGE_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df199663a8b2d5166712180add90c3355ab9b671",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/4923ce32a632108dcadf53ad7669f1170dbd5cb5a4c5aac09a719e4d328e5aaa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df6e588a-c9ed-f4ef-d91d-5204cc927eb8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a583b125-c97c-9575-e29f-996e53de7b4c",
  "kind": "theorem",
  "lexical_name": "tendsto_inv_nhdsGE_inv",
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
  "slug": "tendsto-inv-nhdsge-inv--b607b43bd553631eeaa1e97d",
  "source": {
    "blob": "df199663a8b2d5166712180add90c3355ab9b671",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variant4923ce32a632108dcadf53ad7669f1170dbd5cb5a4c5aac09a719e4d328e5aaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b607b43bd553631eeaa1e97dd4172a47d83df53149852bf966a85d87cd5a2f4d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variant4923ce32a632108dcadf53ad7669f1170dbd5cb5a4c5aac09a719e4d328e5aaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a583b125-c97c-9575-e29f-996e53de7b4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_inv_nhdsGE_inv {a : H} : Tendsto Inv.inv (𝓝[≥] a⁻¹) (𝓝[≤] a) := by
  simpa only [inv_inv] using tendsto_inv_nhdsGE (a := a⁻¹)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variant4923ce32a632108dcadf53ad7669f1170dbd5cb5a4c5aac09a719e4d328e5aaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variant4923ce32a632108dcadf53ad7669f1170dbd5cb5a4c5aac09a719e4d328e5aaa.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df199663a8b2d5166712180add90c3355ab9b671` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
