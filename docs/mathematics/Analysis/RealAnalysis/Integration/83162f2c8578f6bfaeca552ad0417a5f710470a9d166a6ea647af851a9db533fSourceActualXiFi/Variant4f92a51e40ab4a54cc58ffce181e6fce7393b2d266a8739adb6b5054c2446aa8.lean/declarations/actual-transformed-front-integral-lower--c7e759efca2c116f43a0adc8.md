# actual_transformed_front_integral_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3404ab5b-5f1f-11f8-8085-732629e7761a",
  "kind": "theorem",
  "lexical_name": "actual_transformed_front_integral_lower",
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
  "slug": "actual-transformed-front-integral-lower--c7e759efca2c116f43a0adc8",
  "source": {
    "blob": "b048a788125e7b1edfc4541dfea43ad78c2cc811",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 124,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533fSourceActualXiFi/Variant4f92a51e40ab4a54cc58ffce181e6fce7393b2d266a8739adb6b5054c2446aa8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7e759efca2c116f43a0adc87690ceb77750f99950d6bc8955bee6572ee7cb32",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533fSourceActualXiFi/Variant4f92a51e40ab4a54cc58ffce181e6fce7393b2d266a8739adb6b5054c2446aa8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3404ab5b-5f1f-11f8-8085-732629e7761a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_transformed_front_integral_lower (A : ℝ) (hA : 40 ≤ A) :
    -fixedFrontBudget ≤ ∫ y in 2..(13 / 2 : ℝ), actualTransformedXiBlockDensity A y := by
  have hmono : (∫ y in (2 : ℝ)..(13 / 2 : ℝ), -fixedFrontHeight) ≤
      ∫ y in 2..(13 / 2 : ℝ), actualTransformedXiBlockDensity A y := by
    apply intervalIntegral.integral_mono_on (by norm_num)
      (continuous_const.intervalIntegrable _ _)
      (actual_transformed_front_intervalIntegrable A hA)
    intro y hy
    exact (abs_le.mp (actual_transformed_front_density_abs_le A y hA hy.1 hy.2)).1
  have he : (∫ y in (2 : ℝ)..(13 / 2 : ℝ), -fixedFrontHeight) = -fixedFrontBudget := by
    rw [intervalIntegral.integral_const]
    unfold fixedFrontBudget
    simp only [smul_eq_mul]
    ring
  rw [he] at hmono
  exact hmono

end RH16ActualXiFixedFront
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533fSourceActualXiFi/Variant4f92a51e40ab4a54cc58ffce181e6fce7393b2d266a8739adb6b5054c2446aa8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533fSourceActualXiFi/Variant4f92a51e40ab4a54cc58ffce181e6fce7393b2d266a8739adb6b5054c2446aa8.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b048a788125e7b1edfc4541dfea43ad78c2cc811` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
