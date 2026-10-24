# error_column_difference_eq_two_cells

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:935b5c87-829e-4fcf-75ae-799af055d11a",
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
  "slug": "error-column-difference-eq-two-cells--dfe035ddf933ceb8ea894727",
  "source": {
    "blob": "9928acffee7661a6b59bfbd4388d357adcbce672",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 437,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantc657567a15289d85571c58e42ab9c692a8a53992764fe2014082309094bd2ecc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfe035ddf933ceb8ea89472767c5fdcb2b0e20cd4f22641e7573bc6e92e72126",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantc657567a15289d85571c58e42ab9c692a8a53992764fe2014082309094bd2ecc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:935b5c87-829e-4fcf-75ae-799af055d11a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–467.

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
      change -mangoldtLogError t * mixedDensity A t u =
        cellInner (deriv (normalizedTest explicitSecondDerivative A)) t u +
          (1 / 4 : ℝ) * cellInner (normalizedTest explicitSecondDerivative A) t u
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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantc657567a15289d85571c58e42ab9c692a8a53992764fe2014082309094bd2ecc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantc657567a15289d85571c58e42ab9c692a8a53992764fe2014082309094bd2ecc.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9928acffee7661a6b59bfbd4388d357adcbce672` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
