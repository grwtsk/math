# iteratedDeriv_two_cgf_eq_integral

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
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efda7230-56c9-54a4-6a8d-181021b82671",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad2883e0-23ed-9665-7c58-4e7a0c4665f9",
  "kind": "lemma",
  "lexical_name": "iteratedDeriv_two_cgf_eq_integral",
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
  "slug": "iteratedderiv-two-cgf-eq-integral--51d06dac1e762311e5c55622",
  "source": {
    "blob": "a8a84e07f8461c8c5bb2c7d7882d51e5e7e2e85c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 234,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51d06dac1e762311e5c55622801251da75a3a3821c725da5d4bd96e528291169",
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

Occurrence: `result:ad2883e0-23ed-9665-7c58-4e7a0c4665f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iteratedDeriv_two_cgf_eq_integral (h : v ∈ interior (integrableExpSet X μ)) :
    iteratedDeriv 2 (cgf X μ) v
      = μ[fun ω ↦ (X ω - deriv (cgf X μ) v)^2 * exp (v * X ω)] / mgf X μ v := by
  by_cases hμ : μ = 0
  · simp [hμ, iteratedDeriv_succ]
  rw [iteratedDeriv_two_cgf h]
  calc (∫ ω, (X ω) ^ 2 * exp (v * X ω) ∂μ) / mgf X μ v - deriv (cgf X μ) v ^ 2
  _ = (∫ ω, (X ω) ^ 2 * exp (v * X ω) ∂μ - 2 * (∫ ω, X ω * exp (v * X ω) ∂μ) * deriv (cgf X μ) v
      + deriv (cgf X μ) v ^ 2 * mgf X μ v) / mgf X μ v := by
    rw [add_div, sub_div, sub_add]
    congr 1
    rw [mul_div_cancel_right₀, deriv_cgf h]
    · ring
    · exact (mgf_pos' hμ (interior_subset (s := integrableExpSet X μ) h)).ne'
  _ = (∫ ω, ((X ω) ^ 2 - 2 * X ω * deriv (cgf X μ) v + deriv (cgf X μ) v ^ 2) * exp (v * X ω) ∂μ)
      / mgf X μ v := by
    congr 1
    simp_rw [add_mul, sub_mul]
    have h_int : Integrable (fun ω ↦ 2 * X ω * deriv (cgf X μ) v * exp (v * X ω)) μ := by
      simp_rw [mul_assoc, mul_comm (deriv (cgf X μ) v)]
      refine Integrable.const_mul ?_ _
      simp_rw [← mul_assoc]
      refine Integrable.mul_const ?_ _
      convert integrable_pow_mul_exp_of_mem_interior_integrableExpSet h 1
      simp
    rw [integral_add]
    rotate_left
    · exact (integrable_pow_mul_exp_of_mem_interior_integrableExpSet h 2).sub h_int
    · exact (interior_subset (s := integrableExpSet X μ) h).const_mul _
    rw [integral_sub (integrable_pow_mul_exp_of_mem_interior_integrableExpSet h 2) h_int]
    congr
    · rw [← integral_const_mul, ← integral_mul_const]
      congr with ω
      ring
    · rw [integral_const_mul, mgf]
  _ = (∫ ω, (X ω - deriv (cgf X μ) v) ^ 2 * exp (v * X ω) ∂μ) / mgf X μ v := by
    congr with ω
    ring

end DerivCGF

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8a84e07f8461c8c5bb2c7d7882d51e5e7e2e85c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
