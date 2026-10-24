# iteratedDeriv_two_cgf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c509eed-8a9a-0629-d36a-de95f8e39e3e",
  "kind": "lemma",
  "lexical_name": "iteratedDeriv_two_cgf",
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
  "slug": "iteratedderiv-two-cgf--237f1be864ccc5f4befe2010",
  "source": {
    "blob": "924d2e96df8daa7830d4efae1c682e39889cbd6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 206,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:237f1be864ccc5f4befe201094079bd1ba49c25e749eb8545243cb2d35635ef2",
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

Occurrence: `result:2c509eed-8a9a-0629-d36a-de95f8e39e3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iteratedDeriv_two_cgf (h : v ∈ interior (integrableExpSet X μ)) :
    iteratedDeriv 2 (cgf X μ) v
      = μ[fun ω ↦ (X ω)^2 * exp (v * X ω)] / mgf X μ v - deriv (cgf X μ) v ^ 2 := by
  rw [iteratedDeriv_succ, iteratedDeriv_one]
  by_cases hμ : μ = 0
  · simp [hμ]
  have h_mem : ∀ᶠ y in 𝓝 v, y ∈ interior (integrableExpSet X μ) :=
    isOpen_interior.eventually_mem h
  have h_d_cgf : deriv (cgf X μ) =ᶠ[𝓝 v] fun u ↦ μ[fun ω ↦ X ω * exp (u * X ω)] / mgf X μ u := by
    filter_upwards [h_mem] with u hu using deriv_cgf hu
  have h_d_mgf : deriv (mgf X μ) =ᶠ[𝓝 v] fun u ↦ μ[fun ω ↦ X ω * exp (u * X ω)] := by
    filter_upwards [h_mem] with u hu using deriv_mgf hu
  rw [h_d_cgf.deriv_eq]
  calc deriv (fun u ↦ (∫ ω, X ω * exp (u * X ω) ∂μ) / mgf X μ u) v
  _ = (deriv (fun u ↦ ∫ ω, X ω * exp (u * X ω) ∂μ) v * mgf X μ v -
      (∫ ω, X ω * exp (v * X ω) ∂μ) * deriv (mgf X μ) v) / mgf X μ v ^ 2 := by
    rw [deriv_div]
    · rw [h_d_mgf.symm.differentiableAt_iff, ← iteratedDeriv_one]
      exact differentiableAt_iteratedDeriv_mgf h 1
    · exact differentiableAt_mgf h
    · exact (mgf_pos' hμ (interior_subset (s := integrableExpSet X μ) h)).ne'
  _ = (deriv (fun u ↦ ∫ ω, X ω * exp (u * X ω) ∂μ) v * mgf X μ v -
      (∫ ω, X ω * exp (v * X ω) ∂μ) * ∫ ω, X ω * exp (v * X ω) ∂μ) / mgf X μ v ^ 2 := by
    rw [deriv_mgf h]
  _ = deriv (fun u ↦ ∫ ω, X ω * exp (u * X ω) ∂μ) v / mgf X μ v - deriv (cgf X μ) v ^ 2 := by
    rw [sub_div]
    congr 1
    · rw [pow_two, div_mul_eq_div_div, mul_div_assoc, div_self, mul_one]
      exact (mgf_pos' hμ (interior_subset (s := integrableExpSet X μ) h)).ne'
    · rw [deriv_cgf h]
      ring
  _ = (∫ ω, (X ω) ^ 2 * exp (v * X ω) ∂μ) / mgf X μ v - deriv (cgf X μ) v ^ 2 := by
    congr
    convert (hasDerivAt_integral_pow_mul_exp_real h 1).deriv using 1
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `924d2e96df8daa7830d4efae1c682e39889cbd6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
