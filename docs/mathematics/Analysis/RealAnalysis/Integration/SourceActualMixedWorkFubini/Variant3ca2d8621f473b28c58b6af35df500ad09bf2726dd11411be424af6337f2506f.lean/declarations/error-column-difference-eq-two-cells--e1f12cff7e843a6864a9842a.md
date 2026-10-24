# error_column_difference_eq_two_cells

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "337c6763e2e148a7d3ab6fbb64268e90dd4b151b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 403,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3ca2d8621f473b28c58b6af35df500ad09bf2726dd11411be424af6337f2506f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35f05d71-966e-61db-1b84-20e2adf10a41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6b8d254-d8b1-6a3b-cdcf-530773805973",
  "kind": "theorem",
  "lexical_name": "error_column_difference_eq_two_cells",
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
  "slug": "error-column-difference-eq-two-cells--e1f12cff7e843a6864a9842a",
  "source": {
    "blob": "337c6763e2e148a7d3ab6fbb64268e90dd4b151b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 403,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variant3ca2d8621f473b28c58b6af35df500ad09bf2726dd11411be424af6337f2506f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1f12cff7e843a6864a9842a12fe1fd6e5bce097434755b70c8dd15044e11eb9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variant3ca2d8621f473b28c58b6af35df500ad09bf2726dd11411be424af6337f2506f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6b8d254-d8b1-6a3b-cdcf-530773805973`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem error_column_difference_eq_two_cells
    {A k : ℝ} (hA : 0 < A) (hk : 0 < k) (t : ℝ) :
    mangoldtLogError t *
        (sourceColumnTimeDeriv A t k - sourceColumnTimeDeriv A t (k + 1)) =
      (∫ u in k..(k + 1), cellInner
        (deriv (normalizedTest explicitSecondDerivative A)) t u) +
        (1 / 4 : ℝ) * (∫ u in k..(k + 1), cellInner
          (normalizedTest explicitSecondDerivative A) t u) := by
  rw [sourceColumnTimeDeriv_sub_eq_neg_cell hA hk]
  calc
    _ = ∫ u in k..(k + 1), -mangoldtLogError t * mixedDensity A t u := by
      rw [intervalIntegral.integral_const_mul]
      ring
    _ = ∫ u in k..(k + 1),
        cellInner (deriv (normalizedTest explicitSecondDerivative A)) t u +
          (1 / 4 : ℝ) * cellInner (normalizedTest explicitSecondDerivative A) t u := by
      apply intervalIntegral.integral_congr
      intro u _
      rw [cellInner_eq_scalar_products, cellInner_eq_scalar_products,
        source_products_eq_correlation, deriv_source_products_eq_neg_curvature hA]
      dsimp only [mixedDensity, errorExp]
      ring
    _ = _ := by
      rw [intervalIntegral.integral_add
        (deriv_source_cellInner_intervalIntegrable_u hA hk t)
        ((source_cellInner_intervalIntegrable_u hA hk t).const_mul (1 / 4)),
        intervalIntegral.integral_const_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variant3ca2d8621f473b28c58b6af35df500ad09bf2726dd11411be424af6337f2506f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variant3ca2d8621f473b28c58b6af35df500ad09bf2726dd11411be424af6337f2506f.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `337c6763e2e148a7d3ab6fbb64268e90dd4b151b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
