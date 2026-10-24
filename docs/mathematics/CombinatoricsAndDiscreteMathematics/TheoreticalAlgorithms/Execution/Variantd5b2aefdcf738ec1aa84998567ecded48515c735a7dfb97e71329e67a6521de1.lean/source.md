# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Execution.Variantd5b2aefdcf738ec1aa84998567ecded48515c735a7dfb97e71329e67a6521de1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92420bf4dc091a1d983389fc73284d226a89ac2c` · SHA-256 `d5b2aefdcf738ec1aa84998567ecded48515c735a7dfb97e71329e67a6521de1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Authority.Evidence
import Mathematics.Capability.Request

/-!
# Reference-monitor authorization and execution evidence

An execution receipt witnesses one lease-bound runtime action.  Its evidence
kind is `runtimeObservation`, so it cannot promote a proposition to theorem
authority.
-/

namespace Mathematics.Capability

namespace Lease

structure Allows
    (lease : Lease)
    (revocations : List Revocation)
    (time : Nat)
    (request : OperationRequest) : Prop where
  valid : lease.ValidAt revocations time
  holder_bound :
    lease.grant.holder = request.principal
  device_bound :
    lease.capability.device = request.device
  element_bound :
    request.element ∈ lease.capability.elements
  purpose_bound :
    lease.capability.purpose = request.purpose
  snapshot_bound :
    lease.capability.snapshot = request.snapshot
  effect_bound :
    request.effect ∈ lease.capability.effects.admits

theorem Allows.with_future_revocation
    {lease : Lease}
    {revocations : List Revocation}
    {time : Nat}
    {request : OperationRequest}
    (authorization : lease.Allows revocations time request)
    (revocation : Revocation)
    (future : time < revocation.effectiveAt) :
    lease.Allows (revocation :: revocations) time request := by
  refine
    { authorization with
      valid := ?_ }
  refine
    { authorization.valid with
      beforeEveryRevocation := ?_ }
  intro candidate listed sameLease
  simp only [List.mem_cons] at listed
  rcases listed with rfl | listed
  · exact future
  · exact
      authorization.valid.beforeEveryRevocation
        candidate listed sameLease

end Lease

inductive MonitorDecision
    (lease : Lease)
    (revocations : List Revocation)
    (time : Nat)
    (request : OperationRequest)
  | denied (reason : String)
  | allowed (authorization : lease.Allows revocations time request)

structure ExecutionReceipt where
  lease : Lease
  revocations : List Revocation
  time : Nat
  request : OperationRequest
  authorization :
    lease.Allows revocations time request

def ExecutionReceipt.evidenceKind
    (_ : ExecutionReceipt) :
    Authority.EvidenceKind :=
  .runtimeObservation

@[simp] theorem execution_receipt_has_no_theorem_authority
    (receipt : ExecutionReceipt) :
    Authority.contributesTheoremAuthority receipt.evidenceKind = false :=
  rfl

/-- A model may propose a request; the proposal contains no lease or receipt. -/
structure ModelProposal where
  model : Principal
  request : OperationRequest
  evidence : EvidenceId

def ModelProposal.evidenceKind
    (_ : ModelProposal) :
    Authority.EvidenceKind :=
  .modelInference

@[simp] theorem model_proposal_has_no_theorem_authority
    (proposal : ModelProposal) :
    Authority.contributesTheoremAuthority proposal.evidenceKind = false :=
  rfl

end Mathematics.Capability
```
