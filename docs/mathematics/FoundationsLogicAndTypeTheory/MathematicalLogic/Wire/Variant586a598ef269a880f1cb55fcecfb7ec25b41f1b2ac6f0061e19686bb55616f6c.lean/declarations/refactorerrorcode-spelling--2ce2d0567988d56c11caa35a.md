# RefactorErrorCode.spelling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a496346669e8b368da6d7166322a38c22a3fc1f90c8c48db94a91eb3f60f1f1a",
  "kind": "def",
  "lexical_name": "RefactorErrorCode.spelling",
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
  "slug": "refactorerrorcode-spelling--2ce2d0567988d56c11caa35a",
  "source": {
    "blob": "e577c4b74cf3459d62ea0c6af7e543029e27c3dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Wire/Variant586a598ef269a880f1cb55fcecfb7ec25b41f1b2ac6f0061e19686bb55616f6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ce2d0567988d56c11caa35acd61dfe27ca56ee3ddc4077cd34416c402318e19",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Wire/Variant586a598ef269a880f1cb55fcecfb7ec25b41f1b2ac6f0061e19686bb55616f6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a496346669e8b368da6d7166322a38c22a3fc1f90c8c48db94a91eb3f60f1f1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def RefactorErrorCode.spelling : RefactorErrorCode → String
  | .invalidSchema => "INVALID_SCHEMA"
  | .unsupportedProtocolVersion => "UNSUPPORTED_PROTOCOL_VERSION"
  | .invalidRequest => "INVALID_REQUEST"
  | .unknownOperation => "UNKNOWN_OPERATION"
  | .declarationNotFound => "DECLARATION_NOT_FOUND"
  | .moduleNotFound => "MODULE_NOT_FOUND"
  | .staleProject => "STALE_PROJECT"
  | .staleFile => "STALE_FILE"
  | .pathOutsideRoot => "PATH_OUTSIDE_ROOT"
  | .pathSymlinkEscape => "PATH_SYMLINK_ESCAPE"
  | .sourceRangeMismatch => "SOURCE_RANGE_MISMATCH"
  | .sourceTextHashMismatch => "SOURCE_TEXT_HASH_MISMATCH"
  | .typeHashMismatch => "TYPE_HASH_MISMATCH"
  | .overlappingEdits => "OVERLAPPING_EDITS"
  | .statementChange => "STATEMENT_CHANGE"
  | .publicApiChange => "PUBLIC_API_CHANGE"
  | .axiomGrowth => "AXIOM_GROWTH"
  | .importCycle => "IMPORT_CYCLE"
  | .candidateQuarantineViolation => "CANDIDATE_QUARANTINE_VIOLATION"
  | .leanParseError => "LEAN_PARSE_ERROR"
  | .leanElaborationError => "LEAN_ELABORATION_ERROR"
  | .leanBuildError => "LEAN_BUILD_ERROR"
  | .leanTimeout => "LEAN_TIMEOUT"
  | .providerUnavailable => "PROVIDER_UNAVAILABLE"
  | .providerTimeout => "PROVIDER_TIMEOUT"
  | .providerOutputTooLarge => "PROVIDER_OUTPUT_TOO_LARGE"
  | .modelSchemaError => "MODEL_SCHEMA_ERROR"
  | .modelAuthorityError => "MODEL_AUTHORITY_ERROR"
  | .repairBudgetExhausted => "REPAIR_BUDGET_EXHAUSTED"
  | .sessionStateError => "SESSION_STATE_ERROR"
  | .reviewDigestMismatch => "REVIEW_DIGEST_MISMATCH"
  | .applyBaseChanged => "APPLY_BASE_CHANGED"
  | .applyRollback => "APPLY_ROLLBACK"
  | .cancelled => "CANCELLED"
  | .internalError => "INTERNAL_ERROR"

@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Wire/Variant586a598ef269a880f1cb55fcecfb7ec25b41f1b2ac6f0061e19686bb55616f6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Wire/Variant586a598ef269a880f1cb55fcecfb7ec25b41f1b2ac6f0061e19686bb55616f6c.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e577c4b74cf3459d62ea0c6af7e543029e27c3dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
