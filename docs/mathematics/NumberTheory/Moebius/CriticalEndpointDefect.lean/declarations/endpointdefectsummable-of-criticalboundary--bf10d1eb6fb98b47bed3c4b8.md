# endpointDefectSummable_of_criticalBoundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19c6bfb7-2cf6-6a51-af14-f8838903f1e5",
  "kind": "theorem",
  "lexical_name": "endpointDefectSummable_of_criticalBoundary",
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
  "slug": "endpointdefectsummable-of-criticalboundary--bf10d1eb6fb98b47bed3c4b8",
  "source": {
    "blob": "46e1eead76aacda6818a266dc3399c9fae01743b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 519,
    "path": "GRWTSK/NumberTheory/Moebius/CriticalEndpointDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf10d1eb6fb98b47bed3c4b89839a6d4d3e1ab02f8755b834c87ddaf6962215f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CriticalEndpointDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19c6bfb7-2cf6-6a51-af14-f8838903f1e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 519–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointDefectSummable_of_criticalBoundary
    (hB : CriticalBoundaryVerticalLineUniform) :
    CriticalEndpointDefectSummable := by
  have hblock : Summable criticalIntervalBlock :=
    summable_criticalIntervalBlock_of_uniform
      (criticalIntervalBlockUniform_of_boundary hB)
  have hdrift : Summable (fun n : ℕ =>
      2 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n) := by
    have h := summable_mertens_drift_error.mul_left (1 / 4)
    have heq : (fun n : ℕ =>
        2 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n) =
        (fun n : ℕ => (1 / 4) *
          (8 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n)) := by
      funext n
      ring
    rw [heq]
    exact h
  have hmajor : Summable (fun n : ℕ =>
      (1 / 2) * criticalIntervalBlock n +
        2 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n) :=
    (hblock.mul_left (1 / 2)).add hdrift
  unfold CriticalEndpointDefectSummable
  apply hmajor.of_nonneg_of_le criticalEndpointDefectEnergy_nonneg
  intro n
  cases n with
  | zero =>
      simp [criticalEndpointDefectEnergy, criticalEndpointDefect,
        criticalEndpointDrift, criticalIntervalBlock, pickupWeightedPrefix,
        pickupMertensPrefix, exponentialLogDrop]
  | succ n =>
      exact criticalEndpointDefectEnergy_le_block_add_drift (by omega)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CriticalEndpointDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CriticalEndpointDefect.lean#L519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46e1eead76aacda6818a266dc3399c9fae01743b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
