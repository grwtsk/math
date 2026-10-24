# sourceCorrelation_linear_curvature_integral_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55d44dd7-a0b2-a02b-7495-7c1fe7116400",
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
  "slug": "sourcecorrelation-linear-curvature-integral-eq-one--2865b6a14f23acd5bef7a77c",
  "source": {
    "blob": "f34b18088dc057d23bdf4e79387c9185ac8815a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 284,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantcf530fba77f3514240b68bfd0c0d54d41db6a87ca2338988037d68bda188681f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2865b6a14f23acd5bef7a77c9056e0407350881ac4bc6837f9a5bbcb6a5632b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantcf530fba77f3514240b68bfd0c0d54d41db6a87ca2338988037d68bda188681f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55d44dd7-a0b2-a02b-7495-7c1fe7116400`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–300.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantcf530fba77f3514240b68bfd0c0d54d41db6a87ca2338988037d68bda188681f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantcf530fba77f3514240b68bfd0c0d54d41db6a87ca2338988037d68bda188681f.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f34b18088dc057d23bdf4e79387c9185ac8815a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
