# Std.TransOrd.compareOfLessAndEq_of_lt_trans_of_lt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8cd89c3134afd0367295cf773b4a56bc97a7135",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 486,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af2da20f300be76beea5703681675617d2072a0df0d7c025df86aa3fde24d972.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d464b2f-2882-5a3a-4144-16753b79e36f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb3cd03d-671a-1688-27ed-c42170862a0c",
  "kind": "theorem",
  "lexical_name": "Std.TransOrd.compareOfLessAndEq_of_lt_trans_of_lt_iff",
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
  "slug": "std-transord-compareoflessandeq-of-lt-trans-of-lt-iff--569032b6c6f044305b10e18e",
  "source": {
    "blob": "e8cd89c3134afd0367295cf773b4a56bc97a7135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 486,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variantaf2da20f300be76beea5703681675617d2072a0df0d7c025df86aa3fde24d972.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:569032b6c6f044305b10e18e1cbec2915320382059c4828fbd58a4ed14b090ba",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variantaf2da20f300be76beea5703681675617d2072a0df0d7c025df86aa3fde24d972.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb3cd03d-671a-1688-27ed-c42170862a0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Std.TransOrd.compareOfLessAndEq_of_lt_trans_of_lt_iff
    {α : Type u} [LT α] [DecidableLT α] [DecidableEq α]
    (lt_trans : ∀ {a b c : α}, a < b → b < c → a < c)
    (h : ∀ x y : α, x < y ↔ ¬ y < x ∧ x ≠ y) :
    TransCmp (fun x y : α => compareOfLessAndEq x y) where
  eq_swap := compareOfLessAndEq_eq_swap_of_lt_iff_not_gt_and_ne h
  isLE_trans {x y z} h₁ h₂ := by
    simp only [compareOfLessAndEq, apply_ite Ordering.isLE,
      Ordering.isLE_lt, Ordering.isLE_eq, Ordering.isLE_gt] at h₁ h₂ ⊢
    simp only [Bool.if_true_left, Bool.or_false, Bool.or_eq_true, decide_eq_true_eq] at h₁ h₂ ⊢
    rcases h₁ with (h₁ | rfl)
    · rcases h₂ with (h₂ | rfl)
      · exact .inl (lt_trans h₁ h₂)
      · exact .inl h₁
    · exact h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variantaf2da20f300be76beea5703681675617d2072a0df0d7c025df86aa3fde24d972.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variantaf2da20f300be76beea5703681675617d2072a0df0d7c025df86aa3fde24d972.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8cd89c3134afd0367295cf773b4a56bc97a7135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
