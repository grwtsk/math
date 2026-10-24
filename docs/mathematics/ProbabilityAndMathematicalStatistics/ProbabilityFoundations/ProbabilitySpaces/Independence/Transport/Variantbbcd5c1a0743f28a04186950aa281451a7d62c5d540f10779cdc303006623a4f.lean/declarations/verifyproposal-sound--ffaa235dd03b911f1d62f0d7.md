# verifyProposal_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ea2603a-36ee-dfff-acdc-f83e08f3b8a7",
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
  "slug": "verifyproposal-sound--ffaa235dd03b911f1d62f0d7",
  "source": {
    "blob": "ca86acec14bbe7873b109d6f3cba594d11d312df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 356,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantbbcd5c1a0743f28a04186950aa281451a7d62c5d540f10779cdc303006623a4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffaa235dd03b911f1d62f0d7f4889f8d54135c451d5a8fc0c771df2ccd38ed81",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantbbcd5c1a0743f28a04186950aa281451a7d62c5d540f10779cdc303006623a4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ea2603a-36ee-dfff-acdc-f83e08f3b8a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–418.

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

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantbbcd5c1a0743f28a04186950aa281451a7d62c5d540f10779cdc303006623a4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantbbcd5c1a0743f28a04186950aa281451a7d62c5d540f10779cdc303006623a4f.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca86acec14bbe7873b109d6f3cba594d11d312df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
