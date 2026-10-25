# completePacketDescriptorCodec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ccedd0f3fdf22204b96f01ce10e090252876ec35b94de9fea6800343f05e8a14",
  "kind": "def",
  "lexical_name": "completePacketDescriptorCodec",
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
  "slug": "completepacketdescriptorcodec--0bd754452c1273fa0ff6df0b",
  "source": {
    "blob": "adbd215794df06d970b172ea2f20c56a1d7486c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variant07f6eca2a886bae5bff559ea77b93ecac87d25da02a7fe29a407ef9c12e13d6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bd754452c1273fa0ff6df0b5ed3decdd119e6357d38e3953787cc8bbb5dca5b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variant07f6eca2a886bae5bff559ea77b93ecac87d25da02a7fe29a407ef9c12e13d6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ccedd0f3fdf22204b96f01ce10e090252876ec35b94de9fea6800343f05e8a14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def completePacketDescriptorCodec :
    PayloadCodec CompletePacketDescriptor CompletePacketDescriptor where
  decode? := decodeCompletePacketDescriptor?
  encode := fun descriptor ↦
    encodeU32LE descriptor.schemaVersion ++
      encodeHash256 descriptor.packetHash ++
      encodeU64LE descriptor.byteLength ++
      encodeLengthPrefixedUtf8 descriptor.artifactObjectId
  rawMatches := fun raw payload ↦ raw = payload
  decodeSound := decodeCompletePacketDescriptor?_sound

end Surface.Refactor.Syntax
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variant07f6eca2a886bae5bff559ea77b93ecac87d25da02a7fe29a407ef9c12e13d6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variant07f6eca2a886bae5bff559ea77b93ecac87d25da02a7fe29a407ef9c12e13d6a.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adbd215794df06d970b172ea2f20c56a1d7486c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
