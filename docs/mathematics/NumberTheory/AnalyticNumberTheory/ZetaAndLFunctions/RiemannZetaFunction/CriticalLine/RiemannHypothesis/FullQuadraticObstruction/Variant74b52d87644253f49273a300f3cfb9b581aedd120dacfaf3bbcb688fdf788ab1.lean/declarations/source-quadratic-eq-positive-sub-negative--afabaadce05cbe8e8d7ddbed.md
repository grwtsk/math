# source_quadratic_eq_positive_sub_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36018f03848dedab38ef57a3563230130bff9cbf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 511,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e3354cc-6040-74d9-25e6-678dce9063df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc64844f-62ea-e4d2-c130-1e9d5b3698c5",
  "kind": "theorem",
  "lexical_name": "source_quadratic_eq_positive_sub_negative",
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
  "slug": "source-quadratic-eq-positive-sub-negative--afabaadce05cbe8e8d7ddbed",
  "source": {
    "blob": "36018f03848dedab38ef57a3563230130bff9cbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 511,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afabaadce05cbe8e8d7ddbedfe7aab7653e8989e079ffaa2d5f34c9866d52e2e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc64844f-62ea-e4d2-c130-1e9d5b3698c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_quadratic_eq_positive_sub_negative (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      sourcePositiveValue A - sourceNegativeValue A := by
  rw [actual_sourceQuadraticValue_eq_spectral_integral A hA]
  unfold sourcePositiveValue sourceNegativeValue
  rw [← integral_sub (source_positive_integrable A hA) (source_negative_integrable A hA)]
  apply integral_congr_ae
  filter_upwards [] with ξ
  by_cases hm : 0 ≤ spectralMultiplier A ξ
  · simp [negativeMultiplier, max_eq_right hm, max_eq_left (neg_nonpos.mpr hm)]
  · have hmle : spectralMultiplier A ξ ≤ 0 := le_of_not_ge hm
    simp [negativeMultiplier, max_eq_left hmle, max_eq_right (neg_nonneg.mpr hmle)]

/-- If the still-open exact estimate holds, the actual positive expectation must also be
unbounded. The estimate premise is retained; this theorem supplies no uniform estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36018f03848dedab38ef57a3563230130bff9cbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
