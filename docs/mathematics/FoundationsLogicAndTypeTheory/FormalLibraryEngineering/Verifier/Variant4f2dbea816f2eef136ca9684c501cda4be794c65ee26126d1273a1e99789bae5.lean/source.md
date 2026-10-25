# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Verifier.Variant4f2dbea816f2eef136ca9684c501cda4be794c65ee26126d1273a1e99789bae5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be97ad5e8b79d8e9b21afdaedc7211386f4b5ada` · SHA-256 `4f2dbea816f2eef136ca9684c501cda4be794c65ee26126d1273a1e99789bae5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.Transport.Proposal
import Mathlib.Tactic

/-!
# Pure ordered generic proposal verifier

Every rejection gate precedes admission and the function has no mutation
capability. Successful output is a proof-bearing `AdmittedProposal`.
-/

public section

namespace Surface.Core.Transport

universe u v w x

variable {Host : Type u} {EdgeId : Type v}
variable {Raw : Type w} {Payload : Type x}
variable [Fintype Host] [DecidableEq Host]
variable [Fintype EdgeId] [DecidableEq EdgeId]

@[expose] def findDeclaredEdge
    (contract : TransportContract Host EdgeId) (edgeId : EdgeId) :
    Option (DeclaredEdge Host EdgeId) :=
  contract.routing.sortedCanonicalEdges.find? (fun edge ↦
    decide (edge.edgeId = edgeId))

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
theorem verifyProposal_sound [DecidableEq Payload]
    (contract : TransportContract Host EdgeId)
    (codec : PayloadCodec Raw Payload)
    (semantics : PayloadSemantics Payload)
    (invariantDecidable : DecidablePred semantics.invariant)
    (snapshot : SourceSnapshot Host Payload)
    (register : LwwRegister Payload)
    (proposal : RawProposal Host EdgeId Raw)
    (admitted : AdmittedProposal Host EdgeId Raw Payload)
    (result : verifyProposal contract codec semantics invariantDecidable
      snapshot register proposal = .admitted admitted) :
    admitted.contract.Valid admitted.semantics ∧
      (admitted.proposal.schemaVersion = transportSchemaVersionV1 ∧
        admitted.snapshot.schemaVersion = transportSchemaVersionV1) ∧
      (admitted.proposal.contractHash.Valid ∧
        admitted.proposal.sourceSnapshotHash.Valid ∧
        admitted.snapshot.contractHash.Valid ∧
        admitted.snapshot.snapshotHash.Valid) ∧
      (admitted.proposal.contractHash = admitted.contract.contractHash ∧
        admitted.snapshot.contractHash = admitted.contract.contractHash) ∧
      admitted.proposal.sourceSnapshotHash = admitted.snapshot.snapshotHash ∧
      admitted.proposal.algorithmVersion =
        admitted.contract.payloadDescriptor.algorithmVersion ∧
      admitted.edge ∈ admitted.contract.routing.edges ∧
      admitted.edge.edgeId = admitted.proposal.edgeId ∧
      (admitted.edge.source = admitted.proposal.claimedSource ∧
        admitted.edge.target = admitted.proposal.claimedTarget ∧
        admitted.proposal.claimedSource = admitted.snapshot.sourceHost) ∧
      admitted.proposal.revision < revisionModulus ∧
      (admitted.source.revision.val = admitted.proposal.revision ∧
        admitted.output.revision.val = admitted.proposal.revision) ∧
      admitted.codec.decode? admitted.proposal.source =
        some admitted.source.value ∧
      admitted.codec.decode? admitted.proposal.proposed =
        some admitted.output.value ∧
      admitted.codec.rawMatches admitted.proposal.source admitted.source.value ∧
      admitted.codec.rawMatches admitted.proposal.proposed admitted.output.value ∧
      admitted.source = admitted.snapshot.source ∧
      admitted.output = admitted.semantics.expectedUpdate admitted.source ∧
      admitted.semantics.invariant admitted.output.value ∧
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
    admitted.sourceDecoded,
    admitted.outputDecoded,
    admitted.sourceRawMatches,
    admitted.outputRawMatches,
    admitted.sourceMatches,
    admitted.expectedOutput,
    admitted.invariantPreserved,
    admitted.mergeClassified,
    admitted.mergeAdmissible⟩

end Surface.Core.Transport
```
