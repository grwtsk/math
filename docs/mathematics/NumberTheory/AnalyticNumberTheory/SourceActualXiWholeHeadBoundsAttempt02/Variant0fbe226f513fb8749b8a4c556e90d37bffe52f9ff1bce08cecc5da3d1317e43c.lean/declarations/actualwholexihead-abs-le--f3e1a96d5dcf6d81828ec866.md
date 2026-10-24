# actualWholeXiHead_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bc3f2e9-05e3-8c84-dada-7f237a7e1815",
  "kind": "theorem",
  "lexical_name": "actualWholeXiHead_abs_le",
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
  "slug": "actualwholexihead-abs-le--f3e1a96d5dcf6d81828ec866",
  "source": {
    "blob": "6f5d1acb8a5b270a65ecd5aafa17f94f8d8b87fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt02/Variant0fbe226f513fb8749b8a4c556e90d37bffe52f9ff1bce08cecc5da3d1317e43c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3e1a96d5dcf6d81828ec866a595514318d471b0f08710daaa2fa0b3316f602f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt02/Variant0fbe226f513fb8749b8a4c556e90d37bffe52f9ff1bce08cecc5da3d1317e43c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bc3f2e9-05e3-8c84-dada-7f237a7e1815`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualWholeXiHead_abs_le (A : ℝ) (hA : 40 ≤ A) :
    |actualWholeXiHead A| ≤ wholeHeadBudget := by
  have hi := actual_whole_head_intervalIntegrable A hA
  have hu : (∫ y in 2..7, actualTransformedXiBlockDensity A y) ≤
      ∫ y in (2 : ℝ)..7, wholeHeadHeight := by
    apply intervalIntegral.integral_mono_on (by norm_num) hi
      (continuous_const.intervalIntegrable _ _)
    intro y hy
    exact (abs_le.mp (actual_whole_head_density_abs_le A y hA hy.1 hy.2)).2
  have hl : (∫ y in (2 : ℝ)..7, -wholeHeadHeight) ≤
      ∫ y in 2..7, actualTransformedXiBlockDensity A y := by
    apply intervalIntegral.integral_mono_on (by norm_num)
      (continuous_const.intervalIntegrable _ _) hi
    intro y hy
    exact (abs_le.mp (actual_whole_head_density_abs_le A y hA hy.1 hy.2)).1
  rw [intervalIntegral.integral_const] at hu hl
  unfold actualWholeXiHead wholeHeadBudget
  simp only [smul_eq_mul] at hu hl
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- Uniform upper budget discharges the whole-head premise of the reverse tail return. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt02/Variant0fbe226f513fb8749b8a4c556e90d37bffe52f9ff1bce08cecc5da3d1317e43c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt02/Variant0fbe226f513fb8749b8a4c556e90d37bffe52f9ff1bce08cecc5da3d1317e43c.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f5d1acb8a5b270a65ecd5aafa17f94f8d8b87fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
