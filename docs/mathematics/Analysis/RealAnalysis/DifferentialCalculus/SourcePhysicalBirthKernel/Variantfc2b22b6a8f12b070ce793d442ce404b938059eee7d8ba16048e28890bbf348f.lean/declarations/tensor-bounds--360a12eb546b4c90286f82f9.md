# tensor_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80f21936-dd62-392c-2560-c3be6e5417a9",
  "kind": "theorem",
  "lexical_name": "tensor_bounds",
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
  "slug": "tensor-bounds--360a12eb546b4c90286f82f9",
  "source": {
    "blob": "fe7e72018f9aa2a21b309f72742f492d1e23810f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 569,
    "line": 552,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variantfc2b22b6a8f12b070ce793d442ce404b938059eee7d8ba16048e28890bbf348f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:360a12eb546b4c90286f82f927f7080814707bc9d804fb02a7ab37100e96b6f3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variantfc2b22b6a8f12b070ce793d442ce404b938059eee7d8ba16048e28890bbf348f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80f21936-dd62-392c-2560-c3be6e5417a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem tensor_bounds {y t : ℝ} (hy : y ∈ Icc 0 1) (ht : t ∈ Icc 0 1) :
    1 ≤ physicalCurvaturePolynomial (t / 91) y ∧
      physicalCurvaturePolynomial (t / 91) y ≤ 24576 := by
  rw [physicalCurvature_eq_rows]
  constructor
  · rw [← tWeight_sum t]
    apply Finset.sum_le_sum
    intro j hj
    simpa only [one_mul] using mul_le_mul_of_nonneg_right
      (row_bounds j (Finset.mem_range.mp hj) hy).1 (tWeight_nonneg j ht)
  · calc
      _ ≤ ∑ j ∈ Finset.range 9, 24576 * tWeight j t := by
        apply Finset.sum_le_sum
        intro j hj
        exact mul_le_mul_of_nonneg_right
          (row_bounds j (Finset.mem_range.mp hj) hy).2 (tWeight_nonneg j ht)
      _ = 24576 := by rw [← Finset.mul_sum, tWeight_sum]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variantfc2b22b6a8f12b070ce793d442ce404b938059eee7d8ba16048e28890bbf348f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthKernel/Variantfc2b22b6a8f12b070ce793d442ce404b938059eee7d8ba16048e28890bbf348f.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7e72018f9aa2a21b309f72742f492d1e23810f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
