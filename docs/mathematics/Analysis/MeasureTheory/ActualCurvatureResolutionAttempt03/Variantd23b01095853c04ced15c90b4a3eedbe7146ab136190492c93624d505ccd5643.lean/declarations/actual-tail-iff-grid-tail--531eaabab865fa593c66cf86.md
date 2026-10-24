# actual_tail_iff_grid_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49ec851e-d3f3-17a6-586a-5de88004dc21",
  "kind": "theorem",
  "lexical_name": "actual_tail_iff_grid_tail",
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
  "slug": "actual-tail-iff-grid-tail--531eaabab865fa593c66cf86",
  "source": {
    "blob": "eab3e859c5cd7962f853f55d8bdcb3c409656e20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 152,
    "path": "GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variantd23b01095853c04ced15c90b4a3eedbe7146ab136190492c93624d505ccd5643.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:531eaabab865fa593c66cf864bf66630494ad28754a2889f1ff7f3a5ad1a4176",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variantd23b01095853c04ced15c90b4a3eedbe7146ab136190492c93624d505ccd5643.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49ec851e-d3f3-17a6-586a-5de88004dc21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_tail_iff_grid_tail : CriticalRemovedPairedTailLowerBound ↔
    CurvatureGridTailLowerBound := by
  constructor
  · rintro ⟨B,hB,R,hR,h⟩
    refine ⟨B+1,by linarith,R,hR,?_⟩
    intro A hRA
    have hA : 1≤A := hR.trans hRA
    have he := actual_joint_grid_work_accuracy (n:=curvatureResolutionCount A 1)
      hA (by norm_num : (0:ℝ)<1) le_rfl
    have hs := (abs_le.mp he).1
    have hb := h A hRA
    linarith
  · rintro ⟨B,hB,R,hR,h⟩
    refine ⟨B+1,by linarith,R,hR,?_⟩
    intro A hRA
    have hA : 1≤A := hR.trans hRA
    have he := actual_joint_grid_work_accuracy (n:=curvatureResolutionCount A 1)
      hA (by norm_num : (0:ℝ)<1) le_rfl
    have hs := (abs_le.mp he).2
    have hb := h A hRA
    linarith

end ContinuousResearch.ActualCurvatureResolution
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variantd23b01095853c04ced15c90b4a3eedbe7146ab136190492c93624d505ccd5643.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variantd23b01095853c04ced15c90b4a3eedbe7146ab136190492c93624d505ccd5643.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eab3e859c5cd7962f853f55d8bdcb3c409656e20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
