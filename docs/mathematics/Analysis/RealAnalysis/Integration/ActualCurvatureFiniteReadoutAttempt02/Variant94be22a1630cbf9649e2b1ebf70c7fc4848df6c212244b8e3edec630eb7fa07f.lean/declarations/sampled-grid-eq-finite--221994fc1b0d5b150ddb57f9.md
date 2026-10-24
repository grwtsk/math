# sampled_grid_eq_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:973657b0-b5d4-b908-dd0b-3c51ced178e4",
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
  "slug": "sampled-grid-eq-finite--221994fc1b0d5b150ddb57f9",
  "source": {
    "blob": "37df889bce4e886b3bc1c06ba08d455ded4b7a16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:221994fc1b0d5b150ddb57f9ac1a8c5e39f236b13689df8958dd507c95d50587",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:973657b0-b5d4-b908-dd0b-3c51ced178e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–118.

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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37df889bce4e886b3bc1c06ba08d455ded4b7a16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
