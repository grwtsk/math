# isProperMap_snd_of_compactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e0a0e5481439cecbe6fb56766ecca3f7a8f6b6f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 328,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/dfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ab7752b-e586-35c7-659f-bd270e06522b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19bf33db-cd9f-aace-fbae-26ba349f26e9",
  "kind": "theorem",
  "lexical_name": "isProperMap_snd_of_compactSpace",
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
  "slug": "ispropermap-snd-of-compactspace--b854884b1466e466db207d6e",
  "source": {
    "blob": "8e0a0e5481439cecbe6fb56766ecca3f7a8f6b6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 328,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b854884b1466e466db207d6e55a6421301886b281d50eabdae24c32bdd0d08f7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19bf33db-cd9f-aace-fbae-26ba349f26e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isProperMap_snd_of_compactSpace [CompactSpace X] :
    IsProperMap (Prod.snd : X × Y → Y) :=
  Homeomorph.punitProd Y |>.isProperMap.comp ((isProperMap_const ()).prodMap isProperMap_id)

/-- If `Y` is a compact topological space, then `Prod.fst : X × Y → X` is a closed map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e0a0e5481439cecbe6fb56766ecca3f7a8f6b6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
