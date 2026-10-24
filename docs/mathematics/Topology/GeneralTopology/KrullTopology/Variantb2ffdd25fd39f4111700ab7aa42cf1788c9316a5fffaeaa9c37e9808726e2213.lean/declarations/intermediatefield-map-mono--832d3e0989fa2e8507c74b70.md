# IntermediateField.map_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fa2e693e3125639c857d33a190d84f73a2d5559",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3010c950-a98c-91c4-bcf0-53d468aa0741",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1389ba3-4085-dc32-b6eb-2a6d24ead8d6",
  "kind": "theorem",
  "lexical_name": "IntermediateField.map_mono",
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
  "slug": "intermediatefield-map-mono--832d3e0989fa2e8507c74b70",
  "source": {
    "blob": "7fa2e693e3125639c857d33a190d84f73a2d5559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 61,
    "path": "GRWTSK/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:832d3e0989fa2e8507c74b707e08e47db893ab593a2e4aed2fe230a9c54f9aad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1389ba3-4085-dc32-b6eb-2a6d24ead8d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IntermediateField.map_mono {K L M : Type*} [Field K] [Field L] [Field M] [Algebra K L]
    [Algebra K M] {E1 E2 : IntermediateField K L} (e : L ≃ₐ[K] M) (h12 : E1 ≤ E2) :
    E1.map e.toAlgHom ≤ E2.map e.toAlgHom :=
  Set.image_subset e h12
#align intermediate_field.map_mono IntermediateField.map_mono

/-- Mapping intermediate fields along the identity does not change them -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KrullTopology/Variantb2ffdd25fd39f4111700ab7aa42cf1788c9316a5fffaeaa9c37e9808726e2213.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fa2e693e3125639c857d33a190d84f73a2d5559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
