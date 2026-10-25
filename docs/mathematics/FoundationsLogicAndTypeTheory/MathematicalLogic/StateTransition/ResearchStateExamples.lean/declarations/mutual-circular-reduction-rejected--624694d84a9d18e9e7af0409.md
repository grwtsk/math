# mutual_circular_reduction_rejected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db86520a-f7a1-0271-7d33-0a6c0424c1aa",
  "kind": "theorem",
  "lexical_name": "mutual_circular_reduction_rejected",
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
  "slug": "mutual-circular-reduction-rejected--624694d84a9d18e9e7af0409",
  "source": {
    "blob": "5ee98d56d4faa86da6839f6f7edc3cbf3d27f043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 374,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchStateExamples.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:624694d84a9d18e9e7af040937ea0575c7ae3366627f87cd205cf98302d3251b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchStateExamples.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db86520a-f7a1-0271-7d33-0a6c0424c1aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mutual_circular_reduction_rejected (claim : Bool) :
    ¬ GroundedSupport mutualCycle {false, true} claim := by
  intro supported
  have member :=
    (mem_supportedClaims_iff mutualCycle {false, true} claim).mpr supported
  rw [mutual_cycle_has_no_support] at member
  exact Finset.notMem_empty claim member

#print axioms unchanged_name_does_not_identify_revision
#print axioms same_name_revision_transport_rejected
#print axioms contextual_claim_proved
#print axioms contextual_hypothesis_erasure_rejected
#print axioms contextual_hypothesis_remains_unproved
#print axioms arithmetic_supplier
#print axioms arithmetic_auxiliary
#print axioms pending_state_valid
#print axioms transfer_step
#print axioms transfer_retains_every_premise
#print axioms self_reduction_step
#print axioms self_reduction_retains_debt
#print axioms auxiliary_discharge_step
#print axioms supplier_debt_survives
#print axioms supplier_discharge_step
#print axioms closed_frontier
#print axioms closed_state_valid
#print axioms finite_target_closure
#print axioms finite_reachable_example
#print axioms omitted_auxiliary_debt_rejected
#print axioms missing_debt_transition_rejected
#print axioms relevance_only_closure_rejected
#print axioms relevance_only_transition_rejected
#print axioms status_observation_step
#print axioms status_observation_preserves_proofs_and_debt
#print axioms unsupported_status_promotion_rejected
#print axioms unsupported_status_transition_rejected
#print axioms self_cycle_has_no_support
#print axioms circular_reduction_rejected
#print axioms mutual_cycle_has_no_support
#print axioms mutual_circular_reduction_rejected

end GRWTSK.Logic.StateTransition.ResearchState.Examples
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchStateExamples.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchStateExamples.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ee98d56d4faa86da6839f6f7edc3cbf3d27f043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
