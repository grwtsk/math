# zero_sequence_rejects_unit_smoothTestLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ba2dc6f-4d75-a85a-93a5-dcc4753f7b71",
  "kind": "theorem",
  "lexical_name": "zero_sequence_rejects_unit_smoothTestLimit",
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
  "slug": "zero-sequence-rejects-unit-smoothtestlimit--9196b9c887d55a112c0b6cd3",
  "source": {
    "blob": "1117a82c75489816511e948d7ff53689a73dec4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 85,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9196b9c887d55a112c0b6cd3eb63968f6f5cedc1f04b2aa34d3b2eecb157a26e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ba2dc6f-4d75-a85a-93a5-dcc4753f7b71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_sequence_rejects_unit_smoothTestLimit :
    ¬ SmoothUnitResidueWienerTestLimit (fun _ : ℕ => (0 : ℝ)) := by
  intro hSmooth
  obtain ⟨lo, hi, hlosmooth, hhismooth,
    hloCompact, hhiCompact, hloAway, hhiAway,
    hpoint, hloMass, hhiMass⟩ :=
    pinnedSmoothIntervalBrackets_exists
      (a := (1 : ℝ) / 2) (b := 1) (η := (1 : ℝ) / 8)
      (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num)
  have hmassPos : 0 <
      ∫ t in Set.Ioi (0 : ℝ), lo t := by
    linarith [hloMass]
  have hwrong :
      Tendsto (fun _ : ℝ => (0 : ℝ))
        atTop (nhds (∫ t in Set.Ioi (0 : ℝ), lo t)) := by
    simpa using hSmooth lo hlosmooth hloCompact hloAway
  have htrue :
      Tendsto (fun _ : ℝ => (0 : ℝ))
        atTop (nhds (0 : ℝ)) :=
    tendsto_const_nhds
  have hident := tendsto_nhds_unique hwrong htrue
  linarith

/-- Exactly the unresolved proof-bearing source, not another
unquantified arithmetic premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1117a82c75489816511e948d7ff53689a73dec4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
