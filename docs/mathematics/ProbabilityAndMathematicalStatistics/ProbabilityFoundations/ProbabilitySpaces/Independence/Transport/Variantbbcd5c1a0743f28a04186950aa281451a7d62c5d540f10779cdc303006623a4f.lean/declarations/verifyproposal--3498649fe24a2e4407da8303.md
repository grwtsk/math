# verifyProposal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9080feb17ee199163d1859924e38766989e99405a865bb0bae0c5438567fea3b",
  "kind": "def",
  "lexical_name": "verifyProposal",
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
  "slug": "verifyproposal--3498649fe24a2e4407da8303",
  "source": {
    "blob": "ca86acec14bbe7873b109d6f3cba594d11d312df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 215,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantbbcd5c1a0743f28a04186950aa281451a7d62c5d540f10779cdc303006623a4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3498649fe24a2e4407da8303b5bd1dc4043d5a11cb566e0547e99b924b2cd820",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantbbcd5c1a0743f28a04186950aa281451a7d62c5d540f10779cdc303006623a4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9080feb17ee199163d1859924e38766989e99405a865bb0bae0c5438567fea3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def verifyProposal
    (contract : RoutingContract Host EdgeId)
    (snapshot : SourceSnapshot Host)
    (register : LwwRegister xyzFormatV1)
    (proposal : RawProposal Host EdgeId) : VerificationResult Host EdgeId :=
  if hcontract : contract.Valid then
    if hschema : proposal.schemaVersion = xyzRoutingSchemaVersionV1 ∧
        snapshot.schemaVersion = xyzRoutingSchemaVersionV1 then
      if hframing : proposal.contractHash.Valid ∧
          proposal.sourceSnapshotHash.Valid ∧ snapshot.contractHash.Valid ∧
          snapshot.snapshotHash.Valid then
        if hcontractHash : proposal.contractHash = contract.contractHash ∧
            snapshot.contractHash = contract.contractHash then
          if hsnapshotHash :
              proposal.sourceSnapshotHash = snapshot.snapshotHash then
            if halgorithm : proposal.algorithmVersion = contract.algorithmVersion then
              match hfind : findDeclaredEdge contract proposal.edgeId with
              | none => .rejected .undeclaredEdge
              | some edge =>
                  if hendpoints : edge.source = proposal.claimedSource ∧
                      edge.target = proposal.claimedTarget ∧
                      proposal.claimedSource = snapshot.sourceHost then
                    if hrevision : proposal.revision < revisionModulus then
                      let revision : Revision := ⟨proposal.revision, hrevision⟩
                      match rangeCheckedXYZ? proposal.source,
                          rangeCheckedXYZ? proposal.proposed with
                      | some checkedSource, some checkedProposed =>
                          let source : RevisionedXYZ xyzFormatV1 :=
                            ⟨revision, checkedSource.1⟩
                          let output : RevisionedXYZ xyzFormatV1 :=
                            ⟨revision, checkedProposed.1⟩
                          if hsource : source = snapshot.source then
                            if hexpected : output = leanExpectedUpdate source then
                              if hinvariant : normalizedTristimulusInvariant
                                  xyzFormatV1 output.value then
                                match hmerge : merge register output with
                                | .stale _ _ => .rejected .staleRevision
                                | .conflict _ _ =>
                                    .rejected .equalRevisionConflict
                                | .accepted next =>
                                    .admitted {
                                      contract := contract
                                      snapshot := snapshot
                                      register := register
                                      proposal := proposal
                                      edge := edge
                                      source := source
                                      output := output
                                      contractValid := hcontract
                                      schemaMatches := hschema
                                      hashFraming := hframing
                                      contractHashMatches := hcontractHash
                                      snapshotHashMatches := hsnapshotHash
                                      algorithmMatches := halgorithm
                                      edgeDeclared := by
                                        apply (Finset.mem_sort
                                          (r := contract.canonicalEdgeLE)).mp
                                        exact List.mem_of_find?_eq_some hfind
                                      edgeIdentity := by
                                        have predicateTrue : decide
                                            (edge.edgeId = proposal.edgeId) = true :=
                                          List.find?_some
                                            (p := fun candidate :
                                              DeclaredEdge Host EdgeId ↦ decide
                                                (candidate.edgeId = proposal.edgeId))
                                            (l := contract.sortedCanonicalEdges)
                                            (a := edge) (by
                                              simpa only [findDeclaredEdge]
                                                using hfind)
                                        exact of_decide_eq_true predicateTrue
                                      endpointsMatch := hendpoints
                                      revisionBound := hrevision
                                      revisionMatches := ⟨rfl, rfl⟩
                                      sourceRawMatches := checkedSource.2
                                      outputRawMatches := checkedProposed.2
                                      sourceMatches := hsource
                                      expectedOutput := hexpected
                                      invariantPreserved := hinvariant
                                      mergeDecision := .accepted next
                                      mergeClassified := hmerge
                                      mergeAdmissible := by trivial
                                    }
                                | .replay current =>
                                    .admitted {
                                      contract := contract
                                      snapshot := snapshot
                                      register := register
                                      proposal := proposal
                                      edge := edge
                                      source := source
                                      output := output
                                      contractValid := hcontract
                                      schemaMatches := hschema
                                      hashFraming := hframing
                                      contractHashMatches := hcontractHash
                                      snapshotHashMatches := hsnapshotHash
                                      algorithmMatches := halgorithm
                                      edgeDeclared := by
                                        apply (Finset.mem_sort
                                          (r := contract.canonicalEdgeLE)).mp
                                        exact List.mem_of_find?_eq_some hfind
                                      edgeIdentity := by
                                        have predicateTrue : decide
                                            (edge.edgeId = proposal.edgeId) = true :=
                                          List.find?_some
                                            (p := fun candidate :
                                              DeclaredEdge Host EdgeId ↦ decide
                                                (candidate.edgeId = proposal.edgeId))
                                            (l := contract.sortedCanonicalEdges)
                                            (a := edge) (by
                                              simpa only [findDeclaredEdge]
                                                using hfind)
                                        exact of_decide_eq_true predicateTrue
                                      endpointsMatch := hendpoints
                                      revisionBound := hrevision
                                      revisionMatches := ⟨rfl, rfl⟩
                                      sourceRawMatches := checkedSource.2
                                      outputRawMatches := checkedProposed.2
                                      sourceMatches := hsource
                                      expectedOutput := hexpected
                                      invariantPreserved := hinvariant
                                      mergeDecision := .replay current
                                      mergeClassified := hmerge
                                      mergeAdmissible := by trivial
                                    }
                              else .rejected .colorInvariantViolation
                            else .rejected .expectedUpdateMismatch
                          else .rejected .sourceMismatch
                      | _, _ => .rejected .channelOutOfRange
                    else .rejected .revisionOutOfRange
                  else .rejected .edgeEndpointMismatch
            else .rejected .invalidAlgorithmVersion
          else .rejected .invalidSourceSnapshotHash
        else .rejected .invalidContractHash
      else .rejected .invalidHashFraming
    else .rejected .invalidSchema
  else .rejected .internalContractInvalid

/-! ## Admission consequences and focused rejection firewalls -/

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantbbcd5c1a0743f28a04186950aa281451a7d62c5d540f10779cdc303006623a4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantbbcd5c1a0743f28a04186950aa281451a7d62c5d540f10779cdc303006623a4f.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca86acec14bbe7873b109d6f3cba594d11d312df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
