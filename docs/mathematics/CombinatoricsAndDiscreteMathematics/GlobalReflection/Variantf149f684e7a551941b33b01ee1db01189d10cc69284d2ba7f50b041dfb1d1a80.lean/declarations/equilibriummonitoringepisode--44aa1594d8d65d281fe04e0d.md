# EquilibriumMonitoringEpisode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86fea96f3744c2bac1d061f955a8576f5e84f394d7f944b633dd50231385a756",
  "kind": "structure",
  "lexical_name": "EquilibriumMonitoringEpisode",
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
  "slug": "equilibriummonitoringepisode--44aa1594d8d65d281fe04e0d",
  "source": {
    "blob": "6488fdf76964930f6f174ab397abef046de93e38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 687,
    "line": 626,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variantf149f684e7a551941b33b01ee1db01189d10cc69284d2ba7f50b041dfb1d1a80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44aa1594d8d65d281fe04e0de6780970741e299d6355d4cdd74ede387725cbf2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variantf149f684e7a551941b33b01ee1db01189d10cc69284d2ba7f50b041dfb1d1a80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86fea96f3744c2bac1d061f955a8576f5e84f394d7f944b633dd50231385a756`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 626–687.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EquilibriumMonitoringEpisode where
  requestSnapshot : ContentHash
  ontologySnapshot : ContentHash
  specificationSnapshot : ContentHash
  sourceSnapshot : ContentHash
  correspondenceSnapshot : ContentHash
  hostSnapshot : ContentHash
  evaluatorSnapshot : ContentHash
  authorityEnvelopeSnapshot : ContentHash
  governingSnapshotsNonempty :
    requestSnapshot.value ≠ "" ∧
      ontologySnapshot.value ≠ "" ∧
      specificationSnapshot.value ≠ "" ∧
      sourceSnapshot.value ≠ "" ∧
      correspondenceSnapshot.value ≠ "" ∧
      hostSnapshot.value ≠ "" ∧
      evaluatorSnapshot.value ≠ "" ∧
      authorityEnvelopeSnapshot.value ≠ ""
  bounds : EquilibriumMonitorBounds
  cyclesObserved : Nat
  cyclesWithinBound : cyclesObserved ≤ bounds.maxCycles
  wallTimeConsumedMilliseconds : Nat
  wallTimeWithinBound :
    wallTimeConsumedMilliseconds ≤ bounds.wallTimeLimitMilliseconds
  peakMemoryBytes : Nat
  memoryWithinBound : peakMemoryBytes ≤ bounds.memoryLimitBytes
  terminalReceiptBytes : Nat
  receiptWithinBound : terminalReceiptBytes ≤ bounds.maximumReceiptBytes
  externalCallsConsumed : Nat
  noExternalCallsConsumed : externalCallsConsumed = 0
  currentObservation : EquilibriumMonitorObservation
  previousAssessmentIdentity : Option ContentHash
  confirmationCount : Nat
  noProgressCount : Nat
  termination : EquilibriumMonitorTermination
  confirmedFullEvidence : termination = .confirmedFull →
    currentObservation.semanticStatus = .fullEquilibrium ∧
      previousAssessmentIdentity = some currentObservation.assessmentIdentity ∧
      confirmationCount = 2
  repairHandoff : Option EquilibriumMonitorRepairHandoff
  processLocalState : Bool
  processLocalOnly : processLocalState = true
  compactTerminalReceipt : Bool
  receiptIsCompact : compactTerminalReceipt = true
  retainedCycleHistory : Bool
  noRetainedCycleHistory : retainedCycleHistory = false
  externalAfterTree : Bool
  noExternalAfterTree : externalAfterTree = false
  candidateOntology : Bool
  noCandidateOntology : candidateOntology = false
  runnerMutation : Bool
  noRunnerMutation : runnerMutation = false
  persistentCycleState : Bool
  noPersistentCycleState : persistentCycleState = false
  semanticAdmissionEffect : Bool
  noSemanticAdmissionEffect : semanticAdmissionEffect = false
  mutationAuthority : Bool
  episodeNotAuthority : mutationAuthority = false

namespace EquilibriumMonitoringEpisode

/-- Confirmed full equilibrium requires exactly two consecutive identical full assessments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variantf149f684e7a551941b33b01ee1db01189d10cc69284d2ba7f50b041dfb1d1a80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variantf149f684e7a551941b33b01ee1db01189d10cc69284d2ba7f50b041dfb1d1a80.lean#L626).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6488fdf76964930f6f174ab397abef046de93e38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
