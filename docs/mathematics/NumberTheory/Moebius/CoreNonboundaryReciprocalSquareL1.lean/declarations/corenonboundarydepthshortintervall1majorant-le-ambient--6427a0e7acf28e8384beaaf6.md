# coreNonboundaryDepthShortIntervalL1Majorant_le_ambient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:343ea959-d53e-08f7-30d0-df2ea303e691",
  "kind": "theorem",
  "lexical_name": "coreNonboundaryDepthShortIntervalL1Majorant_le_ambient",
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
  "slug": "corenonboundarydepthshortintervall1majorant-le-ambient--6427a0e7acf28e8384beaaf6",
  "source": {
    "blob": "924e1353fa1f845b173628b25495cae64c05382f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 41,
    "path": "GRWTSK/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6427a0e7acf28e8384beaaf672ebaf1a0895f02edda51746d6c7ec770efa8448",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:343ea959-d53e-08f7-30d0-df2ea303e691`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreNonboundaryDepthShortIntervalL1Majorant_le_ambient
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    coreNonboundaryDepthShortIntervalL1Majorant j t ≤
      coreNonboundaryDepthAmbientL1Majorant j t := by
  have htY : t < 2 ^ (j + 1) := by
    simpa [coreLongDeepDepths] using
      (Finset.mem_filter.mp hcore).1.2
  unfold coreNonboundaryDepthShortIntervalL1Majorant
    coreNonboundaryDepthAmbientL1Majorant
    coreNonboundaryAmbientTerminalL1Majorant
    harmonicTerminalShortIntervalL1Majorant
    harmonicAmbientTerminalL1Majorant
    harmonicLongInteriorShortIntervalL1Majorant
    harmonicAmbientLongInteriorL1Majorant
  apply mul_le_mul_of_nonneg_left
  · apply add_le_add
    · by_cases hboundary : harmonicShiftCount j t = 2 ^ j
      · simp [hboundary]
      · simp only [hboundary, if_false]
        by_cases hN : harmonicShiftCount j t = 0
        · simp [hN]
        · simp only [hN, if_false]
          apply mul_le_mul_of_nonneg_right
          · exact harmonicShortIntervalL1_le_ambient htY
          · exact harmonicShiftReciprocal_terminalDifference_nonneg
              (Nat.pos_of_ne_zero hN)
    · apply Finset.sum_le_sum
      intro k _hk
      apply mul_le_mul_of_nonneg_right
      · exact harmonicShortIntervalL1_le_ambient htY
      · exact harmonicShiftReciprocal_secondDifference_nonneg j t k
  · norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `924e1353fa1f845b173628b25495cae64c05382f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
