# geo_series

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a86e8c54f6deeb8c3e43fb8d058cf88e43a318ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38cc176c53c54b6ec37b378984b300f920aa019818f2c620d0849191434e1e48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39baccd4-9979-5cc4-cac7-aba5ee561025",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f76e81de-9330-aaaa-5ced-ada29a3b8124",
  "kind": "lemma",
  "lexical_name": "geo_series",
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
  "slug": "geo-series--451f9d3c1fcb03f8f11862f5",
  "source": {
    "blob": "a86e8c54f6deeb8c3e43fb8d058cf88e43a318ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 179,
    "path": "GRWTSK/Algebra/UniversalAlgebra/BigOperators/Variant38cc176c53c54b6ec37b378984b300f920aa019818f2c620d0849191434e1e48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:451f9d3c1fcb03f8f11862f5ce8996d0c6604d8d73d8ccbfa198b17cf7e8c802",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/BigOperators/Variant38cc176c53c54b6ec37b378984b300f920aa019818f2c620d0849191434e1e48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f76e81de-9330-aaaa-5ced-ada29a3b8124`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma geo_series [Nontrivial β] (x : β) (hx1 : abv x < 1) :
    IsCauSeq abv fun n ↦ ∑ m ∈ range n, x ^ m := by
  have hx1' : abv x ≠ 1 := fun h ↦ by simp [h, lt_irrefl] at hx1
  refine of_abv ?_
  simp only [abv_pow abv, geom_sum_eq hx1']
  conv in _ / _ => rw [← neg_div_neg_eq, neg_sub, neg_sub]
  have : 0 < 1 - abv x := sub_pos.2 hx1
  refine of_mono_bounded _ (a := (1 : α) / (1 - abv x)) (m := 0) ?_ ?_
  · intro n _
    rw [abs_of_nonneg]
    · gcongr
      exact sub_le_self _ (abv_pow abv x n ▸ abv_nonneg _ _)
    refine div_nonneg (sub_nonneg.2 ?_) (sub_nonneg.2 <| le_of_lt hx1)
    exact pow_le_one₀ (by positivity) hx1.le
  · intro n _
    rw [← one_mul (abv x ^ n), pow_succ']
    gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/BigOperators/Variant38cc176c53c54b6ec37b378984b300f920aa019818f2c620d0849191434e1e48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/BigOperators/Variant38cc176c53c54b6ec37b378984b300f920aa019818f2c620d0849191434e1e48.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a86e8c54f6deeb8c3e43fb8d058cf88e43a318ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
