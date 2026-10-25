# orderedSurgeryGates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3888a03aa99a4027219e6ac3ee283f53385e2d03883389a444551dcdee6e3286",
  "kind": "def",
  "lexical_name": "orderedSurgeryGates",
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
  "slug": "orderedsurgerygates--0ab8ceadf1ba0e0bb6a469f3",
  "source": {
    "blob": "af5cf0c405f1c2be94fc863e325f3f88c0ad8ef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Verifier/Variantf107973b8651c597882553d4916a3fb356eeb8f89e044299c52560f5c005bad6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ab8ceadf1ba0e0bb6a469f3b5f517ab71fec3906cc80e454f2b7b202b847121",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Verifier/Variantf107973b8651c597882553d4916a3fb356eeb8f89e044299c52560f5c005bad6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3888a03aa99a4027219e6ac3ee283f53385e2d03883389a444551dcdee6e3286`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] noncomputable def orderedSurgeryGates
    (context : SurgeryAdmissionContextV1) (proposal : SurgeryProposalV1) :
    List SurgeryGateObservation :=
  by
    letI := Classical.propDecidable
    exact [⟨decide (context.schemaVersion = 1 ∧
      proposal.schemaVersion = context.schemaVersion ∧
      proposal.algorithmVersion = context.algorithmVersion),
      .schemaOrAlgorithmMismatch⟩,
    ⟨decide (proposal.transportContractHash = context.transportContractHash ∧
      proposal.baseSourceSnapshotHash = context.sourceSnapshotHash),
      .contractOrSnapshotMismatch⟩,
    ⟨decide (proposal.baseRepositoryRevision = context.repositoryRevision),
      .staleRepositoryRevision⟩,
    ⟨proposalRevisionNotStaleBool context proposal, .staleRepositoryRevision⟩,
    ⟨noEqualRevisionConflictBool context proposal,
      .equalRevisionSurgeryConflict⟩,
    ⟨proposal.observations.structuralPacketValid, .invalidStructuralPacket⟩,
    ⟨proposal.observations.languageSupported, .unsupportedLanguage⟩,
    ⟨decide (proposal.parserFingerprint = context.parserFingerprint) &&
      proposal.observations.parserFingerprintMatches,
      .parserFingerprintMismatch⟩,
    ⟨proposal.observations.packetHashMatches, .packetHashMismatch⟩,
    ⟨proposal.observations.pathsAllowed, .sourceSpanMismatch⟩,
    ⟨proposal.observations.sourceSpansValid, .sourceSpanMismatch⟩,
    ⟨proposal.observations.sourceBytesAndHashesMatch,
      .sourceBytesOrHashesMismatch⟩,
    ⟨proposal.observations.operationsSupported,
      .unsupportedSurgeryOperation⟩,
    ⟨decide proposal.Keyed, .invalidStructuralPacket⟩,
    ⟨decide (CompiledEditsOrdered proposal.bundle.forwardEdits),
      .unsupportedSurgeryOperation⟩,
    ⟨decide (CompiledEditsNonoverlapping proposal.bundle.forwardEdits),
      .overlappingCompiledEdits⟩,
    ⟨proposal.observations.nodesResolvedExactly, .nodeNotFound⟩,
    ⟨proposal.observations.nodeCorrespondenceUnambiguous,
      .ambiguousNodeCorrespondence⟩,
    ⟨proposal.observations.compiledHashesMatch, .compiledHashMismatch⟩,
    ⟨proposal.observations.canonicalParseAccepted,
      .compilerValidationFailed⟩,
    ⟨proposal.observations.parseRecoveryAbsent,
      .parseRecoveryNotAdmissible⟩,
    ⟨proposal.observations.dependencyGraphValid, .unresolvedReference⟩,
    ⟨proposal.observations.importsAcyclic, .importCycle⟩,
    ⟨proposal.observations.referencesResolved, .unresolvedReference⟩,
    ⟨proposal.observations.requestedBuildTargetsPassed,
      .compilerValidationFailed⟩,
    ⟨decide (proposal.beforeTheoremTaskIdentity? =
        proposal.afterTheoremTaskIdentity?) &&
      proposal.observations.theoremTaskIdentityPreserved,
      .leanStatementChanged⟩,
    ⟨proposal.observations.publicApiPreserved, .leanPublicApiChanged⟩,
    ⟨proposal.observations.classificationsPreserved, .leanPublicApiChanged⟩,
    ⟨proposal.observations.axiomPolicyPreserved, .leanAxiomGrowth⟩,
    ⟨proposal.observations.inverseRoundTripPassed,
      .inverseRoundtripFailed⟩,
    ⟨proposal.observations.patchRendered, .patchRenderFailed⟩,
    ⟨proposal.observations.patchApplyCheckPassed, .patchApplyCheckFailed⟩,
    ⟨proposal.observations.bracketProjectionValid,
      .bracketProjectionInvalid⟩,
    ⟨proposal.observations.structuralInvariantsHold,
      .structuralInvariantFailed⟩]

/-- Select the first failed gate, preserving deterministic rejection precedence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Verifier/Variantf107973b8651c597882553d4916a3fb356eeb8f89e044299c52560f5c005bad6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Verifier/Variantf107973b8651c597882553d4916a3fb356eeb8f89e044299c52560f5c005bad6.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5cf0c405f1c2be94fc863e325f3f88c0ad8ef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
