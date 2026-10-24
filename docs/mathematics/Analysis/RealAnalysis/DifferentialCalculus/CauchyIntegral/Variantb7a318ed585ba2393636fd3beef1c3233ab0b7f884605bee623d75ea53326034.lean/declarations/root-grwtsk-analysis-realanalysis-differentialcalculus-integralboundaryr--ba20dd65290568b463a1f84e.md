# _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IntegralBoundaryRectOfHasFDerivAtRealOffCountable.Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.DifferentiableOn.hasFPowerSeriesOnBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65babb3d-0d1b-22eb-0b2a-cfe82d00423c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IntegralBoundaryRectOfHasFDerivAtRealOffCountable.Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.DifferentiableOn.hasFPowerSeriesOnBall",
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
  "slug": "root-grwtsk-analysis-realanalysis-differentialcalculus-integralboundaryr--ba20dd65290568b463a1f84e",
  "source": {
    "blob": "3fc29ec60293100cf20b491a6a6d36c593189173",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 579,
    "line": 573,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variantb7a318ed585ba2393636fd3beef1c3233ab0b7f884605bee623d75ea53326034.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba20dd65290568b463a1f84e3a1a695a7a38be4097d227ae5f40dc26e1b15fbe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variantb7a318ed585ba2393636fd3beef1c3233ab0b7f884605bee623d75ea53326034.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65babb3d-0d1b-22eb-0b2a-cfe82d00423c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IntegralBoundaryRectOfHasFDerivAtRealOffCountable.Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.DifferentiableOn.hasFPowerSeriesOnBall {R : ℝ≥0} {c : ℂ} {f : ℂ → E}
    (hd : DifferentiableOn ℂ f (closedBall c R)) (hR : 0 < R) :
    HasFPowerSeriesOnBall f (cauchyPowerSeries f c R) c R :=
  (hd.mono closure_ball_subset_closedBall).diffContOnCl.hasFPowerSeriesOnBall hR

/-- If `f : ℂ → E` is complex differentiable on some set `s`, then it is analytic at any point `z`
such that `s ∈ 𝓝 z` (equivalently, `z ∈ interior s`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variantb7a318ed585ba2393636fd3beef1c3233ab0b7f884605bee623d75ea53326034.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variantb7a318ed585ba2393636fd3beef1c3233ab0b7f884605bee623d75ea53326034.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc29ec60293100cf20b491a6a6d36c593189173` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
