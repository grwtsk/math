# sourceCorrelation_deviation_bound_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0f55364-eb4c-c3d1-3428-795eb75bd59c",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_deviation_bound_nonneg",
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
  "slug": "sourcecorrelation-deviation-bound-nonneg--91c3551cf0cf94323650cc76",
  "source": {
    "blob": "4394fd6f1b3c30b5ba84459ae0ce1828ce799ef0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 50,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Variantbda9f2b5a1348a4293752f80c60c9a894d04f10dc1929b3659f66836141cd6ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91c3551cf0cf94323650cc76c7540616691258b00008f7270c6b325b2f1d6062",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Variantbda9f2b5a1348a4293752f80c60c9a894d04f10dc1929b3659f66836141cd6ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0f55364-eb4c-c3d1-3428-795eb75bd59c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sourceCorrelation_deviation_bound_nonneg (A t : ℝ) (hA : 1 ≤ A)
    (ht : 0 ≤ t) :
    |sourceCorrelation explicitSecondDerivative A t - 1| ≤ 65 * t ^ 2 / (6 * A ^ 2) := by
  rw [sourceCorrelation_deviation_integral A t hA]
  have hd := sourceCorrelation_derivative_intervalIntegrable A 0 t hA
  calc
    _ ≤ ∫ u in 0..t, |deriv (sourceCorrelation explicitSecondDerivative A) u| := by
      simpa only [Real.norm_eq_abs] using
        intervalIntegral.norm_integral_le_integral_norm (f := deriv
          (sourceCorrelation explicitSecondDerivative A)) ht
    _ ≤ ∫ u in 0..t, (65 / (3 * A ^ 2)) * u := by
      apply intervalIntegral.integral_mono_on ht
        (by simpa only [Real.norm_eq_abs] using hd.norm)
        ((continuous_const.mul continuous_id).intervalIntegrable 0 t)
      intro u hu
      have h := sourceCorrelation_derivative_linear_bound A u hA
      rwa [abs_of_nonneg hu.1] at h
    _ = _ := by
      rw [intervalIntegral.integral_const_mul, integral_id]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Variantbda9f2b5a1348a4293752f80c60c9a894d04f10dc1929b3659f66836141cd6ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Variantbda9f2b5a1348a4293752f80c60c9a894d04f10dc1929b3659f66836141cd6ad.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4394fd6f1b3c30b5ba84459ae0ce1828ce799ef0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
