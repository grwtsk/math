# evaluateValidationRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0bebd95137009f39d63ef55e51ef2a3015334efe15a8279a466a03df86178053",
  "kind": "def",
  "lexical_name": "evaluateValidationRule",
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
  "slug": "evaluatevalidationrule--6189c8564ca3de7c618a861b",
  "source": {
    "blob": "3c19dae75307ac0e8f13b09e8912e2c3bd2bf4a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 91,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variant7503140e2872192ec97a1912aaa92c1118dfc226dba60f8968a9c54a7809e406.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6189c8564ca3de7c618a861b4e75332ff8a0937c0b11a1c9ee2438e9f439c274",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variant7503140e2872192ec97a1912aaa92c1118dfc226dba60f8968a9c54a7809e406.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0bebd95137009f39d63ef55e51ef2a3015334efe15a8279a466a03df86178053`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def evaluateValidationRule
    (context : ValidationContext) : ValidationRule → Bool
  | .schemaVersion => context.bundle.schema == "surface.lean-patch-bundle.v1"
  | .protocolVersion => context.protocolVersion == 1
  | .requestIdentity => context.bundle.requestId == context.expectedRequestId
  | .sessionIdentity => context.bundle.sessionId == context.expectedSessionId
  | .baseProjectFingerprint =>
      context.bundle.baseProjectFingerprint == context.expectedProjectFingerprint
  | .baseFileHashFreshness => context.baseFilesFresh
  | .allowedPathMembership =>
      context.bundle.operations.all
        (ProjectPatchOperation.targetsAllowed context.bundle.allowedPaths)
  | .sourceRangeOrdering => sourceRangesOrdered context.bundle.operations
  | .utf8BoundaryReceiptPresence => context.utf8BoundariesObserved
  | .expectedTextHash => context.expectedTextHashesMatch
  | .expectedTypeHash => context.expectedTypeHashesMatch
  | .operationCount =>
      context.bundle.operations.length ≤ context.bundle.operationCountBound
  | .operationOrdering => operationSequenceValid context.bundle.operations
  | .operationNonOverlap => operationsNonoverlap context.bundle.operations
  | .absenceOfStatementOperations =>
      context.bundle.operations.all fun operation =>
        !operation.action.changesTheoremStatement
  | .candidatePathQuarantine => context.candidateQuarantineObserved
  | .forbiddenSourceTokens => context.forbiddenTokensAbsent
  | .allowedImportPolicy => context.importsAllowed
  | .publicDeclarationPreservation => context.publicDeclarationsPreserved
  | .classificationTagPreservation => context.classificationTagsPreserved
  | .axiomGrowthPolicy => context.axiomPolicySatisfied
  | .canonicalImportQuarantine => context.canonicalImportsQuarantined
  | .modelAuthorityCeiling => decide (context.bundle.authority = .modelProposed)
  | .reviewDigest => context.expectedReviewDigest == context.observedReviewDigest

/-- The Prop specification for every finite rule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variant7503140e2872192ec97a1912aaa92c1118dfc226dba60f8968a9c54a7809e406.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variant7503140e2872192ec97a1912aaa92c1118dfc226dba60f8968a9c54a7809e406.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c19dae75307ac0e8f13b09e8912e2c3bd2bf4a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
