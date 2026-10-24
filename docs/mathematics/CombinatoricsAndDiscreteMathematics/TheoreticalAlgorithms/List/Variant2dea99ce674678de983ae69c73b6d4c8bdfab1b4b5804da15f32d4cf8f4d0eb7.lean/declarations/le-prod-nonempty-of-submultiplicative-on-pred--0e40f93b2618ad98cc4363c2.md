# le_prod_nonempty_of_submultiplicative_on_pred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93e73ab316543edb31f8adfe03a8ee4d9bf6e70e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2dea99ce674678de983ae69c73b6d4c8bdfab1b4b5804da15f32d4cf8f4d0eb7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2327702b-c908-0b60-84a8-413626bea570",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e7b5215-7a9e-2aaf-d993-b7755c7c4638",
  "kind": "lemma",
  "lexical_name": "le_prod_nonempty_of_submultiplicative_on_pred",
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
  "slug": "le-prod-nonempty-of-submultiplicative-on-pred--0e40f93b2618ad98cc4363c2",
  "source": {
    "blob": "93e73ab316543edb31f8adfe03a8ee4d9bf6e70e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 212,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2dea99ce674678de983ae69c73b6d4c8bdfab1b4b5804da15f32d4cf8f4d0eb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e40f93b2618ad98cc4363c2ad0c5719299f9544b874d437ecb4e710517f2fbf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2dea99ce674678de983ae69c73b6d4c8bdfab1b4b5804da15f32d4cf8f4d0eb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e7b5215-7a9e-2aaf-d993-b7755c7c4638`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_prod_nonempty_of_submultiplicative_on_pred (f : α → β) (p : α → Prop)
    (h_mul : ∀ a b, p a → p b → f (a * b) ≤ f a * f b) (hp_mul : ∀ a b, p a → p b → p (a * b))
    (l : List α) (hl_nonempty : l ≠ []) (hl : ∀ a, a ∈ l → p a) : f l.prod ≤ (l.map f).prod := by
  induction l with
  | nil => simp at hl_nonempty
  | cons a l ih =>
    rw [prod_cons, map_cons, prod_cons]
    by_cases hl_empty : l = []
    · simp [hl_empty]
    have hla_restrict : ∀ x, x ∈ l → p x := fun x hx => hl x (mem_cons_of_mem _ hx)
    have hp_sup : p l.prod := prod_induction_nonempty p hp_mul hl_empty hla_restrict
    have hp_a : p a := hl a mem_cons_self
    grw [h_mul a _ hp_a hp_sup, ← ih hl_empty hla_restrict]

@[to_additive le_sum_nonempty_of_subadditive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2dea99ce674678de983ae69c73b6d4c8bdfab1b4b5804da15f32d4cf8f4d0eb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant2dea99ce674678de983ae69c73b6d4c8bdfab1b4b5804da15f32d4cf8f4d0eb7.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93e73ab316543edb31f8adfe03a8ee4d9bf6e70e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
