# inv_normSq_param

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:594f7d6d-5873-0788-697d-4b203bb973e9",
  "kind": "lemma",
  "lexical_name": "inv_normSq_param",
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
  "slug": "inv-normsq-param--4e3c6dfe2d9171870f79d289",
  "source": {
    "blob": "131672b5ad7549fee6ca1157fb10c02c0461d71f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant0c9d0249065fe6e085658e4aea7c16620088ed7bf129d2da2ce5d8b95e4c7add.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e3c6dfe2d9171870f79d289aab11969f40d02e2dfcc266d72691820ef904e18",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant0c9d0249065fe6e085658e4aea7c16620088ed7bf129d2da2ce5d8b95e4c7add.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:594f7d6d-5873-0788-697d-4b203bb973e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inv_normSq_param : |(‖Λs‖ ^ 2)⁻¹ - 4 / l ^ 2| ≤ 16 / l ^ 4 := by
  have hl0 : 0 < l := by linarith
  rw [normSq_param_eq hl hre him]
  have hA : 0 < l ^ 2 / 4 + Λs.im ^ 2 := by positivity
  have ht2 : Λs.im ^ 2 ≤ 1 := by have h := abs_le.mp him; nlinarith
  have ht0 : 0 ≤ Λs.im ^ 2 := sq_nonneg _
  have hdiff : (l ^ 2 / 4 + Λs.im ^ 2)⁻¹ - 4 / l ^ 2
      = -(4 * Λs.im ^ 2 / (l ^ 2 * (l ^ 2 / 4 + Λs.im ^ 2))) := by
    field_simp; ring
  rw [hdiff, abs_neg, abs_of_nonneg (by positivity)]
  rw [div_le_div_iff₀ (by positivity) (by positivity)]
  nlinarith [mul_nonneg ht0 (pow_nonneg hl0.le 4), pow_pos hl0 2, mul_nonneg ht0 (sq_nonneg (l^2))]

/-- 0 ≤ 4/l² − ‖Λs‖⁻²  (the sign: ‖Λs‖² ≥ l²/4). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant0c9d0249065fe6e085658e4aea7c16620088ed7bf129d2da2ce5d8b95e4c7add.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant0c9d0249065fe6e085658e4aea7c16620088ed7bf129d2da2ce5d8b95e4c7add.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `131672b5ad7549fee6ca1157fb10c02c0461d71f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
