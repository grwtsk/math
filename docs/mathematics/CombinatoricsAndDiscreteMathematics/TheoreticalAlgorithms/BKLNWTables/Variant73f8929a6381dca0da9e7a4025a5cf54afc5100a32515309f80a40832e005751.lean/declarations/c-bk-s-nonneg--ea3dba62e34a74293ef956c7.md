# C_bk_S_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90cc22da81712426fc2a263448d888e2115dab73",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1013,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/73f8929a6381dca0da9e7a4025a5cf54afc5100a32515309f80a40832e005751.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d979c56f-0d21-c671-8431-88582bad01bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad88a0eb-c227-8767-59a4-00515124a9c4",
  "kind": "lemma",
  "lexical_name": "C_bk_S_nonneg",
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
  "slug": "c-bk-s-nonneg--ea3dba62e34a74293ef956c7",
  "source": {
    "blob": "90cc22da81712426fc2a263448d888e2115dab73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1021,
    "line": 1013,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant73f8929a6381dca0da9e7a4025a5cf54afc5100a32515309f80a40832e005751.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea3dba62e34a74293ef956c7c205e14c9f639afc278830b8ac74ba059f16443f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant73f8929a6381dca0da9e7a4025a5cf54afc5100a32515309f80a40832e005751.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad88a0eb-c227-8767-59a4-00515124a9c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1013–1021.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma C_bk_S_nonneg {b c C : ℝ} (hc : 0 ≤ c) (hC : 0 ≤ C) : 0 ≤ C_bk_S b c C := by
  have hc0 : (0 : ℝ) ≤ RS_prime.c₀ := by norm_num [RS_prime.c₀]
  have t1 := mul_nonneg (by linarith : (0 : ℝ) ≤ C + 1) (exp_pos (-b / 2)).le
  have t2 := mul_nonneg hc0 (exp_pos (-2 * b / 3)).le
  have t3 := mul_nonneg hc (exp_pos (-3 * b / 4)).le
  have t4 := mul_nonneg hc0 (exp_pos (-4 * b / 5)).le
  unfold C_bk_S; linarith

/-- `C_bk_S` is antitone in `b` (for nonnegative `c, C`): each `exp` term decreases. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant73f8929a6381dca0da9e7a4025a5cf54afc5100a32515309f80a40832e005751.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant73f8929a6381dca0da9e7a4025a5cf54afc5100a32515309f80a40832e005751.lean#L1013).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90cc22da81712426fc2a263448d888e2115dab73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
