# admissible_bound_weaken

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44f6fadbac9f838b75004e411b239b6fe90ca38d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1606a06b60293fe8c3b3d02736d40c82ca91808002d460b7662e14d3d57df29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5401e15a-c04c-e626-fe7e-27d3fa33d00a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e481993-acd9-10f2-f1bb-7e1c51a2f29e",
  "kind": "lemma",
  "lexical_name": "admissible_bound_weaken",
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
  "slug": "admissible-bound-weaken--543d4c02d442024b0ed74bd6",
  "source": {
    "blob": "44f6fadbac9f838b75004e411b239b6fe90ca38d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Varianta1606a06b60293fe8c3b3d02736d40c82ca91808002d460b7662e14d3d57df29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:543d4c02d442024b0ed74bd6bd4d55ed341a292a59e8dab0198284a07835a396",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Varianta1606a06b60293fe8c3b3d02736d40c82ca91808002d460b7662e14d3d57df29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e481993-acd9-10f2-f1bb-7e1c51a2f29e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma admissible_bound_weaken {A B C x : ℝ}
    (hB : 3 / 2 ≤ B) (hB2 : B ≤ 2)
    (_hC : 0 ≤ C) (hCR : C ^ 2 * 5.5666305 ≤ 4 * 5.573412)
    (hA : 122 ≤ A)
    (hlogx : 5.5666305 ≤ log x) :
    admissible_bound 121.0961 (3 / 2) 2 5.5666305 x ≤ admissible_bound A B C 5.573412 x := by
  refine mul_le_mul ?_ ?_ ?_ ?_ <;> try positivity
  · have h_exp : (log x / 5.5666305) ^ (3 / 2 : ℝ) ≤
        (log x / 5.573412) ^ B * ((5.573412 / 5.5666305) ^ B) := by
      rw [← Real.mul_rpow (div_nonneg (by linarith) (by norm_num)) (by norm_num)]
      ring_nf at *; norm_num at *
      exact Real.rpow_le_rpow_of_exponent_le (by linarith) (by linarith)
    have h_div : 121.0961 * ((5.573412 / 5.5666305) ^ B) ≤ A :=
      le_trans (mul_le_mul_of_nonneg_left
        (Real.rpow_le_rpow_of_exponent_le (by norm_num) hB2) (by norm_num))
        (by norm_num; linarith)
    nlinarith [Real.rpow_pos_of_pos
      (show 0 < log x / 5.573412 from div_pos (lt_of_lt_of_le (by norm_num) hlogx) (by norm_num)) B]
  · norm_num at *
    rw [← Real.sqrt_eq_rpow, ← Real.sqrt_eq_rpow] at *
    nlinarith [Real.sqrt_nonneg (log x / (11133261 / 2000000)),
      Real.mul_self_sqrt (by linarith : 0 ≤ log x / (11133261 / 2000000)),
      Real.sqrt_nonneg (log x / (1393353 / 250000)),
      Real.mul_self_sqrt (by linarith : 0 ≤ log x / (1393353 / 250000))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Varianta1606a06b60293fe8c3b3d02736d40c82ca91808002d460b7662e14d3d57df29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Varianta1606a06b60293fe8c3b3d02736d40c82ca91808002d460b7662e14d3d57df29.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44f6fadbac9f838b75004e411b239b6fe90ca38d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
