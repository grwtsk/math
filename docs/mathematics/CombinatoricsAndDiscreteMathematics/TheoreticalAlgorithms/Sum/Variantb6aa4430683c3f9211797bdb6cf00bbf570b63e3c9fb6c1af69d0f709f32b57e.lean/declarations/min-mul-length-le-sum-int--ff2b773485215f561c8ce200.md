# min_mul_length_le_sum_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de7e70f6289f2e5cd1179b9435f5f6358a8c7c23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0e7c909-edd3-7150-c734-de0c1f2090ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df3053ef-4f39-842e-cac7-579c3dfb6cbc",
  "kind": "theorem",
  "lexical_name": "min_mul_length_le_sum_int",
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
  "slug": "min-mul-length-le-sum-int--ff2b773485215f561c8ce200",
  "source": {
    "blob": "de7e70f6289f2e5cd1179b9435f5f6358a8c7c23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 32,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff2b773485215f561c8ce200313b97089a201fe44e37907237d257ac85b73b73",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df3053ef-4f39-842e-cac7-579c3dfb6cbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem min_mul_length_le_sum_int {xs : List Int} (h : xs ≠ []) :
    xs.min h * xs.length ≤ xs.sum := by
  induction xs
  · contradiction
  · rename_i x xs ih
    cases xs
    · simp_all [List.min_singleton]
    · simp only [ne_eq, reduceCtorEq, not_false_eq_true, min_eq_get_min?,
      List.min?_cons (α := Int), Option.get_some, length_cons, Int.natCast_add, Int.cast_ofNat_Int,
      forall_const] at ih ⊢
      rw [Int.mul_add, Int.mul_one, Int.add_comm]
      apply Int.add_le_add
      · apply Int.min_le_left
      · refine Int.le_trans ?_ ih
        rw [Int.mul_le_mul_right (by omega)]
        apply Int.min_le_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de7e70f6289f2e5cd1179b9435f5f6358a8c7c23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
