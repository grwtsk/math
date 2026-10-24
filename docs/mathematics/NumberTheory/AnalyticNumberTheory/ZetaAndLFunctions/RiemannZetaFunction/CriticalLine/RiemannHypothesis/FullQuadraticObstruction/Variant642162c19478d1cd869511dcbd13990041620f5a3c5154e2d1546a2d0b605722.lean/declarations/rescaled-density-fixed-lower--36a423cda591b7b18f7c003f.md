# rescaled_density_fixed_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cbebce8-29df-cd1a-d91b-4b30549ed08e",
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
  "slug": "rescaled-density-fixed-lower--36a423cda591b7b18f7c003f",
  "source": {
    "blob": "4be62d5ae1a61061ba5c1a1892e7a16927b1fb0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 364,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant642162c19478d1cd869511dcbd13990041620f5a3c5154e2d1546a2d0b605722.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36a423cda591b7b18f7c003f39d9f5fc61fb0a9fc1b87fd85513f93206288fe6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant642162c19478d1cd869511dcbd13990041620f5a3c5154e2d1546a2d0b605722.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cbebce8-29df-cd1a-d91b-4b30549ed08e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–384.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant642162c19478d1cd869511dcbd13990041620f5a3c5154e2d1546a2d0b605722.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant642162c19478d1cd869511dcbd13990041620f5a3c5154e2d1546a2d0b605722.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4be62d5ae1a61061ba5c1a1892e7a16927b1fb0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
