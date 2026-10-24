# coreGrowingShiftEndpointTransverseCircularDistance_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e7d4974-277b-a792-3256-21b7a81e433e",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointTransverseCircularDistance_eq_zero_iff",
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
  "slug": "coregrowingshiftendpointtransversecirculardistance-eq-zero-iff--70cf7e1152ae9f3c8b029bbe",
  "source": {
    "blob": "5a3e063a2828cae7a9a2f26bccb1972eb5ab9445",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70cf7e1152ae9f3c8b029bbe4d6a7790bfda96f08b7cbdb49ba3575bb83ae22c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e7d4974-277b-a792-3256-21b7a81e433e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointTransverseCircularDistance_eq_zero_iff
    (j : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseCircularDistance j u = 0 ↔ u = 0 := by
  constructor
  · intro h
    by_cases hu : u = 0
    · exact hu
    · have huval : 0 < u.val := by
        exact Nat.pos_of_ne_zero ((ZMod.val_eq_zero u).not.mpr hu)
      have hnu : -u ≠ 0 := neg_ne_zero.mpr hu
      have hnuval : 0 < (-u).val := by
        exact Nat.pos_of_ne_zero ((ZMod.val_eq_zero (-u)).not.mpr hnu)
      unfold coreGrowingShiftEndpointTransverseCircularDistance at h
      omega
  · rintro rfl
    simp [coreGrowingShiftEndpointTransverseCircularDistance]

/-- Circular distance is invariant under frequency negation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicCoordinates.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a3e063a2828cae7a9a2f26bccb1972eb5ab9445` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
