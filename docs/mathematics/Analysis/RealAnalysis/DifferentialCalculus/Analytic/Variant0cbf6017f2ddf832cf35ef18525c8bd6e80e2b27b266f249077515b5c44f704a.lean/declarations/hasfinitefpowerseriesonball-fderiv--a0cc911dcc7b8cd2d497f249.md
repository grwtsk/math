# HasFiniteFPowerSeriesOnBall.fderiv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8298a49809df177c2399108cdc29aad29172c363",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 496,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e294e736-529a-0f5a-bbe2-a9407daeda95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1de7797c-d57a-5d20-8c66-08ad933dc850",
  "kind": "theorem",
  "lexical_name": "HasFiniteFPowerSeriesOnBall.fderiv'",
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
  "slug": "hasfinitefpowerseriesonball-fderiv--a0cc911dcc7b8cd2d497f249",
  "source": {
    "blob": "8298a49809df177c2399108cdc29aad29172c363",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 496,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0cc911dcc7b8cd2d497f2495bcc6d7b1fd9ab21f19b11adaeac8f3299ffd66b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1de7797c-d57a-5d20-8c66-08ad933dc850`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFiniteFPowerSeriesOnBall.fderiv' (h : HasFiniteFPowerSeriesOnBall f p x n r) :
    HasFiniteFPowerSeriesOnBall (fderiv 𝕜 f) p.derivSeries x (n - 1) r := by
  obtain rfl | hn := eq_or_ne n 0
  · rw [zero_tsub]
    refine HasFiniteFPowerSeriesOnBall.bound_zero_of_eq_zero (fun y hy ↦ ?_) h.r_pos fun n ↦ ?_
    · rw [Filter.EventuallyEq.fderiv_eq (f := fun _ ↦ 0)]
      · simp
      · exact Filter.eventuallyEq_iff_exists_mem.mpr ⟨EMetric.ball x r,
          EMetric.isOpen_ball.mem_nhds hy, fun z hz ↦ by rw [h.eq_zero_of_bound_zero z hz]⟩
    · apply ContinuousMultilinearMap.ext; intro a
      change (continuousMultilinearCurryFin1 𝕜 E F) (p.changeOriginSeries 1 n a) = 0
      rw [p.changeOriginSeries_finite_of_finite h.finite 1 (Nat.zero_le _)]
      exact map_zero _
  · rw [← Nat.succ_pred hn] at h
    exact h.fderiv

/-- If a function is polynomial on a set `s`, so is its Fréchet derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8298a49809df177c2399108cdc29aad29172c363` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
