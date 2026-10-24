# HasFPowerSeriesOnBall.fderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a100ab6b-4f0b-e920-dcb8-925b5b69953f",
  "kind": "theorem",
  "lexical_name": "HasFPowerSeriesOnBall.fderiv",
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
  "slug": "hasfpowerseriesonball-fderiv--d9b48ff86142fa456cda4491",
  "source": {
    "blob": "eb79c85afa1487dcea5bd7353b29b46a8c3f6b12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant9f95ab7ab59bb3abcbca04dad1edc3324423725d2a0bf9ca890e691183653d2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9b48ff86142fa456cda449116fbc1eb4bbec22edb1b70a787607856d4df9eff",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant9f95ab7ab59bb3abcbca04dad1edc3324423725d2a0bf9ca890e691183653d2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a100ab6b-4f0b-e920-dcb8-925b5b69953f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFPowerSeriesOnBall.fderiv [CompleteSpace F] (h : HasFPowerSeriesOnBall f p x r) :
    HasFPowerSeriesOnBall (fderiv 𝕜 f)
      ((continuousMultilinearCurryFin1 𝕜 E F :
            (E[×1]→L[𝕜] F) →L[𝕜] E →L[𝕜] F).compFormalMultilinearSeries
        (p.changeOriginSeries 1))
      x r := by
  suffices A :
    HasFPowerSeriesOnBall
      (fun z => continuousMultilinearCurryFin1 𝕜 E F (p.changeOrigin (z - x) 1))
      ((continuousMultilinearCurryFin1 𝕜 E F :
            (E[×1]→L[𝕜] F) →L[𝕜] E →L[𝕜] F).compFormalMultilinearSeries
        (p.changeOriginSeries 1))
      x r
  · apply A.congr
    intro z hz
    dsimp
    rw [← h.fderiv_eq, add_sub_cancel'_right]
    simpa only [edist_eq_coe_nnnorm_sub, EMetric.mem_ball] using hz
  suffices B :
    HasFPowerSeriesOnBall (fun z => p.changeOrigin (z - x) 1) (p.changeOriginSeries 1) x r
  exact
    (continuousMultilinearCurryFin1 𝕜 E
              F).toContinuousLinearEquiv.toContinuousLinearMap.comp_hasFPowerSeriesOnBall
      B
  simpa using
    ((p.hasFPowerSeriesOnBall_changeOrigin 1 (h.r_pos.trans_le h.r_le)).mono h.r_pos
          h.r_le).comp_sub
      x
#align has_fpower_series_on_ball.fderiv HasFPowerSeriesOnBall.fderiv

/-- If a function is analytic on a set `s`, so is its Fréchet derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant9f95ab7ab59bb3abcbca04dad1edc3324423725d2a0bf9ca890e691183653d2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant9f95ab7ab59bb3abcbca04dad1edc3324423725d2a0bf9ca890e691183653d2c.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb79c85afa1487dcea5bd7353b29b46a8c3f6b12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
