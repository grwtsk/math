# criticalPrimeTest_deriv_fixed_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3b1fd76-d206-ccf5-6796-8c22c8e737cb",
  "kind": "theorem",
  "lexical_name": "criticalPrimeTest_deriv_fixed_tendsto",
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
  "slug": "criticalprimetest-deriv-fixed-tendsto--81540c6868b952874f6cc4df",
  "source": {
    "blob": "9d34c8296eb1399b2e937c35e18ddcf2f3362373",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 62,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt01/Variantd4da8d28a2a2996564b73a7babfae2efa17ebd0858343c3c8d510df37f1d6f4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81540c6868b952874f6cc4df3a372b4a45282fcdac4a7be48080aec9f8ae56f4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt01/Variantd4da8d28a2a2996564b73a7babfae2efa17ebd0858343c3c8d510df37f1d6f4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3b1fd76-d206-ccf5-6796-8c22c8e737cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalPrimeTest_deriv_fixed_tendsto (u : ℝ) :
    Tendsto (fun A : ℝ => deriv (criticalPrimeTest A) u) atTop
      (𝓝 (Real.exp (u/2) / 2)) := by
  have h := ((SourceMangoldtNorm.sourceCorrelation_tendsto_one u).div_const 2).add
    (correlation_deriv_fixed_tendsto u)
  have hm := h.const_mul (Real.exp (u/2))
  have he : (fun A : ℝ => deriv (criticalPrimeTest A) u) =ᶠ[atTop]
      (fun A : ℝ => Real.exp (u/2) *
        (sourceCorrelation explicitSecondDerivative A u / 2 +
         deriv (sourceCorrelation explicitSecondDerivative A) u)) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    exact criticalPrimeTest_deriv A u (by linarith)
  apply hm.congr' he.symm
  simp only [add_zero, mul_div_assoc, mul_one]

/-- The genuine product-rule second derivative converges before any arithmetic pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt01/Variantd4da8d28a2a2996564b73a7babfae2efa17ebd0858343c3c8d510df37f1d6f4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt01/Variantd4da8d28a2a2996564b73a7babfae2efa17ebd0858343c3c8d510df37f1d6f4b.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d34c8296eb1399b2e937c35e18ddcf2f3362373` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
