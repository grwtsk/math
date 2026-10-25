# verifyProposal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9630c91015d874991857885bb3abbaa79042491f08ce2e8fd96b5a9f151232b9",
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
  "slug": "verifyproposal--7bb37a928802b044e954c50a",
  "source": {
    "blob": "be97ad5e8b79d8e9b21afdaedc7211386f4b5ada",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4f2dbea816f2eef136ca9684c501cda4be794c65ee26126d1273a1e99789bae5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bb37a928802b044e954c50aca33c1596b6d2b2416367d023db19cc9ca77b561",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4f2dbea816f2eef136ca9684c501cda4be794c65ee26126d1273a1e99789bae5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9630c91015d874991857885bb3abbaa79042491f08ce2e8fd96b5a9f151232b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def verifyProposal [DecidableEq Payload]
    (contract : TransportContract Host EdgeId)
    (codec : PayloadCodec Raw Payload)
    (semantics : PayloadSemantics Payload)
    (invariantDecidable : DecidablePred semantics.invariant)
    (snapshot : SourceSnapshot Host Payload)
    (register : LwwRegister Payload)
    (proposal : RawProposal Host EdgeId Raw) :
    VerificationResult Host EdgeId Raw Payload := by
  letI : DecidablePred semantics.invariant := invariantDecidable
  exact
    if hcontract : contract.Valid semantics then
      if hschema : proposal.schemaVersion = transportSchemaVersionV1 ∧
          snapshot.schemaVersion = transportSchemaVersionV1 then
        if hframing : proposal.contractHash.Valid ∧
            proposal.sourceSnapshotHash.Valid ∧ snapshot.contractHash.Valid ∧
            snapshot.snapshotHash.Valid then
          if hcontractHash : proposal.contractHash = contract.contractHash ∧
              snapshot.contractHash = contract.contractHash then
            if hsnapshotHash :
                proposal.sourceSnapshotHash = snapshot.snapshotHash then
              if halgorithm : proposal.algorithmVersion =
                  contract.payloadDescriptor.algorithmVersion then
                match hfind : findDeclaredEdge contract proposal.edgeId with
                | none => .rejected .undeclaredEdge
                | some edge =>
                    if hendpoints : edge.source = proposal.claimedSource ∧
                        edge.target = proposal.claimedTarget ∧
                        proposal.claimedSource = snapshot.sourceHost then
                      if hrevision : proposal.revision < revisionModulus then
                        let revision : Revision := ⟨proposal.revision, hrevision⟩
                        match hsourceDecode : codec.decode? proposal.source,
                            houtputDecode : codec.decode? proposal.proposed with
                        | some decodedSource, some decodedOutput =>
                            let source : Revisioned Payload :=
                              ⟨revision, decodedSource⟩
                            let output : Revisioned Payload :=
                              ⟨revision, decodedOutput⟩
                            if hsource : source = snapshot.source then
                              if hexpected : output = semantics.expectedUpdate source then
                                if hinvariant : semantics.invariant output.value then
                                  match hmerge : merge register output with
                                  | .stale _ _ => .rejected .staleRevision
                                  | .conflict _ _ =>
                                      .rejected .equalRevisionConflict
                                  | .accepted next =>
                                      .admitted {
                                        contract := contract
                                        codec := codec
                                        semantics := semantics
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
                                            (r := contract.routing.canonicalEdgeLE)).mp
                                          exact List.mem_of_find?_eq_some hfind
                                        edgeIdentity := by
                                          have predicateTrue :
                                              decide (edge.edgeId = proposal.edgeId) = true :=
                                            List.find?_some
                                              (p := fun candidate :
                                                  DeclaredEdge Host EdgeId ↦
                                                decide
                                                  (candidate.edgeId = proposal.edgeId))
                                              (l := contract.routing.sortedCanonicalEdges)
                                              (a := edge) (by
                                                simpa only [findDeclaredEdge]
                                                  using hfind)
                                          exact of_decide_eq_true predicateTrue
                                        endpointsMatch := hendpoints
                                        revisionBound := hrevision
                                        revisionMatches := ⟨rfl, rfl⟩
                                        sourceDecoded := hsourceDecode
                                        outputDecoded := houtputDecode
                                        sourceRawMatches :=
                                          codec.decodeSound hsourceDecode
                                        outputRawMatches :=
                                          codec.decodeSound houtputDecode
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
                                        codec := codec
                                        semantics := semantics
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
                                            (r := contract.routing.canonicalEdgeLE)).mp
                                          exact List.mem_of_find?_eq_some hfind
                                        edgeIdentity := by
                                          have predicateTrue :
                                              decide (edge.edgeId = proposal.edgeId) = true :=
                                            List.find?_some
                                              (p := fun candidate :
                                                  DeclaredEdge Host EdgeId ↦
                                                decide
                                                  (candidate.edgeId = proposal.edgeId))
                                              (l := contract.routing.sortedCanonicalEdges)
                                              (a := edge) (by
                                                simpa only [findDeclaredEdge]
                                                  using hfind)
                                          exact of_decide_eq_true predicateTrue
                                        endpointsMatch := hendpoints
                                        revisionBound := hrevision
                                        revisionMatches := ⟨rfl, rfl⟩
                                        sourceDecoded := hsourceDecode
                                        outputDecoded := houtputDecode
                                        sourceRawMatches :=
                                          codec.decodeSound hsourceDecode
                                        outputRawMatches :=
                                          codec.decodeSound houtputDecode
                                        sourceMatches := hsource
                                        expectedOutput := hexpected
                                        invariantPreserved := hinvariant
                                        mergeDecision := .replay current
                                        mergeClassified := hmerge
                                        mergeAdmissible := by trivial
                                      }
                                else .rejected .invariantViolation
                              else .rejected .expectedUpdateMismatch
                            else .rejected .sourceMismatch
                        | _, _ => .rejected .rawDecodeFailure
                      else .rejected .revisionOutOfRange
                    else .rejected .endpointMismatch
              else .rejected .algorithmMismatch
            else .rejected .sourceSnapshotHashMismatch
          else .rejected .contractHashMismatch
        else .rejected .invalidHashFraming
      else .rejected .invalidSchema
    else .rejected .invalidContract

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4f2dbea816f2eef136ca9684c501cda4be794c65ee26126d1273a1e99789bae5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verifier/Variant4f2dbea816f2eef136ca9684c501cda4be794c65ee26126d1273a1e99789bae5.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be97ad5e8b79d8e9b21afdaedc7211386f4b5ada` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
