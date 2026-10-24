# actual_complete_sixth_census_leading_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ac945b6-e3d9-13f3-220a-cceca8f745af",
  "kind": "theorem",
  "lexical_name": "actual_complete_sixth_census_leading_coefficient",
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
  "slug": "actual-complete-sixth-census-leading-coefficient--46c6b14174613ecf51f1aeb7",
  "source": {
    "blob": "5faf1624bc502050ef2dbe6daf6e4a5dda1dfa1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 57,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusLimit/Variant08937a1204f7d293540ddd6ebd85e917d6d8795ea72ceabf9340c16fe197b503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46c6b14174613ecf51f1aeb70505aaa2dbcd1f7f6e67f829e7975d17dfca8621",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusLimit/Variant08937a1204f7d293540ddd6ebd85e917d6d8795ea72ceabf9340c16fe197b503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ac945b6-e3d9-13f3-220a-cceca8f745af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_complete_sixth_census_leading_coefficient :
    Tendsto normalizedSixthCensus atTop (𝓝 (1959910318080 : ℝ)) := by
  have hbound : ∀ᶠ A : ℝ in atTop,
      |normalizedSixthCensus A - normalizedSixthMoment A| ≤
        (2 * Real.sqrt (65 / 3) + 1) * (A ^ 9 / Real.exp (A / 3)) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    exact actual_census_normalized_error_price hA
  have hpaid : Tendsto (fun A : ℝ ↦ (2 * Real.sqrt (65 / 3) + 1) *
      (A ^ 9 / Real.exp (A / 3))) atTop (𝓝 0) := by
    simpa only [mul_zero] using exponential_census_error_scale_tends_to_zero.const_mul
      (2 * Real.sqrt (65 / 3) + 1)
  have habs := squeeze_zero' (Filter.Eventually.of_forall
    (fun A : ℝ ↦ abs_nonneg (normalizedSixthCensus A - normalizedSixthMoment A))) hbound hpaid
  have hdiff : Tendsto (fun A : ℝ ↦ normalizedSixthCensus A - normalizedSixthMoment A)
      atTop (𝓝 0) := (tendsto_zero_iff_norm_tendsto_zero).mpr
        (by simpa only [Real.norm_eq_abs] using habs)
  simpa only [sub_add_cancel, zero_add] using hdiff.add actual_normalized_sixth_moment_limit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusLimit/Variant08937a1204f7d293540ddd6ebd85e917d6d8795ea72ceabf9340c16fe197b503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusLimit/Variant08937a1204f7d293540ddd6ebd85e917d6d8795ea72ceabf9340c16fe197b503.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5faf1624bc502050ef2dbe6daf6e4a5dda1dfa1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
