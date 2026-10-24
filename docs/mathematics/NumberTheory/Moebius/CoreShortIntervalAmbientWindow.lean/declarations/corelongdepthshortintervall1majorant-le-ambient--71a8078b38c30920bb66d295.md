# coreLongDepthShortIntervalL1Majorant_le_ambient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35da7b94-e701-b5dd-1848-9f17f5de0a26",
  "kind": "theorem",
  "lexical_name": "coreLongDepthShortIntervalL1Majorant_le_ambient",
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
  "slug": "corelongdepthshortintervall1majorant-le-ambient--71a8078b38c30920bb66d295",
  "source": {
    "blob": "0c2d2b57c1dc7513e0e66c3468fc12e12b80f365",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 131,
    "path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71a8078b38c30920bb66d295aeeacf2bdee8a3a28dfc138fed79de0f115895c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35da7b94-e701-b5dd-1848-9f17f5de0a26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreLongDepthShortIntervalL1Majorant_le_ambient
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    coreLongDepthShortIntervalL1Majorant j t ≤
      coreLongDepthAmbientL1Majorant j t := by
  have htY : t < 2 ^ (j + 1) := by
    simpa [coreLongDeepDepths] using
      (Finset.mem_Ico.mp (Finset.mem_filter.mp hcore).1).2
  unfold coreLongDepthShortIntervalL1Majorant
    coreLongDepthAmbientL1Majorant
    harmonicTerminalShortIntervalL1Majorant
    harmonicAmbientTerminalL1Majorant
    harmonicLongInteriorShortIntervalL1Majorant
    harmonicAmbientLongInteriorL1Majorant
  apply mul_le_mul_of_nonneg_left
  · apply add_le_add
    · by_cases hN : harmonicShiftCount j t = 0
      · simp [hN]
      · simp only [hN, if_false]
        apply mul_le_mul_of_nonneg_right
        · exact harmonicShortIntervalL1_le_ambient htY
        · have hNpos : 0 < harmonicShiftCount j t := Nat.pos_of_ne_zero hN
          simpa only [harmonicShiftFirstDifference, Nat.sub_add_cancel hNpos] using
            harmonicShiftReciprocal_terminalDifference_nonneg hNpos
    · apply Finset.sum_le_sum
      intro k _hk
      apply mul_le_mul_of_nonneg_right
      · exact harmonicShortIntervalL1_le_ambient htY
      · exact harmonicShiftReciprocal_secondDifference_nonneg j t k
  · norm_num

/-- The exact core L1 packet is bounded by a single common-ambient packet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c2d2b57c1dc7513e0e66c3468fc12e12b80f365` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
