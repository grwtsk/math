# one_sub_weight_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b6e4923b3ba46a904bb17c43a0b5b8ec2f80a8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:067728cb-0917-eceb-faa3-fdbe6c652d95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:755c4302-ee1e-4586-662d-09d7d320d52d",
  "kind": "theorem",
  "lexical_name": "one_sub_weight_le",
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
  "slug": "one-sub-weight-le--ed2bce6bbaad5cf235d9cda6",
  "source": {
    "blob": "2b6e4923b3ba46a904bb17c43a0b5b8ec2f80a8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/XiJensenWeights/Varianta6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed2bce6bbaad5cf235d9cda6c2daf86d8b774865e280bd6335a53c8f869ccec7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/XiJensenWeights/Varianta6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:755c4302-ee1e-4586-662d-09d7d320d52d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_sub_weight_le {n : ℕ} (hn : 1 ≤ n) (k : ℕ) :
    1 - weight n k ≤ (2 * (k : ℝ)) * (2 * (k : ℝ) - 1) / (4 * (n : ℝ)) := by
  have hn0 : 0 < 2 * (n : ℝ) := by positivity
  by_cases hk : k ≤ n
  · rw [weight_eq_prod hn, Finset.prod_one_sub_ordered]
    simp only [sub_sub_cancel]
    calc
      _ ≤ ∑ j ∈ range (2 * k), (j : ℝ) / (2 * (n : ℝ)) := by
        apply Finset.sum_le_sum
        intro j hj
        apply mul_le_of_le_one_right (by positivity)
        apply Finset.prod_le_one
        · intro i hi
          exact (factor_mem_unit hn hk (Finset.mem_filter.mp hi).1).1
        · intro i hi
          exact (factor_mem_unit hn hk (Finset.mem_filter.mp hi).1).2
      _ = _ := by
        rw [← Finset.sum_div, sum_range_real]
        push_cast
        ring
  · rw [weight_eq_zero_of_lt (by omega)]
    have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast hn
    have hkn : (n : ℝ) + 1 ≤ k := by exact_mod_cast (show n + 1 ≤ k by omega)
    apply (le_div_iff₀ (by positivity : 0 < 4 * (n : ℝ))).mpr
    nlinarith

/-- Both sides of the reconstruction defect are controlled at every coefficient index. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/XiJensenWeights/Varianta6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/XiJensenWeights/Varianta6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b6e4923b3ba46a904bb17c43a0b5b8ec2f80a8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
