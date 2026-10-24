# boundaryPivotFamily_secondChart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21e7d367-f4a9-323b-3ef8-46532c5851bc",
  "kind": "theorem",
  "lexical_name": "boundaryPivotFamily_secondChart",
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
  "slug": "boundarypivotfamily-secondchart--a389ddef4da6a7d0ae5d0b4a",
  "source": {
    "blob": "9c3002364feef6402d5a789849187b964197dc07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 127,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a389ddef4da6a7d0ae5d0b4a8546222f02d18078ae982f7597b6eb4c1a6820f6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21e7d367-f4a9-323b-3ef8-46532c5851bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryPivotFamily_secondChart (eps : ℝ) :
    pivotNormalize (boundaryPivotFamily eps) ![0, 2] =
      !![1, eps, 0, 0; 0, eps, 1, 1] := by
  have hp : columnMinor (boundaryPivotFamily eps) ![0, 2] ≠ 0 := by
    rw [boundaryPivotFamily_secondPivot]
    norm_num
  apply normalized_eq_of_frameRowSpace_eq _ _ ![0, 2]
    (pivotNormalize_pivot _ _ hp)
  · ext i j
    fin_cases i <;> fin_cases j <;>
      norm_num [columnSubmatrix, Matrix.one_apply, Matrix.cons_val_two, Matrix.cons_val_three]
  · rw [frameRowSpace_pivotNormalize _ _ hp]
    have he : (!![1, 1; 0, 1] : Matrix (Fin 2) (Fin 2) ℝ) * boundaryPivotFamily eps =
        !![1, eps, 0, 0; 0, eps, 1, 1] := by
      ext i j
      fin_cases i <;> fin_cases j <;>
        norm_num [boundaryPivotFamily, Matrix.mul_apply, Fin.sum_univ_two]
    rw [← he, frameRowSpace_mul_left_eq _ _ (by norm_num [Matrix.det_fin_two])]

end

end FormalResearch.PositiveAtlas.Grassmannian
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c3002364feef6402d5a789849187b964197dc07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
