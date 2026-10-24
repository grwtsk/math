# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Convergence.Variant7a31e9f554516a3bb69b4f2c58fab4a3a4a1e646c9c9e273ade4833c2afdcd70

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35452c1d308380a20eeef0b7e067ae7e49dfabb3` · SHA-256 `f1a5fc7d53feb082b35f1aeee8c81a0310710ec134f98b896c0f908c3bd3319c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EventualConvergenceToLatestAdmittedGameState.Variantf0e9afe12a0f7ce9ee141c0f842442f9745d0d168b6237e05eca62d40c80c811","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f0e9afe12a0f7ce9ee141c0f842442f9745d0d168b6237e05eca62d40c80c811","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.EventualConvergenceToLatestAdmittedGameState.Variantf0e9afe12a0f7ce9ee141c0f842442f9745d0d168b6237e05eca62d40c80c811","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"f0e9afe12a0f7ce9ee141c0f842442f9745d0d168b6237e05eca62d40c80c811","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0fb42e20fee1ea48f0f02cd1/workspace/lib/SurfaceCore/Surface/Core/NetworkSurgery/Convergence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.NetworkSurgery.Transport
public import Surface.Core.Transport.Convergence

/-! # Full-state viewer convergence under explicit finite hypotheses -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EventualConvergenceToLatestAdmittedGameState.Variantf0e9afe12a0f7ce9ee141c0f842442f9745d0d168b6237e05eca62d40c80c811

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
