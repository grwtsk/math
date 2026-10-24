# sourceCorrelation_exists_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:459a3a32-7f16-8b81-ed0a-79abcdcf542f",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_exists_neg",
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
  "slug": "sourcecorrelation-exists-neg--a41d813eb0114ea48d4a600d",
  "source": {
    "blob": "f91b52da12005da93ee25bf01a8bc2ccb7d32134",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelationSignChange/Variantef61351637ce028de0d2c7143d9dde81ea25648932f8641aa4a7219c336f039b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a41d813eb0114ea48d4a600d7b22a64cd11092d6c738ccc06186dca5100e9421",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelationSignChange/Variantef61351637ce028de0d2c7143d9dde81ea25648932f8641aa4a7219c336f039b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:459a3a32-7f16-8b81-ed0a-79abcdcf542f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_exists_neg {A : ℝ} (hA : 0 < A) :
    ∃ t : ℝ, sourceCorrelation explicitSecondDerivative A t < 0 := by
  by_contra hn
  push_neg at hn
  let f : ℝ → ℝ := fun t => Real.exp (t / 2) *
    sourceCorrelation explicitSecondDerivative A t
  have hc : Continuous f :=
    (Real.continuous_exp.comp (continuous_id.div_const 2)).mul
      (sourceCorrelation_contDiff A hA).continuous
  have hs : HasCompactSupport f := (sourceCorrelation_hasCompactSupport A hA).mul_left
  have hp : 0 ≤ f := by
    intro t
    exact mul_nonneg (Real.exp_pos _).le (hn t)
  have hf0 : f 0 ≠ 0 := by
    simp [f, sourceCorrelation_zero hA]
  have hi : 0 < ∫ t : ℝ, f t :=
    hc.integral_pos_of_hasCompactSupport_nonneg_nonzero hs hp hf0
  have hz : (∫ t : ℝ, f t) = 0 := (sourceCorrelation_critical_filter_zero hA).1
  linarith

/-- The negative value is internal to the literal positive half-support, excluding endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelationSignChange/Variantef61351637ce028de0d2c7143d9dde81ea25648932f8641aa4a7219c336f039b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelationSignChange/Variantef61351637ce028de0d2c7143d9dde81ea25648932f8641aa4a7219c336f039b.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f91b52da12005da93ee25bf01a8bc2ccb7d32134` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
