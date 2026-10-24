# PreparedNetworkSurgeryProposal.Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:182b10b65220d90abafa300b5e69f7589d553984b5d8cc767a5d1b850775c511",
  "kind": "structure",
  "lexical_name": "PreparedNetworkSurgeryProposal.Valid",
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
  "slug": "preparednetworksurgeryproposal-valid--49b98ccc7f2f577ea18f5615",
  "source": {
    "blob": "551f4f6b5029625f9608b1c1c1478512d5979b06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 203,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Move/Varianta6f3f6465657e6bd0d8ef3e9ead51a23f5fc44d7711c2d341f112e945f517217.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49b98ccc7f2f577ea18f56151d812f5aa9462e0a8d2c93722cff43914b917706",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Move/Varianta6f3f6465657e6bd0d8ef3e9ead51a23f5fc44d7711c2d341f112e945f517217.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:182b10b65220d90abafa300b5e69f7589d553984b5d8cc767a5d1b850775c511`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PreparedNetworkSurgeryProposal.Valid
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal) : Prop where
  internalContractValid : proposal.internalContractValid = true
  contractIdentity : proposal.contractHash = context.contractHash
  sourceIdentity : proposal.sourceSnapshotHash = context.sourceSnapshotHash
  sessionIdentity : proposal.sessionId = context.sessionId
  baseRevisionFresh : proposal.baseRevision = context.revision
  proposalRevisionFresh : context.revision < proposal.proposalRevision
  notEqualRevisionConflict : ¬ proposal.HasEqualRevisionConflict context
  notReplay : ¬ proposal.IsReplay context
  piecesDeclared : proposal.PiecesDeclared context
  edgesDeclared : proposal.EdgesDeclared context
  operationIdsNodup : proposal.operationIds.Nodup
  sourceRangesMatch : proposal.sourceRangesMatch = true
  operationsOrderedAndNonoverlapping :
    proposal.operationsOrderedAndNonoverlapping = true
  capacityWithinLimits : proposal.capacityWithinLimits = true
  boundaryBalanced : BoundaryBalanced proposal.boundary
  bracketProjectionValid : balanced proposal.afterProjection
  declarationIdentity :
    proposal.beforeDeclaration? = proposal.afterDeclaration?
  theoremStatementIdentity :
    proposal.beforeStatementHash? = proposal.afterStatementHash?
  publicApiPreserved : proposal.publicApiPreserved = true
  classificationsPreserved : proposal.classificationsPreserved = true
  axiomPolicyPreserved : proposal.axiomPolicyPreserved = true
  languageValidationObserved : proposal.languageValidationObserved = true
  expectedDeterministicResult : proposal.expectedDeterministicResult = true

/-!
This is the finite Lean verifier's currently modeled rejection subset, not the
wire-level V1 registry.  The specification/Rust registry additionally orders
`invalidSchema`, `unsupportedVersion`, `invalidHashFraming`,
`invalidParserFingerprint`, `revisionOutOfRange`, `pathOutsideRoot`,
`pathSymlinkEscape`, `sourceTextHashMismatch`, `packetInvalid`, `importCycle`,
`unresolvedReference`, four language/build-specific failures,
`patchRoundtripFailure`, `reviewDigestMismatch`, `applyBaseChanged`, and
`applyRollback`.  Conversely, the two final constructors below are Lean-local
aggregate/model failures.  Do not claim cross-language rejection conformance
until those stage-specific receipt gates replace the aggregates under a
versioned protocol migration.
-/
@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Move/Varianta6f3f6465657e6bd0d8ef3e9ead51a23f5fc44d7711c2d341f112e945f517217.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Move/Varianta6f3f6465657e6bd0d8ef3e9ead51a23f5fc44d7711c2d341f112e945f517217.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `551f4f6b5029625f9608b1c1c1478512d5979b06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
