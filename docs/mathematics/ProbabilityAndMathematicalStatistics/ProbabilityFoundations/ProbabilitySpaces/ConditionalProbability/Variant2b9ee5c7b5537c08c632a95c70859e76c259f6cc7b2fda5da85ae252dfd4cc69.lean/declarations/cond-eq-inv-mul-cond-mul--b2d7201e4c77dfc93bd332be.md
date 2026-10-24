# cond_eq_inv_mul_cond_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc115392-84e0-5447-c588-93ff83c12aa8",
  "kind": "theorem",
  "lexical_name": "cond_eq_inv_mul_cond_mul",
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
  "slug": "cond-eq-inv-mul-cond-mul--b2d7201e4c77dfc93bd332be",
  "source": {
    "blob": "f516936773a1ba9dd112fc8d64f7cebba33d94ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 167,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2d7201e4c77dfc93bd332be987489b859642adda2b0ba4af55d9dd7c648ce0d",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc115392-84e0-5447-c588-93ff83c12aa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cond_eq_inv_mul_cond_mul [IsFiniteMeasure μ]
    (hms : MeasurableSet s) (hmt : MeasurableSet t) : μ[t|s] = (μ s)⁻¹ * μ[s|t] * μ t := by
  by_cases ht : μ t = 0
  · simp [cond, ht, Measure.restrict_apply hmt, Or.inr (measure_inter_null_of_null_left s ht)]
  · rw [mul_assoc, cond_mul_eq_inter μ hmt ht s, Set.inter_comm, cond_apply _ hms]
#align probability_theory.cond_eq_inv_mul_cond_mul ProbabilityTheory.cond_eq_inv_mul_cond_mul

end Bayes

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f516936773a1ba9dd112fc8d64f7cebba33d94ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
