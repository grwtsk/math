# eventual_convergence_to_latestAdmittedGameState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce356d78-0da8-38a3-710c-7e2dbe50a2c8",
  "kind": "theorem",
  "lexical_name": "eventual_convergence_to_latestAdmittedGameState",
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
  "slug": "eventual-convergence-to-latestadmittedgamestate--f4b0bd1f230d0513c98f8a5a",
  "source": {
    "blob": "35452c1d308380a20eeef0b7e067ae7e49dfabb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 23,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Convergence/Variant7a31e9f554516a3bb69b4f2c58fab4a3a4a1e646c9c9e273ade4833c2afdcd70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4b0bd1f230d0513c98f8a5a1f2d7591d394b1bf66e03cb5a91b6289cbebd256",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Convergence/Variant7a31e9f554516a3bb69b4f2c58fab4a3a4a1e646c9c9e273ade4833c2afdcd70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce356d78-0da8-38a3-710c-7e2dbe50a2c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Convergence/Variant7a31e9f554516a3bb69b4f2c58fab4a3a4a1e646c9c9e273ade4833c2afdcd70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Convergence/Variant7a31e9f554516a3bb69b4f2c58fab4a3a4a1e646c9c9e273ade4833c2afdcd70.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35452c1d308380a20eeef0b7e067ae7e49dfabb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
