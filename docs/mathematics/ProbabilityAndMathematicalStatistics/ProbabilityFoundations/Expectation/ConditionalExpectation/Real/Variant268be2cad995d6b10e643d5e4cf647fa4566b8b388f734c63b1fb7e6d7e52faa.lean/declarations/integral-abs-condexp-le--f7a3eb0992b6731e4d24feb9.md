# integral_abs_condExp_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b12b87175f99e52c18f5259e5d3d9517eefebca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8db966ba-d34d-0ea7-33e2-6e6129f49df2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b94e68cf-e16c-d252-cabf-0d145d24aab8",
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
  "slug": "integral-abs-condexp-le--f7a3eb0992b6731e4d24feb9",
  "source": {
    "blob": "5b12b87175f99e52c18f5259e5d3d9517eefebca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 93,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7a3eb0992b6731e4d24feb9144c649a1a2a75caf97a39b9718e4de02cc5d496",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b94e68cf-e16c-d252-cabf-0d145d24aab8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–116.

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

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b12b87175f99e52c18f5259e5d3d9517eefebca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
