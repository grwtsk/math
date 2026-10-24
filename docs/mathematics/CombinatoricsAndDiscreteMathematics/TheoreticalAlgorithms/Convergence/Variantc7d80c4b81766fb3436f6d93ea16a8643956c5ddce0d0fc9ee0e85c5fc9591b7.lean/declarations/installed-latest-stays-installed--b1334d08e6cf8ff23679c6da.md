# installed_latest_stays_installed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67042555-e6b9-fe72-c648-df06dbd2da93",
  "kind": "theorem",
  "lexical_name": "installed_latest_stays_installed",
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
  "slug": "installed-latest-stays-installed--b1334d08e6cf8ff23679c6da",
  "source": {
    "blob": "9754ea8be25e0fa027aa68933034cc5d41f87237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 330,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantc7d80c4b81766fb3436f6d93ea16a8643956c5ddce0d0fc9ee0e85c5fc9591b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1334d08e6cf8ff23679c6da3e969290202111653f73ba7645ffb3314c9044a6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantc7d80c4b81766fb3436f6d93ea16a8643956c5ddce0d0fc9ee0e85c5fc9591b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67042555-e6b9-fe72-c648-df06dbd2da93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem installed_latest_stays_installed
    {Host Payload : Type*} [DecidableEq Host] [DecidableEq Payload]
    (execution : Execution Host Payload)
    (admitted : List (Revisioned Payload))
    (latest : Revisioned Payload)
    (latestAdmitted : latest ∈ admitted)
    (deliveriesAdmitted : EveryDeliveryAdmitted execution admitted)
    (noAdmittedConflict : NoAdmittedEqualRevisionConflict admitted)
    {quiescenceTime base : Nat} {host : Host}
    (quiescence : QuiescentAfterLatest execution latest quiescenceTime)
    (revisionPreservation : DeliveriesPreserveRevision execution)
    (payloadPreservation : DeliveriesPreservePayload execution)
    (quiescentAtBase : quiescenceTime ≤ base)
    (installed : (execution.stateAt base host).current = some latest) :
    ∀ n, base ≤ n →
      (execution.stateAt n host).current = some latest := by
  intro n baseLe
  induction n, baseLe using Nat.le_induction with
  | base => exact installed
  | succ n baseLe inductionHypothesis =>
      rw [execution.stateSucc n]
      cases eventEquation : execution.eventAt n with
      | none => simpa [applyEvent] using inductionHypothesis
      | some event =>
          by_cases targetEquality : event.target = host
          · subst host
            have publicationAdmitted : event.publication ∈ admitted :=
              deliveriesAdmitted n event eventEquation
            have publicationLe :
                event.publication.revision ≤ latest.revision :=
              quiescence n (quiescentAtBase.trans baseLe) event eventEquation
            have deliveredLe : event.delivered.revision ≤ latest.revision := by
              rw [revisionPreservation n event eventEquation]
              exact publicationLe
            by_cases deliveredStrict :
                event.delivered.revision < latest.revision
            · simp [applyEvent, inductionHypothesis, LwwRegister.apply, merge,
                deliveredStrict, MergeDecision.result]
            · have latestLeDelivered :
                  latest.revision ≤ event.delivered.revision :=
                le_of_not_gt deliveredStrict
              have deliveredRevisionEquality :
                  event.delivered.revision = latest.revision :=
                le_antisymm deliveredLe latestLeDelivered
              have publicationRevisionEquality :
                  event.publication.revision = latest.revision :=
                (revisionPreservation n event eventEquation).symm.trans
                  deliveredRevisionEquality
              have publicationPayloadEquality :
                  event.publication.value = latest.value :=
                noAdmittedConflict event.publication publicationAdmitted
                  latest latestAdmitted publicationRevisionEquality
              have deliveredEquality : event.delivered = latest := by
                apply revisioned_eq deliveredRevisionEquality
                exact (payloadPreservation n event eventEquation).trans
                  publicationPayloadEquality
              simp [applyEvent, deliveredEquality, inductionHypothesis,
                LwwRegister.apply, merge, MergeDecision.result]
          · simp only [applyEvent]
            rw [Function.update_of_ne (Ne.symm targetEquality)]
            exact inductionHypothesis

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantc7d80c4b81766fb3436f6d93ea16a8643956c5ddce0d0fc9ee0e85c5fc9591b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantc7d80c4b81766fb3436f6d93ea16a8643956c5ddce0d0fc9ee0e85c5fc9591b7.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9754ea8be25e0fa027aa68933034cc5d41f87237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
