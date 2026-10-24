# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Convergence.Variantf0e9afe12a0f7ce9ee141c0f842442f9745d0d168b6237e05eca62d40c80c811

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e06dcd6f7212e30a96b7e756331d4cb4d77deca6` · SHA-256 `f0e9afe12a0f7ce9ee141c0f842442f9745d0d168b6237e05eca62d40c80c811`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.NetworkSurgery.Transport
public import Surface.Core.Transport.Convergence

/-! # Full-state viewer convergence under explicit finite hypotheses -/

public section

namespace Surface.Core.NetworkSurgery

open Surface.Core.Transport

@[surface_novel, surface_published]
theorem eventual_convergence_to_latestAdmittedGameState
    {Host EdgeId Payload : Type*}
    [Fintype Host] [DecidableEq Host]
    [Fintype EdgeId] [DecidableEq EdgeId]
    [DecidableEq Payload]
    (contract : RoutingContract Host EdgeId)
    (contractValid : contract.Valid)
    (start : Host)
    (admitted : List (Revisioned Payload))
    (latest : Revisioned Payload)
    (latestUnique : UniqueMaximalAdmitted admitted latest)
    (noAdmittedConflict : NoAdmittedEqualRevisionConflict admitted)
    (execution : Execution Host Payload)
    (admittedAt quiescenceTime : Nat)
    (initialAdmitted : InitialRegistersAdmitted execution admitted)
    (deliveriesAdmitted : EveryDeliveryAdmitted execution admitted)
    (eventualDelivery : EventuallyDeliversLatest contract start execution latest
      admittedAt quiescenceTime)
    (quiescence : QuiescentAfterLatest execution latest quiescenceTime)
    (deterministicMerge : DeterministicMerge Payload)
    (revisionPreservation : DeliveriesPreserveRevision execution)
    (payloadPreservation : DeliveriesPreservePayload execution)
    (noEqualConflict : NoAcceptedEqualRevisionConflict execution) :
    ∃ N, ∀ n ≥ N, ∀ host,
      host ∈ (orderedRoute contract start).hosts →
        (execution.stateAt n host).current = some latest :=
  eventual_convergence_to_latestAdmitted contract contractValid start admitted
    latest latestUnique noAdmittedConflict execution admittedAt quiescenceTime
    initialAdmitted deliveriesAdmitted eventualDelivery quiescence
    deterministicMerge revisionPreservation payloadPreservation noEqualConflict

end Surface.Core.NetworkSurgery
```
