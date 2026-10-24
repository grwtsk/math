# logarithmicLongDepthRemainder_eq_terminal_add_longInterior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbe31377-43cf-fa27-549a-94a008b7af36",
  "kind": "theorem",
  "lexical_name": "logarithmicLongDepthRemainder_eq_terminal_add_longInterior",
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
  "slug": "logarithmiclongdepthremainder-eq-terminal-add-longinterior--f1e58e4f5fa6dca817f0ff03",
  "source": {
    "blob": "5345b6df710aa2bc96c6f4387a08789901ac6116",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 164,
    "path": "GRWTSK/NumberTheory/Moebius/MertensCoreLongShortIntervalL1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1e58e4f5fa6dca817f0ff0300a309ea01c7094682cc0cb068397898054ee523",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensCoreLongShortIntervalL1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbe31377-43cf-fa27-549a-94a008b7af36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logarithmicLongDepthRemainder_eq_terminal_add_longInterior
    (j t : ℕ) :
    logarithmicLongDepthRemainder j t =
      2 * harmonicTerminalCumulativeContribution j t +
        2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
          harmonicCumulativeLongContribution
            j t (logarithmicShiftThreshold j) := by
  unfold logarithmicLongDepthRemainder
  rw [weightedMertensDyadicSignedAbelDepthSlice_eq_weightedChowlaAverage,
    weightedMertensTwoPointChowlaAverage_eq_harmonic,
    harmonicWeightedMertensTwoPointChowlaAverage_eq_cumulativeShift]
  rw [mul_add]
  have hsplit := harmonicCumulativeInterior_eq_short_add_long j t (logarithmicShiftThreshold j)
  simp only [harmonicShiftSecondDifference, harmonicShiftFirstDifference, Nat.add_assoc, Nat.reduceAdd] at hsplit
  rw [hsplit]
  unfold harmonicTerminalCumulativeContribution
  let YR : ℝ := ((2 ^ (j + 1) : ℕ) : ℝ)
  have hYR : 0 < YR := by
    dsimp [YR]
    positivity
  field_simp [ne_of_gt hYR]
  simp only [harmonicShiftFirstDifference]
  split_ifs with hN
  · ring
  · rw [Nat.sub_add_cancel (Nat.one_le_iff_ne_zero.mpr hN)]
    ring

/-- One genuine core depth remainder is majorized by the exact coefficient-
weighted L1 short-interval observable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensCoreLongShortIntervalL1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensCoreLongShortIntervalL1.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5345b6df710aa2bc96c6f4387a08789901ac6116` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
