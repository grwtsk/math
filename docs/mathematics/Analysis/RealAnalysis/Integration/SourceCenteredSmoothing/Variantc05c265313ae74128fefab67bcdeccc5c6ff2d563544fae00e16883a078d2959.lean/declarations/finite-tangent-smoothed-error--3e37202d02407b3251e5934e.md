# finite_tangent_smoothed_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abd1c8ba-dc35-808a-7974-4822d368df13",
  "kind": "theorem",
  "lexical_name": "finite_tangent_smoothed_error",
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
  "slug": "finite-tangent-smoothed-error--3e37202d02407b3251e5934e",
  "source": {
    "blob": "561f130dbc35c940fd418a3a01be16fc46200145",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 120,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variantc05c265313ae74128fefab67bcdeccc5c6ff2d563544fae00e16883a078d2959.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e37202d02407b3251e5934e63112ffb4edf7fc9503f136b3d73c35d6f25ccab",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variantc05c265313ae74128fefab67bcdeccc5c6ff2d563544fae00e16883a078d2959.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abd1c8ba-dc35-808a-7974-4822d368df13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_tangent_smoothed_error {A : ℝ} (hA : 200 ≤ A) (N : ℕ)
    (hy : Integrable (fun y : ℝ => y) μ)
    (hmean : (∫ y : ℝ, y ∂μ) = 0)
    (hy2 : Integrable (fun y : ℝ => y ^ 2) μ) :
    |SourceKapitzaSquareShell.finiteCompensatedReadout A N -
      ∑ n ∈ Finset.Icc 2 N, (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
        (smoothedCorrelation μ A (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) +
          (Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) *
            smoothedSlope μ A (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)))| ≤
      SourceKapitzaSquareShell.tangentErrorConstant / A ^ 2 +
        ((5 / (2 * A ^ 2)) * (∫ y : ℝ, y ^ 2 ∂μ)) *
          (∑ n ∈ Finset.Icc 2 N, |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n|) +
        ((5 / A ^ 2) * (∫ y : ℝ, |y| ∂μ)) *
          ∑ n ∈ Finset.Icc 2 N,
            |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n| *
              |Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)| := by
  have hs := SourceConservativeComparison.finite_tangent_comparison_abs_le A N
    (smoothedCorrelation μ A) (smoothedSlope μ A)
    ((5 / (2 * A ^ 2)) * (∫ y : ℝ, y ^ 2 ∂μ))
    ((5 / A ^ 2) * (∫ y : ℝ, |y| ∂μ))
    (fun _ _ => smoothedCorrelation_error μ hA _ hy hmean hy2)
    (fun _ _ => smoothedSlope_error μ hA _ hy.abs)
  exact (abs_sub_le _ (SourceKapitzaSquareShell.tangentReadout A N) _).trans
    ((add_le_add (SourceKapitzaSquareShell.finite_tangent_error hA N) hs).trans_eq (by ring))


end FormalResearch.RiemannHypothesis.SourceCenteredSmoothing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variantc05c265313ae74128fefab67bcdeccc5c6ff2d563544fae00e16883a078d2959.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variantc05c265313ae74128fefab67bcdeccc5c6ff2d563544fae00e16883a078d2959.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `561f130dbc35c940fd418a3a01be16fc46200145` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
