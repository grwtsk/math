# hasDerivAt_iteratedDeriv_mgf

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
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f59c8b10-c9ae-4ef6-6be2-e0e11beec0bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e8bfe73-5efb-e9c1-87f2-8ee028ef01d2",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_iteratedDeriv_mgf",
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
  "slug": "hasderivat-iteratedderiv-mgf--861b2f555395536b47067e28",
  "source": {
    "blob": "a8a84e07f8461c8c5bb2c7d7882d51e5e7e2e85c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 62,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:861b2f555395536b47067e283993fc64dd44f0824b0085cde7e11f4518a5dcb7",
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

Occurrence: `result:6e8bfe73-5efb-e9c1-87f2-8ee028ef01d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDerivAt_iteratedDeriv_mgf (ht : t ∈ interior (integrableExpSet X μ)) (n : ℕ) :
    HasDerivAt (iteratedDeriv n (mgf X μ)) μ[fun ω ↦ X ω ^ (n + 1) * exp (t * X ω)] t := by
  induction n generalizing t with
  | zero => simp [hasDerivAt_mgf ht]
  | succ n hn =>
    rw [iteratedDeriv_succ]
    have : deriv (iteratedDeriv n (mgf X μ))
        =ᶠ[𝓝 t] fun t ↦ μ[fun ω ↦ X ω ^ (n + 1) * exp (t * X ω)] := by
      have h_mem : ∀ᶠ y in 𝓝 t, y ∈ interior (integrableExpSet X μ) :=
        isOpen_interior.eventually_mem ht
      filter_upwards [h_mem] with y hy using HasDerivAt.deriv (hn hy)
    rw [EventuallyEq.hasDerivAt_iff this]
    exact hasDerivAt_integral_pow_mul_exp_real ht (n + 1)

/-- For `t ∈ interior (integrableExpSet X μ)`, the n-th derivative of `mgf X μ` at `t` is
`μ[X ^ n * exp (t * X)]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant63a9032d072bebba07b2430af80d00802f2ebdd0e5593c27814be847a4d71f55.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8a84e07f8461c8c5bb2c7d7882d51e5e7e2e85c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
