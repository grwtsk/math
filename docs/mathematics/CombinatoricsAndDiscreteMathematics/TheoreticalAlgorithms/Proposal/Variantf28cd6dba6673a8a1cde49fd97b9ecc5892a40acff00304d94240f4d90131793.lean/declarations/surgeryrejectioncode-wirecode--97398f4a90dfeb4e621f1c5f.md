# SurgeryRejectionCode.wireCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ded9a9b10cada909c8b443d0453ca7fd73ff35813f6158bfdf7a4e84374b2607",
  "kind": "def",
  "lexical_name": "SurgeryRejectionCode.wireCode",
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
  "slug": "surgeryrejectioncode-wirecode--97398f4a90dfeb4e621f1c5f",
  "source": {
    "blob": "683c504991f4229435dbe4681987821e1d6b84d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variantf28cd6dba6673a8a1cde49fd97b9ecc5892a40acff00304d94240f4d90131793.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97398f4a90dfeb4e621f1c5f1de742560e9dbff056b2b70ee7272488f6d1163b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variantf28cd6dba6673a8a1cde49fd97b9ecc5892a40acff00304d94240f4d90131793.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ded9a9b10cada909c8b443d0453ca7fd73ff35813f6158bfdf7a4e84374b2607`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def SurgeryRejectionCode.wireCode : SurgeryRejectionCode → String
  | .invalidStructuralPacket => "INVALID_STRUCTURAL_PACKET"
  | .unsupportedLanguage => "UNSUPPORTED_LANGUAGE"
  | .parserFingerprintMismatch => "PARSER_FINGERPRINT_MISMATCH"
  | .packetHashMismatch => "PACKET_HASH_MISMATCH"
  | .staleRepositoryRevision => "STALE_REPOSITORY_REVISION"
  | .equalRevisionSurgeryConflict => "EQUAL_REVISION_SURGERY_CONFLICT"
  | .nodeNotFound => "NODE_NOT_FOUND"
  | .ambiguousNodeCorrespondence => "AMBIGUOUS_NODE_CORRESPONDENCE"
  | .sourceSpanMismatch => "SOURCE_SPAN_MISMATCH"
  | .unsupportedSurgeryOperation => "UNSUPPORTED_SURGERY_OPERATION"
  | .overlappingCompiledEdits => "OVERLAPPING_COMPILED_EDITS"
  | .bracketProjectionInvalid => "BRACKET_PROJECTION_INVALID"
  | .parseRecoveryNotAdmissible => "PARSE_RECOVERY_NOT_ADMISSIBLE"
  | .importCycle => "IMPORT_CYCLE"
  | .unresolvedReference => "UNRESOLVED_REFERENCE"
  | .compilerValidationFailed => "COMPILER_VALIDATION_FAILED"
  | .leanStatementChanged => "LEAN_STATEMENT_CHANGED"
  | .leanPublicApiChanged => "LEAN_PUBLIC_API_CHANGED"
  | .leanAxiomGrowth => "LEAN_AXIOM_GROWTH"
  | .inverseRoundtripFailed => "INVERSE_ROUNDTRIP_FAILED"
  | .patchRenderFailed => "PATCH_RENDER_FAILED"
  | .patchApplyCheckFailed => "PATCH_APPLY_CHECK_FAILED"
  | .transactionRace => "TRANSACTION_RACE"
  | .transactionRollback => "TRANSACTION_ROLLBACK"
  | .schemaOrAlgorithmMismatch => "SCHEMA_OR_ALGORITHM_MISMATCH"
  | .contractOrSnapshotMismatch => "CONTRACT_OR_SNAPSHOT_MISMATCH"
  | .sourceBytesOrHashesMismatch => "SOURCE_BYTES_OR_HASHES_MISMATCH"
  | .compiledHashMismatch => "COMPILED_HASH_MISMATCH"
  | .structuralInvariantFailed => "STRUCTURAL_INVARIANT_FAILED"

/-- Exact per-file identities and source spans bound into a proposal key. -/
@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variantf28cd6dba6673a8a1cde49fd97b9ecc5892a40acff00304d94240f4d90131793.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variantf28cd6dba6673a8a1cde49fd97b9ecc5892a40acff00304d94240f4d90131793.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `683c504991f4229435dbe4681987821e1d6b84d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
