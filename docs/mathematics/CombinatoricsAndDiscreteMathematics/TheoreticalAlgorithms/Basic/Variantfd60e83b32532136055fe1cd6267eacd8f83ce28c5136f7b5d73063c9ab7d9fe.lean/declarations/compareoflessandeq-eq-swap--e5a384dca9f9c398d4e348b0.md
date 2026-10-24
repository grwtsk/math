# compareOfLessAndEq_eq_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0eff670-b939-78ad-6af5-0585c5b75aa3",
  "kind": "theorem",
  "lexical_name": "compareOfLessAndEq_eq_swap",
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
  "slug": "compareoflessandeq-eq-swap--e5a384dca9f9c398d4e348b0",
  "source": {
    "blob": "6d2c4b9067494787a13c5e24e6a5886d3941ce38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 388,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd60e83b32532136055fe1cd6267eacd8f83ce28c5136f7b5d73063c9ab7d9fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5a384dca9f9c398d4e348b0c40913864957d289c97d819887032eef611c84f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd60e83b32532136055fe1cd6267eacd8f83ce28c5136f7b5d73063c9ab7d9fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0eff670-b939-78ad-6af5-0585c5b75aa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compareOfLessAndEq_eq_swap
    {α : Type u} [LT α] [LE α] [DecidableLT α] [DecidableEq α]
    (antisymm : ∀ {x y : α}, x ≤ y → y ≤ x → x = y)
    (total : ∀ (x y : α), x ≤ y ∨ y ≤ x) (not_le : ∀ {x y : α}, ¬ x ≤ y ↔ y < x) {x y : α} :
    compareOfLessAndEq x y = (compareOfLessAndEq y x).swap := by
  apply compareOfLessAndEq_eq_swap_of_lt_iff_not_gt_and_ne
  exact lt_iff_not_gt_and_ne_of_antisymm_of_total_of_not_le antisymm total not_le

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd60e83b32532136055fe1cd6267eacd8f83ce28c5136f7b5d73063c9ab7d9fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd60e83b32532136055fe1cd6267eacd8f83ce28c5136f7b5d73063c9ab7d9fe.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d2c4b9067494787a13c5e24e6a5886d3941ce38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
