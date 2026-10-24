# integral_abs_condExp_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3af52c0-3ff5-fa30-a920-66ef393fb430",
  "kind": "theorem",
  "lexical_name": "integral_abs_condExp_le",
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
  "slug": "integral-abs-condexp-le--97af9f7028b3769dbddeaf04",
  "source": {
    "blob": "b235c9258850a66d1d5c442b2d864d98c1788c2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 101,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97af9f7028b3769dbddeaf04e1643bac938dd3aecddaecdcf2208e154a192934",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3af52c0-3ff5-fa30-a920-66ef393fb430`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_condExp_le (f : α → ℝ) : ∫ x, |(μ[f|m]) x| ∂μ ≤ ∫ x, |f x| ∂μ := by
  by_cases hm : m ≤ m0
  swap
  · simp_rw [condExp_of_not_le hm, Pi.zero_apply, abs_zero, integral_zero]
    positivity
  by_cases hfint : Integrable f μ
  swap
  · simp only [condExp_of_not_integrable hfint, Pi.zero_apply, abs_zero, integral_const,
      Algebra.id.smul_eq_mul, mul_zero]
    positivity
  rw [integral_eq_lintegral_of_nonneg_ae, integral_eq_lintegral_of_nonneg_ae]
  · apply ENNReal.toReal_mono <;> simp_rw [← Real.norm_eq_abs, ofReal_norm_eq_enorm]
    · exact hfint.2.ne
    · rw [← eLpNorm_one_eq_lintegral_enorm, ← eLpNorm_one_eq_lintegral_enorm]
      exact eLpNorm_one_condExp_le_eLpNorm _
  · filter_upwards with x using abs_nonneg _
  · simp_rw [← Real.norm_eq_abs]
    exact hfint.1.norm
  · filter_upwards with x using abs_nonneg _
  · simp_rw [← Real.norm_eq_abs]
    exact (stronglyMeasurable_condExp.mono hm).aestronglyMeasurable.norm

@[deprecated (since := "2025-01-21")] alias integral_abs_condexp_le := integral_abs_condExp_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b235c9258850a66d1d5c442b2d864d98c1788c2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
