# C_bk_S_antitone

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
      "line": 1022,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/73f8929a6381dca0da9e7a4025a5cf54afc5100a32515309f80a40832e005751.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0db1079-235e-af50-b155-7c95365a930c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ab2a4cd-9818-ecbb-0a14-b8caae867d82",
  "kind": "lemma",
  "lexical_name": "C_bk_S_antitone",
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
  "slug": "c-bk-s-antitone--a2fa8b330c450e6938aeab89",
  "source": {
    "blob": "90cc22da81712426fc2a263448d888e2115dab73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1036,
    "line": 1022,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant73f8929a6381dca0da9e7a4025a5cf54afc5100a32515309f80a40832e005751.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2fa8b330c450e6938aeab89b9a7c4e386f501e9c0cbbc3ce3d7d200c3e9b9e0",
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

Occurrence: `result:9ab2a4cd-9818-ecbb-0a14-b8caae867d82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1022–1036.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma C_bk_S_antitone {b b' c C : ℝ} (hbb : b' ≤ b) (hc : 0 ≤ c) (hC : 0 ≤ C) :
    C_bk_S b c C ≤ C_bk_S b' c C := by
  have hc0 : (0 : ℝ) ≤ RS_prime.c₀ := by norm_num [RS_prime.c₀]
  have m1 := mul_le_mul_of_nonneg_left (exp_le_exp.mpr (by linarith : -b / 2 ≤ -b' / 2))
    (by linarith : (0 : ℝ) ≤ C + 1)
  have m2 := mul_le_mul_of_nonneg_left
    (exp_le_exp.mpr (by linarith : -2 * b / 3 ≤ -2 * b' / 3)) hc0
  have m3 := mul_le_mul_of_nonneg_left
    (exp_le_exp.mpr (by linarith : -3 * b / 4 ≤ -3 * b' / 4)) hc
  have m4 := mul_le_mul_of_nonneg_left
    (exp_le_exp.mpr (by linarith : -4 * b / 5 ≤ -4 * b' / 5)) hc0
  unfold C_bk_S; linarith

/-- For a row with `b = Real.log N`: bracket `Real.log N ∈ [lo, hi]` and use
monotonicity of `b ↦ b ^ k * C_bk_S b c C` to reduce to a `log`-free bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant73f8929a6381dca0da9e7a4025a5cf54afc5100a32515309f80a40832e005751.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant73f8929a6381dca0da9e7a4025a5cf54afc5100a32515309f80a40832e005751.lean#L1022).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90cc22da81712426fc2a263448d888e2115dab73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
