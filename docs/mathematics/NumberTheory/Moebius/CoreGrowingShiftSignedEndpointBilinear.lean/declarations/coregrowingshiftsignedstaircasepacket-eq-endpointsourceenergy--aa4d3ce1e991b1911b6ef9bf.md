# coreGrowingShiftSignedStaircasePacket_eq_endpointSourceEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1b1fcd7-0904-cf2e-d045-1ec635176949",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftSignedStaircasePacket_eq_endpointSourceEnergy",
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
  "slug": "coregrowingshiftsignedstaircasepacket-eq-endpointsourceenergy--aa4d3ce1e991b1911b6ef9bf",
  "source": {
    "blob": "f9c01da39b373e55afc2c551135031974fc4a6c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 225,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa4d3ce1e991b1911b6ef9bffbc5a8f3599d1d8378d8b12e56e54acee2fee04b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1b1fcd7-0904-cf2e-d045-1ec635176949`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftSignedStaircasePacket_eq_endpointSourceEnergy
    (j : ℕ) :
    coreGrowingShiftSignedStaircasePacket j =
      coreGrowingShiftSignedEndpointSourceEnergy j := by
  classical
  unfold coreGrowingShiftSignedEndpointSourceEnergy
    coreGrowingShiftSignedEndpointSourceCells
  rw [Finset.sum_sigma]
  unfold coreGrowingShiftSignedStaircasePacket
    coreGrowingShiftSignedStaircaseCell
    coreGrowingShiftSignedEndpointSourceValue
  apply Finset.sum_congr rfl
  intro y _hy
  rcases y with ⟨N, h⟩
  unfold mertensTwoPointPrefix
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro a _ha
  ring

/-- A source-cell value is exactly the endpoint-bilinear value at its image. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBilinear.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9c01da39b373e55afc2c551135031974fc4a6c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
