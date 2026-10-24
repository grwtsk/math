# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Proposal.Variantce421983d0dd76596900967ead733ba1c1f62062db1dfcf4ff7b52507b3543bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cb959cfc888ad609914000b24b9641360e8e63a` · SHA-256 `ce421983d0dd76596900967ead733ba1c1f62062db1dfcf4ff7b52507b3543bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.Transport.Contract
public import Surface.Core.Transport.Revision

/-!
# Immutable generic transport proposals

An admitted proposal is proof-bearing. It records every value checked by the
pure verifier so commit code never needs to trust a Boolean classification or
reconstruct a runtime gate.
-/

public section

namespace Surface.Core.Transport

universe u v w x

@[surface_novel]
structure SourceSnapshot (Host : Type u) (Payload : Type v) where
  schemaVersion : Nat
  contractHash : Hash256
  sourceHost : Host
  source : Revisioned Payload
  snapshotHash : Hash256
deriving DecidableEq, Repr

@[surface_novel]
structure RawProposal (Host : Type u) (EdgeId : Type v) (Raw : Type w) where
  schemaVersion : Nat
  contractHash : Hash256
  sourceSnapshotHash : Hash256
  algorithmVersion : Nat
  revision : Nat
  edgeId : EdgeId
  claimedSource : Host
  claimedTarget : Host
  source : Raw
  proposed : Raw
deriving DecidableEq, Repr

@[surface_novel]
inductive ProposalRejection
  | invalidContract
  | invalidSchema
  | invalidHashFraming
  | contractHashMismatch
  | sourceSnapshotHashMismatch
  | algorithmMismatch
  | undeclaredEdge
  | endpointMismatch
  | revisionOutOfRange
  | rawDecodeFailure
  | sourceMismatch
  | expectedUpdateMismatch
  | invariantViolation
  | staleRevision
  | equalRevisionConflict
deriving DecidableEq, Repr

@[expose] def MergeAdmissible {Payload : Type*} :
    MergeDecision Payload → Prop
  | .accepted _ => True
  | .replay _ => True
  | .stale _ _ => False
  | .conflict _ _ => False

instance {Payload : Type*} (decision : MergeDecision Payload) :
    Decidable (MergeAdmissible decision) := by
  cases decision <;> unfold MergeAdmissible <;> infer_instance

variable {Host : Type u} {EdgeId : Type v}
variable {Raw : Type w} {Payload : Type x}
variable [Fintype Host] [DecidableEq Host]
variable [Fintype EdgeId] [DecidableEq EdgeId]

@[surface_novel, surface_certificate]
structure AdmittedProposal (Host : Type u) (EdgeId : Type v)
    (Raw : Type w) (Payload : Type x)
    [Fintype Host] [DecidableEq Host]
    [Fintype EdgeId] [DecidableEq EdgeId]
    [DecidableEq Payload] where
  contract : TransportContract Host EdgeId
  codec : PayloadCodec Raw Payload
  semantics : PayloadSemantics Payload
  snapshot : SourceSnapshot Host Payload
  register : LwwRegister Payload
  proposal : RawProposal Host EdgeId Raw
  edge : DeclaredEdge Host EdgeId
  source : Revisioned Payload
  output : Revisioned Payload
  contractValid : contract.Valid semantics
  schemaMatches :
    proposal.schemaVersion = transportSchemaVersionV1 ∧
      snapshot.schemaVersion = transportSchemaVersionV1
  hashFraming :
    proposal.contractHash.Valid ∧ proposal.sourceSnapshotHash.Valid ∧
      snapshot.contractHash.Valid ∧ snapshot.snapshotHash.Valid
  contractHashMatches :
    proposal.contractHash = contract.contractHash ∧
      snapshot.contractHash = contract.contractHash
  snapshotHashMatches : proposal.sourceSnapshotHash = snapshot.snapshotHash
  algorithmMatches :
    proposal.algorithmVersion = contract.payloadDescriptor.algorithmVersion
  edgeDeclared : edge ∈ contract.routing.edges
  edgeIdentity : edge.edgeId = proposal.edgeId
  endpointsMatch :
    edge.source = proposal.claimedSource ∧
      edge.target = proposal.claimedTarget ∧
      proposal.claimedSource = snapshot.sourceHost
  revisionBound : proposal.revision < revisionModulus
  revisionMatches :
    source.revision.val = proposal.revision ∧
      output.revision.val = proposal.revision
  sourceDecoded : codec.decode? proposal.source = some source.value
  outputDecoded : codec.decode? proposal.proposed = some output.value
  sourceRawMatches : codec.rawMatches proposal.source source.value
  outputRawMatches : codec.rawMatches proposal.proposed output.value
  sourceMatches : source = snapshot.source
  expectedOutput : output = semantics.expectedUpdate source
  invariantPreserved : semantics.invariant output.value
  mergeDecision : MergeDecision Payload
  mergeClassified : merge register output = mergeDecision
  mergeAdmissible : MergeAdmissible mergeDecision

@[surface_novel]
inductive VerificationResult (Host : Type u) (EdgeId : Type v)
    (Raw : Type w) (Payload : Type x)
    [Fintype Host] [DecidableEq Host]
    [Fintype EdgeId] [DecidableEq EdgeId]
    [DecidableEq Payload] where
  | admitted (value : AdmittedProposal Host EdgeId Raw Payload)
  | rejected (reason : ProposalRejection)

end Surface.Core.Transport
```
