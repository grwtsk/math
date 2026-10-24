# normalized_shortContribution_le_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32708ea7-fc5f-2a90-515a-216024717d8d",
  "kind": "theorem",
  "lexical_name": "normalized_shortContribution_le_budget",
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
  "slug": "normalized-shortcontribution-le-budget--8d644ef2a2c20985b2dc96ea",
  "source": {
    "blob": "a89adc83da32b460277b54ec3f5135b52fdf7037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d644ef2a2c20985b2dc96ea06b40d25cb0442f54a5318adc0d4cffac6234e50",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32708ea7-fc5f-2a90-515a-216024717d8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_shortContribution_le_budget
    (j t : ℕ) :
    2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        |harmonicCumulativeShortContribution
          j t (logarithmicShiftThreshold j)| ≤
      normalizedShortDepthBudget j t := by
  have hshort :=
    abs_harmonicCumulativeShortContribution_le
      j t (logarithmicShiftThreshold j)
  let YR : ℝ := ((2 ^ (j + 1) : ℕ) : ℝ)
  have hYR : 0 < YR := by
    dsimp [YR]
    positivity
  unfold normalizedShortDepthBudget
  calc
    2 * YR⁻¹ *
        |harmonicCumulativeShortContribution
          j t (logarithmicShiftThreshold j)| ≤
      2 * YR⁻¹ *
        (YR * (logarithmicShiftThreshold j : ℝ) *
          (t + 1 : ℝ) *
            harmonicShiftFirstDifference j t 0) := by
      apply mul_le_mul_of_nonneg_left hshort
      positivity
    _ = 2 * (logarithmicShiftThreshold j : ℝ) *
        (t + 1 : ℝ) *
          harmonicShiftFirstDifference j t 0 := by
      field_simp [ne_of_gt hYR]

/-- Total deterministic short-range budget over all inherited depths. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a89adc83da32b460277b54ec3f5135b52fdf7037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
