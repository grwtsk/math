# actual_census_normalized_error_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28b2f414-2113-e61d-92b0-65f98a64178f",
  "kind": "theorem",
  "lexical_name": "actual_census_normalized_error_price",
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
  "slug": "actual-census-normalized-error-price--2b08f7645c9a76dd75065913",
  "source": {
    "blob": "5faf1624bc502050ef2dbe6daf6e4a5dda1dfa1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusLimit/Variant08937a1204f7d293540ddd6ebd85e917d6d8795ea72ceabf9340c16fe197b503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b08f7645c9a76dd75065913a5f97de0843460be2c8385b2a4882b1e9833468b",
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

Occurrence: `result:28b2f414-2113-e61d-92b0-65f98a64178f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_census_normalized_error_price {A : ℝ} (hA : 1 ≤ A) :
    |normalizedSixthCensus A - normalizedSixthMoment A| ≤
      (2 * Real.sqrt (65 / 3) + 1) * (A ^ 9 / Real.exp (A / 3)) := by
  have heq : normalizedSixthCensus A - normalizedSixthMoment A =
      (actualCensus A 6 - (1 / 6) * (testMoment A (1 / 6)) ^ 2) *
        (A ^ 9 / Real.exp (A / 3)) := by
    unfold normalizedSixthCensus normalizedSixthMoment
    ring
  have hcost : 0 ≤ A ^ 9 / Real.exp (A / 3) := by positivity
  rw [heq, abs_mul, abs_of_nonneg hcost]
  exact mul_le_mul_of_nonneg_right
    (actual_census_exact_uniform_moment_error hA (by norm_num : (0 : ℝ) < 6)) hcost

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusLimit/Variant08937a1204f7d293540ddd6ebd85e917d6d8795ea72ceabf9340c16fe197b503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusLimit/Variant08937a1204f7d293540ddd6ebd85e917d6d8795ea72ceabf9340c16fe197b503.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5faf1624bc502050ef2dbe6daf6e4a5dda1dfa1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
