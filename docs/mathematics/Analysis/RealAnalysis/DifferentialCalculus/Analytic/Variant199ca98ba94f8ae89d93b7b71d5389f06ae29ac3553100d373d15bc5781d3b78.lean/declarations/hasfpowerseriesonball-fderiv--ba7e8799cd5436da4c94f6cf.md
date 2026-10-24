# HasFPowerSeriesOnBall.fderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d4425b4de63ada131243cbee2b89776438451db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89203ce3-fb14-1662-dd8f-8fd5810fcb78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0ea4d72-93e5-83f1-fbfe-d1ce9356440a",
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
  "slug": "hasfpowerseriesonball-fderiv--ba7e8799cd5436da4c94f6cf",
  "source": {
    "blob": "4d4425b4de63ada131243cbee2b89776438451db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba7e8799cd5436da4c94f6cfa089e2b74ee11e7574062241f48b9a6ce1bafc87",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0ea4d72-93e5-83f1-fbfe-d1ce9356440a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–118.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d4425b4de63ada131243cbee2b89776438451db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
