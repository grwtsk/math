# verifyProposal_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96dfa38d3735f5cec2a49ed03cd91abe9000a529",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b254fa494b16f74e234aebabb23d3ec748d232f0781fec10008e0d4e54cfdf84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:958ccd04-6c49-de6c-1d52-473d08e505a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:610bb6ca-992e-3b7c-5644-1b4a6c73e22e",
  "kind": "theorem",
  "lexical_name": "verifyProposal_sound",
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
  "slug": "verifyproposal-sound--60474de1a3c666eddaeba5ea",
  "source": {
    "blob": "96dfa38d3735f5cec2a49ed03cd91abe9000a529",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 348,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantb254fa494b16f74e234aebabb23d3ec748d232f0781fec10008e0d4e54cfdf84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60474de1a3c666eddaeba5ead8dbacc3d6462e5ec4c99a124b0f74b8ea7c907c",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantb254fa494b16f74e234aebabb23d3ec748d232f0781fec10008e0d4e54cfdf84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:610bb6ca-992e-3b7c-5644-1b4a6c73e22e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verifyProposal_sound
    (contract : RoutingContract Host EdgeId)
    (snapshot : SourceSnapshot Host)
    (register : LwwRegister xyzFormatV1)
    (proposal : RawProposal Host EdgeId)
    (admitted : AdmittedProposal Host EdgeId)
    (result : verifyProposal contract snapshot register proposal =
      .admitted admitted) :
    admitted.contract.Valid ∧
      (admitted.proposal.schemaVersion = xyzRoutingSchemaVersionV1 ∧
        admitted.snapshot.schemaVersion = xyzRoutingSchemaVersionV1) ∧
      (admitted.proposal.contractHash.Valid ∧
        admitted.proposal.sourceSnapshotHash.Valid ∧
        admitted.snapshot.contractHash.Valid ∧
        admitted.snapshot.snapshotHash.Valid) ∧
      (admitted.proposal.contractHash = admitted.contract.contractHash ∧
        admitted.snapshot.contractHash = admitted.contract.contractHash) ∧
      admitted.proposal.sourceSnapshotHash = admitted.snapshot.snapshotHash ∧
      admitted.proposal.algorithmVersion = admitted.contract.algorithmVersion ∧
      admitted.edge ∈ admitted.contract.edges ∧
      admitted.edge.edgeId = admitted.proposal.edgeId ∧
      (admitted.edge.source = admitted.proposal.claimedSource ∧
        admitted.edge.target = admitted.proposal.claimedTarget ∧
        admitted.proposal.claimedSource = admitted.snapshot.sourceHost) ∧
      admitted.proposal.revision < revisionModulus ∧
      (admitted.source.revision.val = admitted.proposal.revision ∧
        admitted.output.revision.val = admitted.proposal.revision) ∧
      (admitted.source.value.x.raw = admitted.proposal.source.x ∧
        admitted.source.value.y.raw = admitted.proposal.source.y ∧
        admitted.source.value.z.raw = admitted.proposal.source.z) ∧
      (admitted.output.value.x.raw = admitted.proposal.proposed.x ∧
        admitted.output.value.y.raw = admitted.proposal.proposed.y ∧
        admitted.output.value.z.raw = admitted.proposal.proposed.z) ∧
      admitted.source = admitted.snapshot.source ∧
      admitted.output = leanExpectedUpdate admitted.source ∧
      normalizedTristimulusInvariant xyzFormatV1 admitted.output.value ∧
      merge admitted.register admitted.output = admitted.mergeDecision ∧
      MergeAdmissible admitted.mergeDecision := by
  have _ := result
  exact ⟨
    admitted.contractValid,
    admitted.schemaMatches,
    admitted.hashFraming,
    admitted.contractHashMatches,
    admitted.snapshotHashMatches,
    admitted.algorithmMatches,
    admitted.edgeDeclared,
    admitted.edgeIdentity,
    admitted.endpointsMatch,
    admitted.revisionBound,
    admitted.revisionMatches,
    admitted.sourceRawMatches,
    admitted.outputRawMatches,
    admitted.sourceMatches,
    admitted.expectedOutput,
    admitted.invariantPreserved,
    admitted.mergeClassified,
    admitted.mergeAdmissible⟩

/-- These focused admission firewalls are the proof-level form of the named
rejections.  A malformed input may be classified at an earlier gate, but no
proof-bearing admission can exhibit any of the forbidden facts. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantb254fa494b16f74e234aebabb23d3ec748d232f0781fec10008e0d4e54cfdf84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantb254fa494b16f74e234aebabb23d3ec748d232f0781fec10008e0d4e54cfdf84.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96dfa38d3735f5cec2a49ed03cd91abe9000a529` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
