# RangeProjectionDescriptor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09652e327dee41559ef4a85fcd11ef33acc9f3fd928ea04f6a2c5db0552a856b",
  "kind": "structure",
  "lexical_name": "RangeProjectionDescriptor",
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
  "slug": "rangeprojectiondescriptor--31c1952c5f59de20140793b5",
  "source": {
    "blob": "3fdb9f74c0d7b55ad7d16f04a2352f8deba2c409",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 12,
    "line": 5,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RangeProjection/Variant76fe4c56d8cd99602e1ab4bfc4320a46322c8c113cfe1f02ed5165f1feeee5e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31c1952c5f59de20140793b5d75584ef0a85ed40ad76999440debb6c05b9d46d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RangeProjection/Variant76fe4c56d8cd99602e1ab4bfc4320a46322c8c113cfe1f02ed5165f1feeee5e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09652e327dee41559ef4a85fcd11ef33acc9f3fd928ea04f6a2c5db0552a856b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5–12.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RangeProjectionDescriptor where
  projectionRef : String
  horizonRef : String
  inclusionCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninRangeProjection

end Mathematics.SemiLocalDefect.Sonin
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RangeProjection/Variant76fe4c56d8cd99602e1ab4bfc4320a46322c8c113cfe1f02ed5165f1feeee5e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RangeProjection/Variant76fe4c56d8cd99602e1ab4bfc4320a46322c8c113cfe1f02ed5165f1feeee5e4.lean#L5).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fdb9f74c0d7b55ad7d16f04a2352f8deba2c409` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
