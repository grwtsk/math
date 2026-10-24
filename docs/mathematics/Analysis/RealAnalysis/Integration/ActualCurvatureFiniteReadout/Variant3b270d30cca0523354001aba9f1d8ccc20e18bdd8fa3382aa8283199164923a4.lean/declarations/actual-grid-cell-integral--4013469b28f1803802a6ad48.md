# actual_grid_cell_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4374f775-c06f-ef64-643c-9604d6fff7a0",
  "kind": "theorem",
  "lexical_name": "actual_grid_cell_integral",
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
  "slug": "actual-grid-cell-integral--4013469b28f1803802a6ad48",
  "source": {
    "blob": "f0f48b9b0ca76973809058a4b721cabef4043d77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variant3b270d30cca0523354001aba9f1d8ccc20e18bdd8fa3382aa8283199164923a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4013469b28f1803802a6ad48fc594e2241a1bc09c59cf23c7bbe99ba05477ffd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variant3b270d30cca0523354001aba9f1d8ccc20e18bdd8fa3382aa8283199164923a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4374f775-c06f-ef64-643c-9604d6fff7a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_grid_cell_integral {A : ℝ} {n k : ℕ} (hA : 1≤A) (hn : 0<n) :
    (∫ u in gridPoint A n k..gridPoint A n (k+1),
      criticalDiscrepancyBridge A (leftGridSample A n u)*pairedTailCurvature A u)=
    criticalDiscrepancyBridge A (gridPoint A n k)*
      (deriv (pairedTailTest A) (gridPoint A n (k+1))-
       deriv (pairedTailTest A) (gridPoint A n k)) := by
  calc
    _ = ∫ u in gridPoint A n k..gridPoint A n (k+1),
        criticalDiscrepancyBridge A (gridPoint A n k)*pairedTailCurvature A u := by
      apply intervalIntegral.integral_congr_Ioo_of_le
        (gridPoint_step_pos (by linarith : 0<A) hn).le
      intro u hu
      dsimp only
      rw [leftGridSample_eq_on_cell (by linarith : 0<A) hn hu]
    _ = _ := by
      rw [intervalIntegral.integral_const_mul,actual_curvature_cell_FTC hA]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variant3b270d30cca0523354001aba9f1d8ccc20e18bdd8fa3382aa8283199164923a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variant3b270d30cca0523354001aba9f1d8ccc20e18bdd8fa3382aa8283199164923a4.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0f48b9b0ca76973809058a4b721cabef4043d77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
