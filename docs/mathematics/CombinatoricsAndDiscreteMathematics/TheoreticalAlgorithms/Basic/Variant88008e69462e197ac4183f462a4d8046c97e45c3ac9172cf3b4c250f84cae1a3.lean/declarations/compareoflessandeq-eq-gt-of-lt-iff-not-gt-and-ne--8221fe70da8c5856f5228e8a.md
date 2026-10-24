# compareOfLessAndEq_eq_gt_of_lt_iff_not_gt_and_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6cf44522e5213d4040988854df6e177be4fe5bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 407,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88008e69462e197ac4183f462a4d8046c97e45c3ac9172cf3b4c250f84cae1a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0cf173aa-23a8-f917-9aba-2bf6e9f97739",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1f0611d-0170-563a-4006-af62c00127d5",
  "kind": "theorem",
  "lexical_name": "compareOfLessAndEq_eq_gt_of_lt_iff_not_gt_and_ne",
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
  "slug": "compareoflessandeq-eq-gt-of-lt-iff-not-gt-and-ne--8221fe70da8c5856f5228e8a",
  "source": {
    "blob": "a6cf44522e5213d4040988854df6e177be4fe5bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 407,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant88008e69462e197ac4183f462a4d8046c97e45c3ac9172cf3b4c250f84cae1a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8221fe70da8c5856f5228e8a7d24ae2612a0217f200b35d2302ff73733314c50",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant88008e69462e197ac4183f462a4d8046c97e45c3ac9172cf3b4c250f84cae1a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1f0611d-0170-563a-4006-af62c00127d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compareOfLessAndEq_eq_gt_of_lt_iff_not_gt_and_ne
    {α : Type u} [LT α] [LE α] [DecidableLT α] [DecidableEq α] {x y : α}
    (h : ∀ x y : α, x < y ↔ ¬ y < x ∧ x ≠ y) :
    compareOfLessAndEq x y = .gt ↔ y < x := by
  rw [compareOfLessAndEq_eq_swap_of_lt_iff_not_gt_and_ne h, Ordering.swap_eq_gt]
  exact compareOfLessAndEq_eq_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant88008e69462e197ac4183f462a4d8046c97e45c3ac9172cf3b4c250f84cae1a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant88008e69462e197ac4183f462a4d8046c97e45c3ac9172cf3b4c250f84cae1a3.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6cf44522e5213d4040988854df6e177be4fe5bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
