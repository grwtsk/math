# rejectionCodes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc3e6b467a4163e5218744381612441d90b0a9b8695a4a24699b550add16254a",
  "kind": "def",
  "lexical_name": "rejectionCodes",
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
  "slug": "rejectioncodes--c6b8697bf9419baad5fc39c5",
  "source": {
    "blob": "8d3f032637b91c06204ea6dae1ff00819770ce16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceSurgeryValidateMain/Variant0b8442162fedc898f94369eee2f48d221e585c9b29db9c08009d937da06feed1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6b8697bf9419baad5fc39c5cb9b261d4486010c6ea810ecfa1fae3f20504b48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceSurgeryValidateMain/Variant0b8442162fedc898f94369eee2f48d221e585c9b29db9c08009d937da06feed1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc3e6b467a4163e5218744381612441d90b0a9b8695a4a24699b550add16254a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rejectionCodes : List String := [
  .invalidStructuralPacket, .unsupportedLanguage,
  .parserFingerprintMismatch, .packetHashMismatch,
  .staleRepositoryRevision, .equalRevisionSurgeryConflict,
  .nodeNotFound, .ambiguousNodeCorrespondence, .sourceSpanMismatch,
  .unsupportedSurgeryOperation, .overlappingCompiledEdits,
  .bracketProjectionInvalid, .parseRecoveryNotAdmissible,
  .importCycle, .unresolvedReference, .compilerValidationFailed,
  .leanStatementChanged, .leanPublicApiChanged, .leanAxiomGrowth,
  .inverseRoundtripFailed, .patchRenderFailed, .patchApplyCheckFailed,
  .transactionRace, .transactionRollback, .schemaOrAlgorithmMismatch,
  .contractOrSnapshotMismatch, .sourceBytesOrHashesMismatch,
  .compiledHashMismatch, .structuralInvariantFailed
].map SurgeryRejectionCode.wireCode

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceSurgeryValidateMain/Variant0b8442162fedc898f94369eee2f48d221e585c9b29db9c08009d937da06feed1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceSurgeryValidateMain/Variant0b8442162fedc898f94369eee2f48d221e585c9b29db9c08009d937da06feed1.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d3f032637b91c06204ea6dae1ff00819770ce16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
