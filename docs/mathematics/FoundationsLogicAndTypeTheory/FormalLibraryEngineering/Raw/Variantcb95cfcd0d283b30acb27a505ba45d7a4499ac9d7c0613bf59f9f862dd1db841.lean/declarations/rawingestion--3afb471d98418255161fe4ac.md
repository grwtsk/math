# RawIngestion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6fb572246e95e27d51712064c57c5c8f03d64165406911796579df385a670e2",
  "kind": "structure",
  "lexical_name": "RawIngestion",
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
  "slug": "rawingestion--3afb471d98418255161fe4ac",
  "source": {
    "blob": "d9f1f2ed18d31ac04c7546c2a2be22d4459ebad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Raw/Variantcb95cfcd0d283b30acb27a505ba45d7a4499ac9d7c0613bf59f9f862dd1db841.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3afb471d98418255161fe4aca05940453dd97c0b3bc413f72b4b32602c65eb41",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Raw/Variantcb95cfcd0d283b30acb27a505ba45d7a4499ac9d7c0613bf59f9f862dd1db841.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6fb572246e95e27d51712064c57c5c8f03d64165406911796579df385a670e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RawIngestion where
  ingestionId : StableId
  snapshot : Ecosystem.ProjectSnapshot
  reconstruction : Toolchain.HistoricalReconstruction
  project_matches :
    reconstruction.sandboxed.capsule.project =
      snapshot.identity.projectId
  revision_matches :
    reconstruction.sandboxed.capsule.revisionId =
      snapshot.revision.revisionId
  capsule_identity_matches :
    reconstruction.sandboxed.capsule.capsuleId =
      snapshot.toolchainCapsuleId
  ingestionDigest : Digest

end Mathematics.Ingestion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Raw/Variantcb95cfcd0d283b30acb27a505ba45d7a4499ac9d7c0613bf59f9f862dd1db841.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Raw/Variantcb95cfcd0d283b30acb27a505ba45d7a4499ac9d7c0613bf59f9f862dd1db841.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9f1f2ed18d31ac04c7546c2a2be22d4459ebad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
