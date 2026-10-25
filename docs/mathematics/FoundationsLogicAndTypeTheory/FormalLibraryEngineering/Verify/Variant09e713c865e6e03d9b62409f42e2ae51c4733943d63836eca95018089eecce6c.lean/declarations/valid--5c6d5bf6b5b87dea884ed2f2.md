# Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:faea2ec853ed43527284792f701f2b38299db230360818d02b2a2c334d84fedf",
  "kind": "structure",
  "lexical_name": "Valid",
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
  "slug": "valid--5c6d5bf6b5b87dea884ed2f2",
  "source": {
    "blob": "21898982d9657836a4c8bfc6f276e15ca6b74068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verify/Variant09e713c865e6e03d9b62409f42e2ae51c4733943d63836eca95018089eecce6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c6d5bf6b5b87dea884ed2f29bca8ea5906d9c953c8b993a37f561d392fef6fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verify/Variant09e713c865e6e03d9b62409f42e2ae51c4733943d63836eca95018089eecce6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:faea2ec853ed43527284792f701f2b38299db230360818d02b2a2c334d84fedf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Valid (inputs : LedgerVerificationInputs) : Prop where
  extractionValid : inputs.extraction.Valid
  payloadValid : inputs.payload.Valid
  merkleValid : inputs.merkle.Valid
  receiptFilesAgree : inputs.merkle.files = inputs.payload.files
  payloadCommitsExtraction :
    inputs.payload.payloadDigest = inputs.extraction.digest
  schemaAgrees :
    inputs.payload.schemaVersion = inputs.extraction.schemaVersion
  extractorVersionAgrees :
    inputs.payload.extractorVersion = inputs.extraction.extractorVersion

end LedgerVerificationInputs

end Mathematics.Extractor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verify/Variant09e713c865e6e03d9b62409f42e2ae51c4733943d63836eca95018089eecce6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verify/Variant09e713c865e6e03d9b62409f42e2ae51c4733943d63836eca95018089eecce6c.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21898982d9657836a4c8bfc6f276e15ca6b74068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
