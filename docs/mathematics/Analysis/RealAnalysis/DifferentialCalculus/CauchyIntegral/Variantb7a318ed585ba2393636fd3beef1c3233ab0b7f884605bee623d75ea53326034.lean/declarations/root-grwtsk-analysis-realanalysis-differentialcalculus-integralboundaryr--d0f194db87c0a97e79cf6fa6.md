# _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IntegralBoundaryRectOfHasFDerivAtRealOffCountable.Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.DiffContOnCl.hasFPowerSeriesOnBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:195e991b-b745-2b64-b02c-d3a8ffd4cb19",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IntegralBoundaryRectOfHasFDerivAtRealOffCountable.Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.DiffContOnCl.hasFPowerSeriesOnBall",
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
  "slug": "root-grwtsk-analysis-realanalysis-differentialcalculus-integralboundaryr--d0f194db87c0a97e79cf6fa6",
  "source": {
    "blob": "3fc29ec60293100cf20b491a6a6d36c593189173",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 562,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variantb7a318ed585ba2393636fd3beef1c3233ab0b7f884605bee623d75ea53326034.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0f194db87c0a97e79cf6fa662ac2668de14b9b7dadab74c70b95777d62dfd8b",
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

Occurrence: `result:195e991b-b745-2b64-b02c-d3a8ffd4cb19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 562–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IntegralBoundaryRectOfHasFDerivAtRealOffCountable.Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.DiffContOnCl.hasFPowerSeriesOnBall {R : ℝ≥0} {c : ℂ} {f : ℂ → E}
    (hf : DiffContOnCl ℂ f (ball c R)) (hR : 0 < R) :
    HasFPowerSeriesOnBall f (cauchyPowerSeries f c R) c R :=
  hasFPowerSeriesOnBall_of_differentiable_off_countable countable_empty hf.continuousOn_ball
    (fun _z hz => hf.differentiableAt isOpen_ball hz.1) hR

/-- If `f : ℂ → E` is complex differentiable on a closed disc of positive radius, then it is
analytic on the corresponding open disc, and the coefficients of the power series are given by
Cauchy integral formulas. See also
`Complex.hasFPowerSeriesOnBall_of_differentiable_off_countable` for a version of this lemma with
weaker assumptions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variantb7a318ed585ba2393636fd3beef1c3233ab0b7f884605bee623d75ea53326034.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variantb7a318ed585ba2393636fd3beef1c3233ab0b7f884605bee623d75ea53326034.lean#L562).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc29ec60293100cf20b491a6a6d36c593189173` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
