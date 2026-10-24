# continuum_curvature_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c8488cc-2417-b468-a5c5-c158a54a180f",
  "kind": "theorem",
  "lexical_name": "continuum_curvature_integral",
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
  "slug": "continuum-curvature-integral--fb4a10ed4ab7de7cb48331b6",
  "source": {
    "blob": "cd5022722d1af19e4450cbf79750261c951d780b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 183,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb4a10ed4ab7de7cb48331b6e0e1e26ae4ba84fd536646f75971ac6f91384c8e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c8488cc-2417-b468-a5c5-c158a54a180f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem continuum_curvature_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * continuumRieszPrimitive t) =
      criticalContinuousMoment A := by
  have hp : 0 < A := by linarith
  have hd (t : ℝ) : HasDerivAt
      (fun u => continuumRieszPrimitive u * deriv (sourceCorrelation explicitSecondDerivative A) u -
        continuumRieszDerivative u * sourceCorrelation explicitSecondDerivative A u)
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * continuumRieszPrimitive t -
        Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t) t := by
    exact (((continuumRiesz_hasDerivAt t).mul (correlation_deriv_hasDerivAt A t hp)).sub
      ((continuumRieszDerivative_hasDerivAt t).mul (correlation_hasDerivAt A t hp))).congr_deriv
      (by ring)
  have hq : Continuous continuumRieszPrimitive := by unfold continuumRieszPrimitive; fun_prop
  have hsecond := correlation_second_continuous A hp
  have hexp : Continuous (fun t : ℝ => Real.exp (t / 2)) := by fun_prop
  have hmoment : Continuous (fun t : ℝ => Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) :=
    hexp.mul (sourceCorrelation_contDiff A hp).continuous
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    (((hsecond.mul hq).sub hmoment).intervalIntegrable 0 (2 * A))
  rw [sourceCorrelation_upper_endpoint A hp, correlation_deriv_at_upper A hp] at hi
  have hq0 : continuumRieszPrimitive 0 = 0 := by norm_num [continuumRieszPrimitive]
  have hq'0 : continuumRieszDerivative 0 = 0 := by norm_num [continuumRieszDerivative]
  simp only [hq0, hq'0, mul_zero, zero_mul, sub_zero] at hi
  rw [intervalIntegral.integral_sub
    (f := fun t => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      continuumRieszPrimitive t)
    (g := fun t => Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t)
    ((hsecond.mul hq).intervalIntegrable _ _) (hmoment.intervalIntegrable _ _)] at hi
  simpa only [criticalContinuousMoment, criticalPrimeTest] using sub_eq_zero.mp hi

/-- Exact complete source reconstruction; no mean or prime-distribution premise is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5022722d1af19e4450cbf79750261c951d780b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
