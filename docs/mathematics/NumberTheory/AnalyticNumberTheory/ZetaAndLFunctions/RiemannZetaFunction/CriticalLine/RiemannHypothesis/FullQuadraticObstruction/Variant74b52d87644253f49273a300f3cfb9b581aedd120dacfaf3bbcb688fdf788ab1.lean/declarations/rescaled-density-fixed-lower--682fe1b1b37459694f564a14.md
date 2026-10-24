# rescaled_density_fixed_lower

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
      "line": 356,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9dd30b7-9604-a8e2-f59b-6fe1191975fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06182749-371c-6810-55aa-3f50051285d5",
  "kind": "theorem",
  "lexical_name": "rescaled_density_fixed_lower",
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
  "slug": "rescaled-density-fixed-lower--682fe1b1b37459694f564a14",
  "source": {
    "blob": "36018f03848dedab38ef57a3563230130bff9cbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 356,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:682fe1b1b37459694f564a14b3161169671508e5e26f7f292b05940627e97eae",
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

Occurrence: `result:06182749-371c-6810-55aa-3f50051285d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rescaled_density_fixed_lower (A u : ℝ) (hA : 1 ≤ A) :
    JointPhaseScaling.bumpDensity u / (16 * sourceNormalization 1) ≤
      JointPhaseScaling.rescaledDensity A u := by
  have hZ := source_normalization_pos A hA
  have hZ1 := source_normalization_pos 1 (by norm_num)
  have hb0 := JointPhaseScaling.bump_moment_density_nonneg 0 u
  have hb1 : 0 ≤ JointPhaseScaling.bumpMomentDensity 1 u / (2 * A ^ 2) := by
    positivity [JointPhaseScaling.bump_moment_density_nonneg 1 u]
  have hb2 : 0 ≤ JointPhaseScaling.bumpMomentDensity 2 u / A ^ 4 := by
    positivity [JointPhaseScaling.bump_moment_density_nonneg 2 u]
  rw [JointPhaseScaling.rescaled_density_eq_three_moments A u hA]
  calc
    _ = (JointPhaseScaling.bumpMomentDensity 0 u / 16) / sourceNormalization 1 := by
      simp only [JointPhaseScaling.bumpMomentDensity, mul_zero, pow_zero, one_mul]
      ring
    _ ≤ (JointPhaseScaling.bumpMomentDensity 0 u / 16) / sourceNormalization A :=
      div_le_div_of_nonneg_left (by positivity) hZ
        (source_normalization_le_radius_one A hA)
    _ ≤ _ := div_le_div_of_nonneg_right (by linarith) hZ.le

/-- The actual bump spectral density is strictly positive at zero, using its exact native mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36018f03848dedab38ef57a3563230130bff9cbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
