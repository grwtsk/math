# eventual_convergence_to_latestAdmitted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f9571fd88a918963078c8de34d485e31e7b9054",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 423,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff7bc692d1c562dde0583d26d0aa79c14843824f997f72e0dbd18a795de840d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92ec1c8a-377f-adb1-1d2c-772f600ddec3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba10d9c2-082a-0f73-8a9e-637ee0d287d9",
  "kind": "theorem",
  "lexical_name": "eventual_convergence_to_latestAdmitted",
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
  "slug": "eventual-convergence-to-latestadmitted--206b72d958a98ea3520a6bbb",
  "source": {
    "blob": "1f9571fd88a918963078c8de34d485e31e7b9054",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 423,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantff7bc692d1c562dde0583d26d0aa79c14843824f997f72e0dbd18a795de840d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:206b72d958a98ea3520a6bbb03bade22ffe7c4602d9e801f4138d02fc3889ad4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantff7bc692d1c562dde0583d26d0aa79c14843824f997f72e0dbd18a795de840d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba10d9c2-082a-0f73-8a9e-637ee0d287d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventual_convergence_to_latestAdmitted
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
        (execution.stateAt n host).current = some latest := by
  have exactReachable : ∀ host,
      host ∈ (orderedRoute contract start).hosts ↔
        Reachable contract start host :=
    orderedRoute_reaches_exactly_reachable
      contract contractValid start
  have initialBounded : ∀ host,
      RevisionBounded latest (execution.initial host) := by
    intro host current currentEquation
    exact latestUnique.2.1 current
      (initialAdmitted host current currentEquation)
  have allStatesBounded : ∀ n host,
      RevisionBounded latest (execution.stateAt n host) :=
    execution_revisions_bounded execution admitted latest latestUnique
      initialBounded deliveriesAdmitted revisionPreservation
  have routeEventual : ∀ host,
      host ∈ (orderedRoute contract start).hosts →
      ∃ time event, admittedAt ≤ time ∧ quiescenceTime ≤ time ∧
        execution.eventAt time = some event ∧
        event.target = host ∧ event.publication = latest := by
    intro host member
    exact eventualDelivery host ((exactReachable host).mp member)
  obtain ⟨bound, deliveryWitness⟩ :=
    finite_delivery_times_have_upper_bound execution latest admittedAt
      quiescenceTime (orderedRoute contract start).hosts routeEventual
  refine ⟨bound, ?_⟩
  intro n boundLe host hostMember
  obtain ⟨time, event, _admittedBefore, quiescentBefore, eventEquation,
    targetEquality, publicationEquality, timeBound⟩ :=
      deliveryWitness host hostMember
  have mergeClassificationUnique :
      merge (execution.stateAt time host) event.delivered =
        merge (execution.stateAt time host) event.delivered :=
    deterministicMerge (execution.stateAt time host) event.delivered _ _ rfl rfl
  have installedAtNext :
      (execution.stateAt (time + 1) host).current = some latest :=
    delivered_latest_is_installed execution latest revisionPreservation
      payloadPreservation noEqualConflict (allStatesBounded time host)
      eventEquation targetEquality publicationEquality
  exact installed_latest_stays_installed execution admitted latest
    latestUnique.1 deliveriesAdmitted noAdmittedConflict quiescence
    revisionPreservation payloadPreservation
    (quiescentBefore.trans (Nat.le_succ time)) installedAtNext n
    (timeBound.trans boundLe)

end Surface.Core.Transport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantff7bc692d1c562dde0583d26d0aa79c14843824f997f72e0dbd18a795de840d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantff7bc692d1c562dde0583d26d0aa79c14843824f997f72e0dbd18a795de840d7.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f9571fd88a918963078c8de34d485e31e7b9054` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
