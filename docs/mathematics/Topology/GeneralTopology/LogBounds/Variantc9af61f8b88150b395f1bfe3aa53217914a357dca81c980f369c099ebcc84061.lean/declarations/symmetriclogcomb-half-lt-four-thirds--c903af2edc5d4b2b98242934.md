# symmetricLogComb_half_lt_four_thirds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc59dbf7f90a4d6c695870594f016290bb019366",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad7e2fc8-5317-d0c1-3852-eacfc3f3976a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6a7bf05-3ee1-1873-38ca-0cd33ce146b2",
  "kind": "theorem",
  "lexical_name": "symmetricLogComb_half_lt_four_thirds",
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
  "slug": "symmetriclogcomb-half-lt-four-thirds--c903af2edc5d4b2b98242934",
  "source": {
    "blob": "fc59dbf7f90a4d6c695870594f016290bb019366",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 235,
    "path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c903af2edc5d4b2b98242934d267c0bdfbe1c774506d99b0ad25a3885ecccb7a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6a7bf05-3ee1-1873-38ca-0cd33ce146b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetricLogComb_half_lt_four_thirds : symmetricLogComb (1/2) < 4/3 := by
  rw [symmetricLogComb_half]
  -- We have: log(3/2) > 2/5 = 0.4, log(2) > 0.6931471803
  -- So: 1/log(3/2) < 2.5, 1/log(2) < 1.4428
  -- Thus: 1/log(3/2) - 1/log(2) < 2.5 - 1/0.6931471808 ≈ 1.057 < 4/3
  have hlog32_pos : 0 < log (3/2) := log_pos (by norm_num : (1:ℝ) < 3/2)
  have hlog2_pos : 0 < log 2 := log_pos one_lt_two
  have hlog32_lb : 2/5 < log (3/2) := log_three_half_gt
  have hlog2_lb : (0.6931471803 : ℝ) < log 2 := Real.log_two_gt_d9
  -- 1/log(3/2) < 5/2
  have h1 : 1 / log (3/2) < 5/2 := by
    rw [div_lt_iff₀ hlog32_pos]
    have : (2:ℝ)/5 * (5/2) = 1 := by norm_num
    linarith [mul_lt_mul_of_pos_right hlog32_lb (by norm_num : (0:ℝ) < 5/2)]
  -- 1/log(2) > 1/0.6931471808
  have hlog2_ub : log 2 < 0.6931471808 := Real.log_two_lt_d9
  have h2 : 1 / log 2 > 1/0.6931471808 := by
    exact one_div_lt_one_div_of_lt hlog2_pos hlog2_ub
  -- Combine
  calc 1 / log (3/2) - 1 / log 2
      < 5/2 - 1/0.6931471808 := by linarith
    _ < 4/3 := by norm_num

/-- g(t) ≤ 4/3 for 0 < t ≤ 1/2.
    Proof is direct from explicit log inequalities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc59dbf7f90a4d6c695870594f016290bb019366` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
