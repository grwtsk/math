# AnalyticOn.schwartzQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f5e57a1c03525694803e7881814cee6d3b608a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d34c8e1b-8f20-127e-8b34-18972c11ac27",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:100c9927-7015-8c7b-bdef-c8ab1caf0771",
  "kind": "lemma",
  "lexical_name": "AnalyticOn.schwartzQuotient",
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
  "slug": "analyticon-schwartzquotient--d2f3f4e19ad045bcb1eb6e4c",
  "source": {
    "blob": "4f5e57a1c03525694803e7881814cee6d3b608a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 223,
    "path": "GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2f3f4e19ad045bcb1eb6e4cfdd2bf61ac29983e29a55ae6ce2d0899b11c2115",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:100c9927-7015-8c7b-bdef-c8ab1caf0771`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AnalyticOn.schwartzQuotient {f : ℂ → ℂ} {R : ℝ}
    (M : ℝ) (Rpos : 0 < R)
    (analytic : AnalyticOn ℂ f (Metric.closedBall 0 R))
    (nonzero :
      ∀ z ∈ Metric.closedBall 0 R, 2 * M - f z ≠ 0)
    (zero : f 0 = 0) :
    AnalyticOn ℂ (schwartzQuotient f M)
      (Metric.closedBall 0 R) :=
  AnalyticOn.div
    (AnalyticOn_divRemovable_zero_closedBall Rpos analytic zero)
    (AnalyticOn.sub analyticOn_const analytic) nonzero

@[blueprint "Complex.norm_le_norm_two_mul_sub_of_re_le"
  (title := "Complex.norm-le-norm-two-mul-sub-of-re-le")
  (statement := /--
    Let $M>0$ and let $x$ be a complex number such that
    $\Re x\leq M$. Then, $|x|\leq|2M - x|$.
  -/)
  (proof := /--
    We square both sides and simplify to obtain the equivalent
    inequality $$0\leq 4M^2 -4M\Re x,$$ which follows directly
    from the assumption $\Re x\leq M$ and the positivity of $M$.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f5e57a1c03525694803e7881814cee6d3b608a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
