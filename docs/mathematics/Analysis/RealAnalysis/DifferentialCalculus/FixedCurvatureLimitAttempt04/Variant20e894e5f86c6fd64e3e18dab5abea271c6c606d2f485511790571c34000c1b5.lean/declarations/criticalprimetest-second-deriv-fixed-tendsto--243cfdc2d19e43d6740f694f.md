# criticalPrimeTest_second_deriv_fixed_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7b3a906-8017-641a-b15c-63ba479f5fea",
  "kind": "theorem",
  "lexical_name": "criticalPrimeTest_second_deriv_fixed_tendsto",
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
  "slug": "criticalprimetest-second-deriv-fixed-tendsto--243cfdc2d19e43d6740f694f",
  "source": {
    "blob": "000b73d09934bf54084f08f2dd0f4374e46f4cc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 78,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:243cfdc2d19e43d6740f694fab42872b2e7d0c673e4c17deba34f923e53158ee",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7b3a906-8017-641a-b15c-63ba479f5fea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalPrimeTest_second_deriv_fixed_tendsto (u : ℝ) :
    Tendsto (fun A : ℝ => deriv (deriv (criticalPrimeTest A)) u) atTop
      (𝓝 (Real.exp (u/2) / 4)) := by
  have h := (((SourceMangoldtNorm.sourceCorrelation_tendsto_one u).div_const 4).add
    (correlation_deriv_fixed_tendsto u)).add (correlation_second_deriv_fixed_tendsto u)
  have hm := h.const_mul (Real.exp (u/2))
  have he : (fun A : ℝ => deriv (deriv (criticalPrimeTest A)) u) =ᶠ[atTop]
      (fun A : ℝ => Real.exp (u/2) *
        (sourceCorrelation explicitSecondDerivative A u / 4 +
         deriv (sourceCorrelation explicitSecondDerivative A) u +
         deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u)) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    exact critical_second_deriv (by linarith) u
  simpa only [add_zero, div_eq_mul_inv, one_mul] using hm.congr' he.symm

/-- Strict positivity is derived from the literal limiting value, not assumed as a phase witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `000b73d09934bf54084f08f2dd0f4374e46f4cc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
