# centered_cubic_row_integrable_of_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce2d52f630ec274745be9552a44092446177056f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a60ad55-509e-ea97-9a56-1ae496e9ea07",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:591c8c72-1a33-a75a-94eb-030822cf77c3",
  "kind": "theorem",
  "lexical_name": "centered_cubic_row_integrable_of_bound",
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
  "slug": "centered-cubic-row-integrable-of-bound--0afdebd995ec577362d0bb97",
  "source": {
    "blob": "ce2d52f630ec274745be9552a44092446177056f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 115,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0afdebd995ec577362d0bb975131a08f9c1d3376c4bfaaeffd6c7f2897e51b4f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:591c8c72-1a33-a75a-94eb-030822cf77c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_cubic_row_integrable_of_bound (A k : ℝ) {f : ℝ → ℝ}
    (hf : AEStronglyMeasurable f (volume.restrict (Ioi (1 : ℝ))))
    (hbound : ∀ u : ℝ, 1 < u → |f u| ≤ cubicUpperMajorant A k u) :
    IntegrableOn (fun u => centeredSawtooth u * f u) (Ioi (1 : ℝ)) := by
  apply ((cubicUpperMajorant_integrable A k).div_const 2).mono'
  · exact centeredSawtooth_measurable.aestronglyMeasurable.mul hf
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ (1 / 2 : ℝ) * cubicUpperMajorant A k u :=
        mul_le_mul (centeredSawtooth_abs_le_half u) (hbound u hu)
          (abs_nonneg _) (by norm_num)
      _ = _ := by ring

/-- The actual centered row budget retains its half factor and both logarithmic moments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce2d52f630ec274745be9552a44092446177056f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
