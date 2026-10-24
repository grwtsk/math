# actual_local_gap_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5191191f45920ee34f7565f7ad445beacba64cae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/329da44bbc81b45eba5eee47893929309be2ccc0fb38bcb09933c4a647d0bb4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50028551-907b-33af-14d9-c179580f6e60",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b58ad431-d31a-814f-399f-00bc410fb261",
  "kind": "theorem",
  "lexical_name": "actual_local_gap_upper",
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
  "slug": "actual-local-gap-upper--8beded5fa1c1a576ccd5fc8c",
  "source": {
    "blob": "5191191f45920ee34f7565f7ad445beacba64cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalPrimitiveBudget/Variant329da44bbc81b45eba5eee47893929309be2ccc0fb38bcb09933c4a647d0bb4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8beded5fa1c1a576ccd5fc8c75fa0f0489a2b75f75191bcc2f66fb22cafa9715",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalPrimitiveBudget/Variant329da44bbc81b45eba5eee47893929309be2ccc0fb38bcb09933c4a647d0bb4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b58ad431-d31a-814f-399f-00bc410fb261`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_local_gap_upper (M : ℝ) (hM : 0 ≤ M)
    (A : ℝ) (hA : 1 ≤ A)
    (hF : ∀ t : ℝ, t ∈ Icc 0 (2 * A) → |criticalPrimitive t| ≤ M)
    (G a0 : ℝ) (hG : a0 ≤ G) :
    2 * mertensResidual A - G ≤
      4 - 2 * Real.eulerMascheroniConstant - a0 +
        2 * M * (130 / 3 + Real.sqrt (65 / 3 : ℝ)) := by
  have hr := actual_local_residual_upper M hM A hA hF
  have hrat : 130 / (3 * A) ≤ (130 / 3 : ℝ) := by
    apply (div_le_iff₀ (by positivity : 0 < 3 * A)).2
    nlinarith
  have hb := mul_le_mul_of_nonneg_left (add_le_add_right hrat (Real.sqrt (65 / 3 : ℝ))) hM
  linarith

/-- Every real A in [1,20] uses only the supplied actual primitive bound on
[0,40]. Height verification, correction input and numeric comparison remain
explicit hypotheses, rather than an inferred global budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalPrimitiveBudget/Variant329da44bbc81b45eba5eee47893929309be2ccc0fb38bcb09933c4a647d0bb4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalPrimitiveBudget/Variant329da44bbc81b45eba5eee47893929309be2ccc0fb38bcb09933c4a647d0bb4e.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5191191f45920ee34f7565f7ad445beacba64cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
