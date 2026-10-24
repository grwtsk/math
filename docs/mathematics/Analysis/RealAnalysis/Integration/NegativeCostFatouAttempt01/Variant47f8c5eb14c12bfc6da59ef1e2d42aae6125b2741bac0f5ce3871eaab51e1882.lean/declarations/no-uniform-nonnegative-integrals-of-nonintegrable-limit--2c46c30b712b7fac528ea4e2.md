# no_uniform_nonnegative_integrals_of_nonintegrable_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93809148-e675-9e45-af27-fac07d57e0a4",
  "kind": "theorem",
  "lexical_name": "no_uniform_nonnegative_integrals_of_nonintegrable_limit",
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
  "slug": "no-uniform-nonnegative-integrals-of-nonintegrable-limit--2c46c30b712b7fac528ea4e2",
  "source": {
    "blob": "9ef2566957f1abad6049406aeddec39b4619b6e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt01/Variant47f8c5eb14c12bfc6da59ef1e2d42aae6125b2741bac0f5ce3871eaab51e1882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c46c30b712b7fac528ea4e2b9ede7aeee24e2daced7ff87e710541da5cc28d2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt01/Variant47f8c5eb14c12bfc6da59ef1e2d42aae6125b2741bac0f5ce3871eaab51e1882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93809148-e675-9e45-af27-fac07d57e0a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_uniform_nonnegative_integrals_of_nonintegrable_limit
    {G : ℕ → ℝ → ℝ} {f : ℝ → ℝ} {μ : Measure ℝ}
    (hi : ∀ n, Integrable (G n) μ)
    (hn : ∀ n, ∀ᵐ x ∂μ, 0 ≤ G n x)
    (hl : ∀ᵐ x ∂μ, Tendsto (fun n => G n x) atTop (𝓝 (f x)))
    (hf : ¬ Integrable f μ) :
    ¬ ∃ B : ℝ, ∀ n, (∫ x, G n x ∂μ) ≤ B := by
  rintro ⟨B,hB⟩
  exact hf (integrable_limit_of_nonnegative_uniform_integrals hi hn hB hl)

end ContinuousResearch.NegativeCostFatou
#print ContinuousResearch.NegativeCostFatou.integrable_limit_of_nonnegative_uniform_integrals
#print axioms ContinuousResearch.NegativeCostFatou.integrable_limit_of_nonnegative_uniform_integrals
#print ContinuousResearch.NegativeCostFatou.no_uniform_nonnegative_integrals_of_nonintegrable_limit
#print axioms ContinuousResearch.NegativeCostFatou.no_uniform_nonnegative_integrals_of_nonintegrable_limit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt01/Variant47f8c5eb14c12bfc6da59ef1e2d42aae6125b2741bac0f5ce3871eaab51e1882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt01/Variant47f8c5eb14c12bfc6da59ef1e2d42aae6125b2741bac0f5ce3871eaab51e1882.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2566957f1abad6049406aeddec39b4619b6e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
