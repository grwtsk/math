# hasDerivAt_integral_pow_mul_exp_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa64e816-7d41-2962-9aad-c5d427258a33",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_integral_pow_mul_exp_real",
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
  "slug": "hasderivat-integral-pow-mul-exp-real--bfdb621a98487b2a107fe433",
  "source": {
    "blob": "924d2e96df8daa7830d4efae1c682e39889cbd6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 45,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfdb621a98487b2a107fe433237d37eb1d15f2e7bba4585579c3fb1fbfb474d1",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa64e816-7d41-2962-9aad-c5d427258a33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDerivAt_integral_pow_mul_exp_real (ht : t ∈ interior (integrableExpSet X μ)) (n : ℕ) :
    HasDerivAt (fun t ↦ μ[fun ω ↦ X ω ^ n * exp (t * X ω)])
      μ[fun ω ↦ X ω ^ (n + 1) * exp (t * X ω)] t := by
  have h_re_of_mem n t (ht' : t ∈ interior (integrableExpSet X μ)) :
      (∫ ω, X ω ^ n * Complex.exp (t * X ω) ∂μ).re = ∫ ω, X ω ^ n * exp (t * X ω) ∂μ := by
    rw [← RCLike.re_eq_complex_re, ← integral_re]
    · norm_cast
    · refine integrable_pow_mul_cexp_of_re_mem_interior_integrableExpSet ?_ n
      simpa using ht'
  have h_re n : ∀ᶠ t' : ℝ in 𝓝 t, (∫ ω, X ω ^ n * Complex.exp (t' * X ω) ∂μ).re
      = ∫ ω, X ω ^ n * exp (t' * X ω) ∂μ := by
    filter_upwards [isOpen_interior.eventually_mem ht] with t ht' using h_re_of_mem n t ht'
  rw [← EventuallyEq.hasDerivAt_iff (h_re _), ← h_re_of_mem _ t ht]
  exact (hasDerivAt_integral_pow_mul_exp (by simp [ht]) n).real_of_complex

section DerivMGF

/-- For `t ∈ interior (integrableExpSet X μ)`, the derivative of `mgf X μ` at `t` is
`μ[X * exp (t * X)]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `924d2e96df8daa7830d4efae1c682e39889cbd6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
