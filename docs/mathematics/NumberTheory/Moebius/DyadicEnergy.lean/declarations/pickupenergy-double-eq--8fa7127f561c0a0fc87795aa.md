# pickupEnergy_double_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f99d8716-f82c-313f-3ce0-2d56e290f57d",
  "kind": "theorem",
  "lexical_name": "pickupEnergy_double_eq",
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
  "slug": "pickupenergy-double-eq--8fa7127f561c0a0fc87795aa",
  "source": {
    "blob": "9bd9ace9794e4369974f39c242ad2ab9b04d368f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 72,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fa7127f561c0a0fc87795aa73b4c695eb9a51bb32d7333ad6462dd731889d86",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f99d8716-f82c-313f-3ce0-2d56e290f57d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupEnergy_double_eq {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy (2*T) = pickupEnergy T + recordingInnovation T := by
  have h := energy_after_causal_block (P := pickupPrimes T) (B := recordingPrimeBlock T)
    (fun _ hp ↦ (Finset.mem_filter.mp hp).2)
    (recordingPrimeBlock_primes T)
    (Finset.disjoint_left.mpr (fun p hp hpb ↦ (Finset.mem_sdiff.mp hpb).2 hp))
    (show 0 ≤ 2*T by linarith) (fun p hp q hq _ ↦ by
      linarith [recordingPrimeBlock_delay hp, recordingPrimeBlock_delay hq])
  rw [recordingPrimeBlock_union hT, ← pickupEnergy_eq_cascade_energy (by linarith : 0 ≤ 2*T)] at h
  unfold recordingInnovation recordingEcho
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicEnergy.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bd9ace9794e4369974f39c242ad2ab9b04d368f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
