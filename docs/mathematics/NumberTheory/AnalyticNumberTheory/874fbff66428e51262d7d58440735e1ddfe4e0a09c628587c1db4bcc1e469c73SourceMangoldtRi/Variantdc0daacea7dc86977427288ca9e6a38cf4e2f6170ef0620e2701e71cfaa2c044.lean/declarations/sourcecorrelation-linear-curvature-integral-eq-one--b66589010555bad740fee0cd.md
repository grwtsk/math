# sourceCorrelation_linear_curvature_integral_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6096db3-51da-4669-0142-1dcecd50a44a",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_linear_curvature_integral_eq_one",
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
  "slug": "sourcecorrelation-linear-curvature-integral-eq-one--b66589010555bad740fee0cd",
  "source": {
    "blob": "cd5022722d1af19e4450cbf79750261c951d780b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 292,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b66589010555bad740fee0cd2ff7dcfc98580c31f12ca7cd368e6185e4e28b23",
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

Occurrence: `result:e6096db3-51da-4669-0142-1dcecd50a44a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_linear_curvature_integral_eq_one (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * t) = 1 := by
  have hp : 0 < A := by linarith
  have hd (t : ℝ) : HasDerivAt
      (fun u => u * deriv (sourceCorrelation explicitSecondDerivative A) u -
        sourceCorrelation explicitSecondDerivative A u)
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * t) t := by
    exact (((hasDerivAt_id t).mul (correlation_deriv_hasDerivAt A t hp)).sub
      (correlation_hasDerivAt A t hp)).congr_deriv (by dsimp only [id_eq]; ring)
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    (((correlation_second_continuous A hp).mul continuous_id).intervalIntegrable 0 (2 * A))
  simpa only [sourceCorrelation_upper_endpoint A hp, correlation_deriv_at_upper A hp,
    actual_correlation_at_zero A hA, mul_zero, zero_mul, zero_sub, sub_neg_eq_add,
    neg_zero, zero_add] using hi

/-- The quotient profile keeps the source primitive and has continuous compact readouts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5022722d1af19e4450cbf79750261c951d780b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
