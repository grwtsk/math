# source_laplace_eq_bump_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95b55d351c24351f84fe6c6b52562e0fb7a37e6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0733e425-a0e9-1d3d-9c90-d744e1b52ae8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa682ca2-3fe3-88f4-27d3-8e81d75a6628",
  "kind": "theorem",
  "lexical_name": "source_laplace_eq_bump_square",
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
  "slug": "source-laplace-eq-bump-square--67f6ced1e0889eb119c79669",
  "source": {
    "blob": "95b55d351c24351f84fe6c6b52562e0fb7a37e6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 254,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67f6ced1e0889eb119c79669f75da0e8009918eeaa30e2364636b5a95fd72b4f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa682ca2-3fe3-88f4-27d3-8e81d75a6628`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_laplace_eq_bump_square (A : ℝ) (z : ℂ) (hA : 1 ≤ A) :
    sourceLaplace A z = (A : ℂ) / (sourceNormalization A : ℂ) *
      (z ^ 2 - 1 / 4) ^ 2 * bumpLaplace ((A : ℂ) * z) ^ 2 := by
  have hApos : 0 < A := by linarith
  have hZpos := source_normalization_pos A hA
  have hAsqrt : (Real.sqrt A : ℂ) ^ 2 = (A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hApos.le
  have hZsqrt : (Real.sqrt (sourceNormalization A) : ℂ) ^ 2 =
      (sourceNormalization A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hZpos.le
  have ha : (Real.sqrt A : ℂ) ≠ 0 := by exact_mod_cast ne_of_gt (Real.sqrt_pos.mpr hApos)
  have hz : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 := by
    exact_mod_cast ne_of_gt (Real.sqrt_pos.mpr hZpos)
  have hAc : (A : ℂ) ≠ 0 := by exact_mod_cast ne_of_gt hApos
  have hZc : (sourceNormalization A : ℂ) ≠ 0 := by exact_mod_cast ne_of_gt hZpos
  rw [source_laplace_eq_test_product A z hA, normalized_test_laplace A z hA,
    normalized_test_laplace A (-z) hA, scaled_bump_laplace A z hApos,
    scaled_bump_laplace A (-z) hApos]
  simp_rw [bilateral_laplace_source_bump]
  rw [mul_neg, bump_laplace_even]
  simp only [neg_sq]
  field_simp [ha, hz, hAc, hZc]
  rw [hAsqrt, hZsqrt]

/-- Explicit source detection needs only the actual bump's nonvanishing and the pole factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variantdc3ca2afda3c01716da6d13faf161895b5574d9c53d0aca512927f77bfa8e9de.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95b55d351c24351f84fe6c6b52562e0fb7a37e6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
