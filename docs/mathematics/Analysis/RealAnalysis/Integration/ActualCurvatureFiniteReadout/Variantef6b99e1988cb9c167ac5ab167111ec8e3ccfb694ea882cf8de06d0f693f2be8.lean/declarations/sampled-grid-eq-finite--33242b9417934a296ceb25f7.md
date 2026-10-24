# sampled_grid_eq_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f31c861-774c-d11d-a7ef-291d237ad9d9",
  "kind": "theorem",
  "lexical_name": "sampled_grid_eq_finite",
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
  "slug": "sampled-grid-eq-finite--33242b9417934a296ceb25f7",
  "source": {
    "blob": "7a393216359f6a48a73a1c8fd9e0f1baf1244e99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33242b9417934a296ceb25f75a428e99eff0fdbe753703c8cf647eeadaa1b02d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f31c861-774c-d11d-a7ef-291d237ad9d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampled_grid_eq_finite {A : ℝ} {n : ℕ} (hA : 1≤A) (hn : 0<n) :
    sampledCurvatureWork A (leftGridSample A n)=finiteCurvatureReadout A n := by
  have hs := intervalIntegral.sum_integral_adjacent_intervals
    (a:=gridPoint A n) (n:=n)
    (f:=fun u => criticalDiscrepancyBridge A (leftGridSample A n u)*pairedTailCurvature A u)
    (fun k _ => sampled_grid_cell_intervalIntegrable (k:=k) hA hn)
  rw [gridPoint_zero,gridPoint_upper hn] at hs
  rw [sampledCurvatureWork,←hs]
  unfold finiteCurvatureReadout
  apply Finset.sum_congr rfl
  intro k _
  exact actual_grid_cell_integral hA hn

end ContinuousResearch.ActualCurvatureFiniteReadout

-- Full frozen public declaration closure audits.

#check ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint
#print ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint

#check ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint_zero
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint_zero
#print ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint_zero

#check ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint_upper
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint_upper
#print ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint_upper

#check ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint_step_pos
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint_step_pos
#print ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint_step_pos

#check ContinuousResearch.ActualCurvatureFiniteReadout.leftGridSample_eq_on_cell
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.leftGridSample_eq_on_cell
#print ContinuousResearch.ActualCurvatureFiniteReadout.leftGridSample_eq_on_cell

#check ContinuousResearch.ActualCurvatureFiniteReadout.actual_curvature_cell_FTC
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.actual_curvature_cell_FTC
#print ContinuousResearch.ActualCurvatureFiniteReadout.actual_curvature_cell_FTC

#check ContinuousResearch.ActualCurvatureFiniteReadout.actual_grid_cell_integral
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.actual_grid_cell_integral
#print ContinuousResearch.ActualCurvatureFiniteReadout.actual_grid_cell_integral

#check ContinuousResearch.ActualCurvatureFiniteReadout.sampled_grid_cell_intervalIntegrable
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.sampled_grid_cell_intervalIntegrable
#print ContinuousResearch.ActualCurvatureFiniteReadout.sampled_grid_cell_intervalIntegrable

#check ContinuousResearch.ActualCurvatureFiniteReadout.finiteCurvatureReadout
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.finiteCurvatureReadout
#print ContinuousResearch.ActualCurvatureFiniteReadout.finiteCurvatureReadout

#check ContinuousResearch.ActualCurvatureFiniteReadout.sampled_grid_eq_finite
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.sampled_grid_eq_finite
#print ContinuousResearch.ActualCurvatureFiniteReadout.sampled_grid_eq_finite
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a393216359f6a48a73a1c8fd9e0f1baf1244e99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
