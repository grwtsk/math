# pole_operator_twice_base_eq_scaled_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe66fa33-2645-77cf-ccd5-c5c4a5b868b8",
  "kind": "theorem",
  "lexical_name": "pole_operator_twice_base_eq_scaled_source",
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
  "slug": "pole-operator-twice-base-eq-scaled-source--ba4a42db29ef7694312221bf",
  "source": {
    "blob": "aca263d430a74e3e21e23155b3465801ceaaae4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleFrontierInvariance/Variant701f154f7519152bab62ce4cacc21f2c983a9a8a2fa78c330836152dfe7d5871.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba4a42db29ef7694312221bf3951337f866c9aef29b1d63336f9a36b52dffb61",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleFrontierInvariance/Variant701f154f7519152bab62ce4cacc21f2c983a9a8a2fa78c330836152dfe7d5871.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe66fa33-2645-77cf-ccd5-c5c4a5b868b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pole_operator_twice_base_eq_scaled_source (A : ℝ) (hA : 1 ≤ A) (t : ℝ) :
    poleSquaredDifferentialOperator (poleSquaredDifferentialOperator (baseCorrelation A)) t =
      sourceNormalization A *
        poleSquaredDifferentialOperator (sourceCorrelation explicitSecondDerivative A) t := by
  have he : poleSquaredDifferentialOperator (baseCorrelation A) =
      fun t ↦ sourceNormalization A * sourceCorrelation explicitSecondDerivative A t := by
    funext t
    have h := source_correlation_eq_pole_operator_sq A t hA
    exact (div_eq_iff (ne_of_gt (source_normalization_pos A hA))).mp h.symm |>.trans (mul_comm _ _)
  rw [he]
  unfold poleSquaredDifferentialOperator
  rw [iteratedDeriv_const_mul_field, iteratedDeriv_const_mul_field]
  ring

/-- The two legal derivative-weighted Green expressions are exactly the same scalar value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleFrontierInvariance/Variant701f154f7519152bab62ce4cacc21f2c983a9a8a2fa78c330836152dfe7d5871.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleFrontierInvariance/Variant701f154f7519152bab62ce4cacc21f2c983a9a8a2fa78c330836152dfe7d5871.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aca263d430a74e3e21e23155b3465801ceaaae4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
