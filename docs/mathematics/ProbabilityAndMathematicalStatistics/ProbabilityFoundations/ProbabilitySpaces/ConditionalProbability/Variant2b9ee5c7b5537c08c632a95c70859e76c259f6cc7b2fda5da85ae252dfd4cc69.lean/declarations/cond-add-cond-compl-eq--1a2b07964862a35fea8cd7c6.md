# cond_add_cond_compl_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe1d7bb7-5fbe-85ef-28c1-6a32285c6bbe",
  "kind": "theorem",
  "lexical_name": "cond_add_cond_compl_eq",
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
  "slug": "cond-add-cond-compl-eq--1a2b07964862a35fea8cd7c6",
  "source": {
    "blob": "f516936773a1ba9dd112fc8d64f7cebba33d94ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 159,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a2b07964862a35fea8cd7c6e2b64439b61ecc843f2627c83d153556e0405db9",
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

Occurrence: `result:fe1d7bb7-5fbe-85ef-28c1-6a32285c6bbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cond_add_cond_compl_eq [IsFiniteMeasure μ] (hms : MeasurableSet s) (hcs : μ s ≠ 0)
    (hcs' : μ sᶜ ≠ 0) : μ[t|s] * μ s + μ[t|sᶜ] * μ sᶜ = μ t := by
  rw [cond_mul_eq_inter μ hms hcs, cond_mul_eq_inter μ hms.compl hcs', Set.inter_comm _ t,
    Set.inter_comm _ t]
  exact measure_inter_add_diff t hms
#align probability_theory.cond_add_cond_compl_eq ProbabilityTheory.cond_add_cond_compl_eq

/-- **Bayes' Theorem** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variant2b9ee5c7b5537c08c632a95c70859e76c259f6cc7b2fda5da85ae252dfd4cc69.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f516936773a1ba9dd112fc8d64f7cebba33d94ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
