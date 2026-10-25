# oriented_index_injective_at_fixed_depth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:369866b0-0f05-522e-3e4b-985d5e863d39",
  "kind": "theorem",
  "lexical_name": "oriented_index_injective_at_fixed_depth",
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
  "slug": "oriented-index-injective-at-fixed-depth--f1a720e5075c9c55d7ff4aeb",
  "source": {
    "blob": "325b64228388f3abfb553f6289d681f144edaa5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 216,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1a720e5075c9c55d7ff4aeb23984e5758efe20c247cfd3806dd68a1f6e9f864",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:369866b0-0f05-522e-3e4b-985d5e863d39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oriented_index_injective_at_fixed_depth
    (certificate :
      OrientedIndexCertificate)
    {left right : FrontierAddress}
    (sameDepth :
      left.rawPath.length =
        right.rawPath.length)
    (sameIndex :
      left.equalDepthIndex =
        right.equalDepthIndex) :
    left.orientedPath =
      right.orientedPath :=
  certificate.injectiveAtFixedDepth
    left right sameDepth sameIndex

end Mathematics.BinaryFrontier.Refinement
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Address/Variant0afcf46c6776b02ea51cbcdd567b69257e490a8d6b09dcd422e86643abac017a.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `325b64228388f3abfb553f6289d681f144edaa5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
