# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc0052f33209252e5c82da6cd0a39b5e6de4757a454c63cbba12c17d38c5d456",
  "kind": "macro",
  "lexical_name": null,
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
  "slug": "macro--013ef8bcc893c4b23d671d8f",
  "source": {
    "blob": "dabbeb9c6c96e112ba99c0795fabbb4ccb460a3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 224,
    "path": "GRWTSK/Algebra/LinearAlgebra/VecUtil/Variant674802061d6beb87c1325991d874ebbbe3bc87ac8ec1442c76222b577b870a48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:013ef8bcc893c4b23d671d8f26f3171ba8c4ce00ba287acdda204d3f2c21ca1d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VecUtil/Variant674802061d6beb87c1325991d874ebbbe3bc87ac8ec1442c76222b577b870a48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc0052f33209252e5c82da6cd0a39b5e6de4757a454c63cbba12c17d38c5d456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro "vec_index_simp_with_dite" : tactic =>
  `(tactic| (
    -- Fixed-point iteration with all lemmas (abs included so simp can descend into |...|)
    repeat (
      first
      | fail_if_no_progress simp (config := { decide := true }) only [
          VecUtil.vecConsFinMk, Matrix.cons_val_zero, Matrix.cons_val_zero',
          Matrix.cons_val_one, Matrix.head_cons, dite_true, dite_false,
          abs_of_pos, abs_of_nonneg, abs_of_neg, abs_neg
        ]
      | fail_if_no_progress simp only [Matrix.of_apply]
    )
    -- norm_num to handle abs of ℝ literals (decide can't prove positivity for ℝ)
    try norm_num [abs_of_pos, abs_of_nonneg, abs_of_neg, abs_neg]
  ))
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VecUtil/Variant674802061d6beb87c1325991d874ebbbe3bc87ac8ec1442c76222b577b870a48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VecUtil/Variant674802061d6beb87c1325991d874ebbbe3bc87ac8ec1442c76222b577b870a48.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dabbeb9c6c96e112ba99c0795fabbb4ccb460a3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
