# le_of_lt_minimalPeriod_of_iterate_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c765b5f701ae5a51aaa3893473b7aff51e0d3fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 344,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8b537d4ea9515f0af073096feb6948d3fb07f46acc9f126bfc535e7ca66e127.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0504a10-5afe-644c-19a2-d4216f48cfd4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1e9e81d-26ff-6dac-fd8e-ac1252378689",
  "kind": "theorem",
  "lexical_name": "le_of_lt_minimalPeriod_of_iterate_eq",
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
  "slug": "le-of-lt-minimalperiod-of-iterate-eq--bf5e46390ad5886d78bbdaa1",
  "source": {
    "blob": "6c765b5f701ae5a51aaa3893473b7aff51e0d3fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 344,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicPts/Variante8b537d4ea9515f0af073096feb6948d3fb07f46acc9f126bfc535e7ca66e127.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf5e46390ad5886d78bbdaa1d6529679add653e63d66560a8b10650147a57ade",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicPts/Variante8b537d4ea9515f0af073096feb6948d3fb07f46acc9f126bfc535e7ca66e127.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1e9e81d-26ff-6dac-fd8e-ac1252378689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_of_lt_minimalPeriod_of_iterate_eq {m n : ℕ} (hm : m < minimalPeriod f x)
    (hmn : f^[m] x = f^[n] x) : m ≤ n := by
  by_contra' hmn'
  rw [← Nat.add_sub_of_le hmn'.le, add_comm, iterate_add_apply] at hmn
  exact
    ((IsPeriodicPt.minimalPeriod_le (tsub_pos_of_lt hmn')
              (isPeriodicPt_of_mem_periodicPts_of_isPeriodicPt_iterate
                (minimalPeriod_pos_iff_mem_periodicPts.1 ((zero_le m).trans_lt hm)) hmn)).trans
          (Nat.sub_le m n)).not_lt
      hm
#align function.le_of_lt_minimal_period_of_iterate_eq Function.le_of_lt_minimalPeriod_of_iterate_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicPts/Variante8b537d4ea9515f0af073096feb6948d3fb07f46acc9f126bfc535e7ca66e127.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicPts/Variante8b537d4ea9515f0af073096feb6948d3fb07f46acc9f126bfc535e7ca66e127.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c765b5f701ae5a51aaa3893473b7aff51e0d3fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
