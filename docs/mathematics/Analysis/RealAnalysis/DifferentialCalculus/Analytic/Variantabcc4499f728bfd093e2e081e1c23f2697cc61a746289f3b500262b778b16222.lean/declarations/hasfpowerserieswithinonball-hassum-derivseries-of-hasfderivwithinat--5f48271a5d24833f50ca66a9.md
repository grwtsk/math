# HasFPowerSeriesWithinOnBall.hasSum_derivSeries_of_hasFDerivWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4aa08f89-f0f0-65e0-3b86-98f1cad6de20",
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
  "slug": "hasfpowerserieswithinonball-hassum-derivseries-of-hasfderivwithinat--5f48271a5d24833f50ca66a9",
  "source": {
    "blob": "58732ca32810577e144569aedf1b4e3825c2e505",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 303,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variantabcc4499f728bfd093e2e081e1c23f2697cc61a746289f3b500262b778b16222.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f48271a5d24833f50ca66a9603180cc73d104cc1b4190593b167a38a9b3c20f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variantabcc4499f728bfd093e2e081e1c23f2697cc61a746289f3b500262b778b16222.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4aa08f89-f0f0-65e0-3b86-98f1cad6de20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–338.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variantabcc4499f728bfd093e2e081e1c23f2697cc61a746289f3b500262b778b16222.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variantabcc4499f728bfd093e2e081e1c23f2697cc61a746289f3b500262b778b16222.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58732ca32810577e144569aedf1b4e3825c2e505` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
