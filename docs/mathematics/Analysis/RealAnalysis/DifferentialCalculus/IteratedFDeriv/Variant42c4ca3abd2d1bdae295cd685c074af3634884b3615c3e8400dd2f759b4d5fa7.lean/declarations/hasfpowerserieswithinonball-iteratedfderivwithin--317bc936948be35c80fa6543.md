# HasFPowerSeriesWithinOnBall.iteratedFDerivWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b9cc988-7d2f-a894-fc73-94b0e9020355",
  "kind": "theorem",
  "lexical_name": "HasFPowerSeriesWithinOnBall.iteratedFDerivWithin",
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
  "slug": "hasfpowerserieswithinonball-iteratedfderivwithin--317bc936948be35c80fa6543",
  "source": {
    "blob": "eb37bddbbfcff564f7d8563ceeb960bb91e9fbe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 78,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:317bc936948be35c80fa65435a091ed500d410479a293f871c97239d6e821dbd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b9cc988-7d2f-a894-fc73-94b0e9020355`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem HasFPowerSeriesWithinOnBall.iteratedFDerivWithin
    (h : HasFPowerSeriesWithinOnBall f p s x r) (h' : AnalyticOn 𝕜 f s)
    (k : ℕ) (hs : UniqueDiffOn 𝕜 s) (hx : x ∈ s) :
    HasFPowerSeriesWithinOnBall (iteratedFDerivWithin 𝕜 k f s)
      (p.iteratedFDerivSeries k) s x r := by
  induction k with
  | zero =>
    exact (continuousMultilinearCurryFin0 𝕜 E F).symm
      |>.toContinuousLinearEquiv.toContinuousLinearMap.comp_hasFPowerSeriesWithinOnBall h
  | succ k ih =>
    rw [iteratedFDerivWithin_succ_eq_comp_left]
    apply (continuousMultilinearCurryLeftEquiv 𝕜 (fun _ : Fin (k + 1) ↦ E) F).symm
      |>.toContinuousLinearEquiv.toContinuousLinearMap.comp_hasFPowerSeriesWithinOnBall
        (ih.fderivWithin_of_mem_of_analyticOn (h'.iteratedFDerivWithin hs _) hs hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb37bddbbfcff564f7d8563ceeb960bb91e9fbe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
