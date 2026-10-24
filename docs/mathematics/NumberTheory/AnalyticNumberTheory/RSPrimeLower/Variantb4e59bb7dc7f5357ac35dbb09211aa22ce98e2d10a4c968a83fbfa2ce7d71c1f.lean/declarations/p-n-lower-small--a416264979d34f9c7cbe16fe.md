# p_n_lower_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae756f0a-8d24-96cd-a27a-a6a97a8ed293",
  "kind": "lemma",
  "lexical_name": "p_n_lower_small",
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
  "slug": "p-n-lower-small--a416264979d34f9c7cbe16fe",
  "source": {
    "blob": "e5fb4cbe411eb42fc479ab86412000a18dcfc82c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a416264979d34f9c7cbe16fe59a6f54d52ff9d51dd22ca0f99120d8417550eb0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae756f0a-8d24-96cd-a27a-a6a97a8ed293`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma p_n_lower_small (n : ℕ) (hn1 : n > 1) (hn2 : n ≤ 31) :
    (nth_prime' n : ℝ) > n * (Real.log n + Real.log (Real.log n) - 3 / 2) := by
  interval_cases n
  · exact nth_prime_gt_bound 2 3 count_prime_3_le_1 (by interval_auto)
  · exact nth_prime_gt_bound 3 5 count_prime_5_le_2 (by interval_auto)
  · exact nth_prime_gt_bound 4 7 count_prime_7_le_3 (by interval_auto)
  · exact nth_prime_gt_bound 5 11 count_prime_11_le_4 (by interval_auto)
  · exact nth_prime_gt_bound 6 13 count_prime_13_le_5 (by interval_auto)
  · exact nth_prime_gt_bound 7 17 count_prime_17_le_6 (by interval_auto)
  · exact nth_prime_gt_bound 8 19 count_prime_19_le_7 (by interval_auto)
  · exact nth_prime_gt_bound 9 23 count_prime_23_le_8 (by interval_auto)
  · exact nth_prime_gt_bound 10 29 count_prime_29_le_9 (by interval_auto)
  · exact nth_prime_gt_bound 11 31 count_prime_31_le_10 (by interval_auto)
  · exact nth_prime_gt_bound 12 37 count_prime_37_le_11 (by interval_auto)
  · exact nth_prime_gt_bound 13 41 count_prime_41_le_12 (by interval_auto)
  · exact nth_prime_gt_bound 14 43 count_prime_43_le_13 (by interval_auto)
  · exact nth_prime_gt_bound 15 47 count_prime_47_le_14 (by interval_auto)
  · exact nth_prime_gt_bound 16 53 count_prime_53_le_15 (by interval_auto)
  · exact nth_prime_gt_bound 17 59 count_prime_59_le_16 (by interval_auto)
  · exact nth_prime_gt_bound 18 61 count_prime_61_le_17 (by interval_auto)
  · exact nth_prime_gt_bound 19 67 count_prime_67_le_18 (by interval_auto)
  · exact nth_prime_gt_bound 20 71 count_prime_71_le_19 (by interval_auto)
  · exact nth_prime_gt_bound 21 73 count_prime_73_le_20 (by interval_auto)
  · exact nth_prime_gt_bound 22 79 count_prime_79_le_21 (by interval_auto)
  · exact nth_prime_gt_bound 23 83 count_prime_83_le_22 (by interval_auto)
  · exact nth_prime_gt_bound 24 89 count_prime_89_le_23 (by interval_auto)
  · exact nth_prime_gt_bound 25 97 count_prime_97_le_24 (by interval_auto)
  · exact nth_prime_gt_bound 26 101 count_prime_101_le_25 (by interval_auto)
  · exact nth_prime_gt_bound 27 103 count_prime_103_le_26 (by interval_auto)
  · exact nth_prime_gt_bound 28 107 count_prime_107_le_27 (by interval_auto)
  · exact nth_prime_gt_bound 29 109 count_prime_109_le_28 (by interval_auto)
  · exact nth_prime_gt_bound 30 113 count_prime_113_le_29 (by interval_auto)
  · exact nth_prime_gt_bound 31 127 count_prime_127_le_30 (by interval_auto)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5fb4cbe411eb42fc479ab86412000a18dcfc82c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
