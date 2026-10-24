# norm_sub_le_of_mem_a

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ced4e4e2c4e5cf2a96f8157b73eaa4510487a5fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 552,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bbe954f4-2102-599e-3be1-0dc8894b41a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8affa2c-aeed-7355-37b6-63e94c39943e",
  "kind": "theorem",
  "lexical_name": "norm_sub_le_of_mem_a",
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
  "slug": "norm-sub-le-of-mem-a--65c22d29e8f6a278bb3490fd",
  "source": {
    "blob": "ced4e4e2c4e5cf2a96f8157b73eaa4510487a5fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 552,
    "path": "GRWTSK/Analysis/MeasureTheory/Measurable/Variante4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65c22d29e8f6a278bb3490fd1cc4e6e7ae170c35e36763c9b66c3ef6de4fb670",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Measurable/Variante4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8affa2c-aeed-7355-37b6-63e94c39943e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sub_le_of_mem_a {r x : ℝ} (hr : 0 < r) (ε : ℝ) {L₁ L₂ : F} (h₁ : x ∈ A f L₁ r ε)
    (h₂ : x ∈ A f L₂ r ε) : ‖L₁ - L₂‖ ≤ 4 * ε := by
  suffices H : ‖(r / 2) • (L₁ - L₂)‖ ≤ r / 2 * (4 * ε)
  · rwa [norm_smul, Real.norm_of_nonneg (half_pos hr).le, mul_le_mul_left (half_pos hr)] at H
  calc
    ‖(r / 2) • (L₁ - L₂)‖ =
        ‖f (x + r / 2) - f x - (x + r / 2 - x) • L₂ -
            (f (x + r / 2) - f x - (x + r / 2 - x) • L₁)‖ :=
      by simp [smul_sub]
    _ ≤
        ‖f (x + r / 2) - f x - (x + r / 2 - x) • L₂‖ +
          ‖f (x + r / 2) - f x - (x + r / 2 - x) • L₁‖ :=
      (norm_sub_le _ _)
    _ ≤ ε * r + ε * r := by
      apply add_le_add
      · apply le_of_mem_a h₂ <;> simp [(half_pos hr).le]
      · apply le_of_mem_a h₁ <;> simp [(half_pos hr).le]
    _ = r / 2 * (4 * ε) := by ring
#align right_deriv_measurable_aux.norm_sub_le_of_mem_A RightDerivMeasurableAux.norm_sub_le_of_mem_a

/-- Easy inclusion: a differentiability point with derivative in `K` belongs to `D f K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Measurable/Variante4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Measurable/Variante4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ced4e4e2c4e5cf2a96f8157b73eaa4510487a5fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
