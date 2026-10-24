# hasDerivAt_integral_pow_mul_exp_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8a84e07f8461c8c5bb2c7d7882d51e5e7e2e85c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b066a080-08e5-2c59-071a-5ea92b9c6926",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76312462-c84c-52c8-b2c9-309dc4feb9a1",
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
  "slug": "hasderivat-integral-pow-mul-exp-real--d978a445df5fd8425da1f309",
  "source": {
    "blob": "a8a84e07f8461c8c5bb2c7d7882d51e5e7e2e85c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 37,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d978a445df5fd8425da1f309e4a091e713626be0ab2caeb612d783bfe1c4acd0",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76312462-c84c-52c8-b2c9-309dc4feb9a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–55.

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

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8a84e07f8461c8c5bb2c7d7882d51e5e7e2e85c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
