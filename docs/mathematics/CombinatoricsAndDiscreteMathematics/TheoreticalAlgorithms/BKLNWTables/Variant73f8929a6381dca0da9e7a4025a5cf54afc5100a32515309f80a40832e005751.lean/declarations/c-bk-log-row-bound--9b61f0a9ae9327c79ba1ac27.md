# C_bk_log_row_bound

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
      "line": 1037,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/73f8929a6381dca0da9e7a4025a5cf54afc5100a32515309f80a40832e005751.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b51a3e7a-d397-b707-3cb8-8b9771022724",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cb36c8d-7575-9b3f-e4a6-bfd02d1b40c9",
  "kind": "lemma",
  "lexical_name": "C_bk_log_row_bound",
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
  "slug": "c-bk-log-row-bound--9b61f0a9ae9327c79ba1ac27",
  "source": {
    "blob": "90cc22da81712426fc2a263448d888e2115dab73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1055,
    "line": 1037,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant73f8929a6381dca0da9e7a4025a5cf54afc5100a32515309f80a40832e005751.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b61f0a9ae9327c79ba1ac27dcf988559b9ac1a6f3dc91a08f594cb2ade950f6",
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

Occurrence: `result:0cb36c8d-7575-9b3f-e4a6-bfd02d1b40c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1037–1055.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma C_bk_log_row_bound {N c C Cbk : ℝ} {k : ℕ} (lo hi : ℝ)
    (hlo : lo ≤ Real.log N) (hhi : Real.log N ≤ hi)
    (hlo0 : 0 ≤ lo) (hc : 0 ≤ c) (hC : 0 ≤ C)
    (hfin : hi ^ k * C_bk_S lo c C ≤ Cbk) :
    Real.log N ^ k * C_bk_S (Real.log N) c C ≤ Cbk := by
  have hb0 : 0 ≤ Real.log N := le_trans hlo0 hlo
  exact le_trans (mul_le_mul (pow_le_pow_left₀ hb0 hhi k) (C_bk_S_antitone hlo hc hC)
    (C_bk_S_nonneg hc hC) (pow_nonneg (le_trans hb0 hhi) k)) hfin

set_option maxRecDepth 10000 in
set_option maxHeartbeats 4000000 in
-- `table_12_check` runs ~135 `interval_decide` numerical checks in a single
-- declaration, so the default heartbeat budget is raised.
/-- Verification of the entries of Table 12: every row obeys
`b ^ k * C_bk_S b c C ≤ Cb k` for `k = 1, …, 5`.  Together with the identity
`C_bk b c C RS_prime.c₀ k = b ^ k * C_bk_S b c C` this gives
`bklnw_table_12_verification`.  The bound for each integer-`b` row is a direct
interval-arithmetic check; the two rows with `b = Real.log N` are handled by
`C_bk_log_row_bound`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant73f8929a6381dca0da9e7a4025a5cf54afc5100a32515309f80a40832e005751.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant73f8929a6381dca0da9e7a4025a5cf54afc5100a32515309f80a40832e005751.lean#L1037).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90cc22da81712426fc2a263448d888e2115dab73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
