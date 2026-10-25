# eventual_convergence_to_latestAdmitted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97c77879-7900-2c03-3455-342ccfc505cc",
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
  "slug": "eventual-convergence-to-latestadmitted--3912f30b116fa800cc8ac9ed",
  "source": {
    "blob": "deaed21736722fff8aad21858bec1a949525bde5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 370,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant573deca193a9cdc70c9cd2286b4c828266853341ed042c06479d5318ff05f50f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3912f30b116fa800cc8ac9ed8e5baddd8efa7182deba1abf9f07bb943152a844",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant573deca193a9cdc70c9cd2286b4c828266853341ed042c06479d5318ff05f50f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97c77879-7900-2c03-3455-342ccfc505cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventual_convergence_to_latestAdmitted
    {Host EdgeId : Type*}
    [Fintype Host] [DecidableEq Host]
    [Fintype EdgeId] [DecidableEq EdgeId]
    (contract : RoutingContract Host EdgeId)
    (contractValid : contract.Valid)
    (start : Host)
    (admitted : List (RevisionedXYZ xyzFormatV1))
    (latest : RevisionedXYZ xyzFormatV1)
    (latestUnique : UniqueMaximalAdmitted admitted latest)
    (execution : Execution Host)
    (admittedAt quiescenceTime : Nat)
    (initialAdmitted : InitialRegistersAdmitted execution admitted)
    (deliveriesAdmitted : EveryDeliveryAdmitted execution admitted)
    (eventualDelivery : EventuallyDeliversLatest contract start execution latest
      admittedAt quiescenceTime)
    (quiescence : QuiescentAboveLatest execution admitted latest quiescenceTime)
    (deterministicMerge : DeterministicMerge)
    (revisionPreservation : DeliveriesPreserveLatestRevision execution latest)
    (payloadPreservation : MaximalDeliveriesPreservePayload execution latest)
    (noEqualConflict : NoAcceptedEqualRevisionConflict execution) :
    ∃ N, ∀ n ≥ N, ∀ host,
      host ∈ (contract.orderedRoute start).hosts →
        (execution.stateAt n host).current = some latest := by
  have exactReachable : ∀ host,
      host ∈ (contract.orderedRoute start).hosts ↔
        contract.Reachable start host :=
    RoutingContract.orderedRoute_reaches_exactly_reachable
      contract contractValid start
  have initialBounded : ∀ host,
      RevisionBounded latest (execution.initial host) := by
    intro host current currentEquation
    exact latestUnique.2.1 current
      (initialAdmitted host current currentEquation)
  have allStatesBounded : ∀ n host,
      RevisionBounded latest (execution.stateAt n host) :=
    execution_revisions_bounded execution latest initialBounded
      revisionPreservation
  have routeEventual : ∀ host,
      host ∈ (contract.orderedRoute start).hosts →
      ∃ time, admittedAt ≤ time ∧ quiescenceTime ≤ time ∧
        execution.eventAt time = some ⟨host, latest⟩ := by
    intro host member
    exact eventualDelivery host ((exactReachable host).mp member)
  obtain ⟨bound, deliveryWitness⟩ :=
    finite_delivery_times_have_upper_bound execution latest admittedAt
      quiescenceTime (contract.orderedRoute start).hosts routeEventual
  refine ⟨bound, ?_⟩
  intro n boundLe host hostMember
  obtain ⟨time, _admittedBefore, quiescentBefore, delivered,
    timeBound⟩ := deliveryWitness host hostMember
  have deliveryAdmitted : latest ∈ admitted :=
    deliveriesAdmitted time ⟨host, latest⟩ delivered
  have noHigherAtDelivery : ¬ latest.revision < latest.revision :=
    quiescence time quiescentBefore ⟨host, latest⟩ delivered
      deliveryAdmitted
  have mergeClassificationUnique :
      merge (execution.stateAt time host) latest =
        merge (execution.stateAt time host) latest :=
    deterministicMerge (execution.stateAt time host) latest _ _ rfl rfl
  have installedAtNext :
      (execution.stateAt (time + 1) host).current = some latest :=
    delivered_latest_is_installed execution latest noEqualConflict
      (allStatesBounded time host) delivered
  exact installed_latest_stays_installed execution latest revisionPreservation
    payloadPreservation installedAtNext n (timeBound.trans boundLe)

/-! ## Route payload preservation and the confluence boundary -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant573deca193a9cdc70c9cd2286b4c828266853341ed042c06479d5318ff05f50f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant573deca193a9cdc70c9cd2286b4c828266853341ed042c06479d5318ff05f50f.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `deaed21736722fff8aad21858bec1a949525bde5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
