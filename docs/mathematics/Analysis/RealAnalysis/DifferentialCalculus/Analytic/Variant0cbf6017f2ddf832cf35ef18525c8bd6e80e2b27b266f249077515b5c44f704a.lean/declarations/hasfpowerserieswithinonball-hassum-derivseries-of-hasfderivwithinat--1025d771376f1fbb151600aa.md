# HasFPowerSeriesWithinOnBall.hasSum_derivSeries_of_hasFDerivWithinAt

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
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:188486a4-ece5-8ca1-2d33-71db572c4e10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc94d8ed-0a63-0421-14bb-d470a83d6023",
  "kind": "theorem",
  "lexical_name": "HasFPowerSeriesWithinOnBall.hasSum_derivSeries_of_hasFDerivWithinAt",
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
  "slug": "hasfpowerserieswithinonball-hassum-derivseries-of-hasfderivwithinat--1025d771376f1fbb151600aa",
  "source": {
    "blob": "8298a49809df177c2399108cdc29aad29172c363",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 295,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1025d771376f1fbb151600aa0947e585ce450fca61a3a59529c40e766d14d3c3",
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

Occurrence: `result:cc94d8ed-0a63-0421-14bb-d470a83d6023`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFPowerSeriesWithinOnBall.hasSum_derivSeries_of_hasFDerivWithinAt
    (h : HasFPowerSeriesWithinOnBall f p s x r)
    {f' : E →L[𝕜] F}
    {y : E} (hy : (‖y‖₊ : ℝ≥0∞) < r) (h'y : x + y ∈ insert x s)
    (hf' : HasFDerivWithinAt f f' (insert x s) (x + y))
    (hu : UniqueDiffOn 𝕜 (insert x s)) :
    HasSum (fun n ↦ p.derivSeries n (fun _ ↦ y)) f' := by
  /- In the completion of the space, the derivative series is summable, and its sum is a derivative
  of the function. Therefore, by uniqueness of derivatives, its sum is the image of `f'` under
  the canonical embedding. As this is an embedding, it means that there was also convergence in
  the original space, to `f'`. -/
  let F' := UniformSpace.Completion F
  let a : F →L[𝕜] F' := UniformSpace.Completion.toComplL
  let b : (E →L[𝕜] F) →ₗᵢ[𝕜] (E →L[𝕜] F') := UniformSpace.Completion.toComplₗᵢ.postcomp
  rw [← b.isEmbedding.hasSum_iff]
  have : HasFPowerSeriesWithinOnBall (a ∘ f) (a.compFormalMultilinearSeries p) s x r :=
    a.comp_hasFPowerSeriesWithinOnBall h
  have Z := (this.fderivWithin hu).hasSum h'y (by simpa [edist_zero_eq_enorm] using hy)
  have : fderivWithin 𝕜 (a ∘ f) (insert x s) (x + y) = a ∘L f' := by
    apply HasFDerivWithinAt.fderivWithin _ (hu _ h'y)
    exact a.hasFDerivAt.comp_hasFDerivWithinAt (x + y) hf'
  rw [this] at Z
  convert Z with n
  ext v
  simp only [FormalMultilinearSeries.derivSeries,
    ContinuousLinearMap.compFormalMultilinearSeries_apply,
    FormalMultilinearSeries.changeOriginSeries,
    ContinuousLinearMap.compContinuousMultilinearMap_coe, ContinuousLinearEquiv.coe_coe,
    LinearIsometryEquiv.coe_coe, Function.comp_apply, ContinuousMultilinearMap.sum_apply, map_sum,
    ContinuousLinearMap.coe_sum', Finset.sum_apply,
    Matrix.zero_empty]
  rfl

/-- If a function has a power series within a set on a ball, then so does its derivative. Version
assuming that the function is analytic on `s`. For a version without this assumption but requiring
that `F` is complete, see `HasFPowerSeriesWithinOnBall.fderivWithin_of_mem`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant0cbf6017f2ddf832cf35ef18525c8bd6e80e2b27b266f249077515b5c44f704a.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8298a49809df177c2399108cdc29aad29172c363` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
