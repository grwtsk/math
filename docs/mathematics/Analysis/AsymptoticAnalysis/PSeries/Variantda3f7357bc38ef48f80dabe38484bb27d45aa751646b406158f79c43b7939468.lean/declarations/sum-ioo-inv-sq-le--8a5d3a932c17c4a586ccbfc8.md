# sum_Ioo_inv_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc053ee83f754bb12a8950c5708168075c539e39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3514315c-a951-e407-63e9-7f5627e0f2d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c48c008-c052-dbf7-2559-36f0a91b260d",
  "kind": "theorem",
  "lexical_name": "sum_Ioo_inv_sq_le",
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
  "slug": "sum-ioo-inv-sq-le--8a5d3a932c17c4a586ccbfc8",
  "source": {
    "blob": "bc053ee83f754bb12a8950c5708168075c539e39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 389,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a5d3a932c17c4a586ccbfc852d6cded033e69f62c0b4a90f6bb3de14fc037fc",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c48c008-c052-dbf7-2559-36f0a91b260d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_Ioo_inv_sq_le (k n : ℕ) : (∑ i ∈ Ioo k n, (i ^ 2 : α)⁻¹) ≤ 2 / (k + 1) :=
  calc
    (∑ i ∈ Ioo k n, ((i : α) ^ 2)⁻¹) ≤ ∑ i ∈ Ioc k (max (k + 1) n), ((i : α) ^ 2)⁻¹ := by
      apply sum_le_sum_of_subset_of_nonneg
      · intro x hx
        simp only [mem_Ioo] at hx
        simp only [hx, hx.2.le, mem_Ioc, le_max_iff, or_true, and_self_iff]
      · intro i _hi _hident
        positivity
    _ ≤ ((k + 1 : α) ^ 2)⁻¹ + ∑ i ∈ Ioc k.succ (max (k + 1) n), ((i : α) ^ 2)⁻¹ := by
      rw [← Icc_add_one_left_eq_Ioc, ← Ico_add_one_right_eq_Icc, sum_eq_sum_Ico_succ_bot]
      swap; · exact Nat.succ_lt_succ ((Nat.lt_succ_self k).trans_le (le_max_left _ _))
      rw [Ico_add_one_right_eq_Icc, Icc_add_one_left_eq_Ioc]
      norm_cast
    _ ≤ ((k + 1 : α) ^ 2)⁻¹ + (k + 1 : α)⁻¹ := by
      refine add_le_add le_rfl ((sum_Ioc_inv_sq_le_sub ?_ (le_max_left _ _)).trans ?_)
      · simp only [Ne, Nat.succ_ne_zero, not_false_iff]
      · simp only [Nat.cast_succ, one_div, sub_le_self_iff, inv_nonneg, Nat.cast_nonneg]
    _ ≤ 1 / (k + 1) + 1 / (k + 1) := by
      have A : (1 : α) ≤ k + 1 := by simp only [le_add_iff_nonneg_left, Nat.cast_nonneg]
      simp_rw [← one_div]
      gcongr
      simpa using pow_right_mono₀ A one_le_two
    _ = 2 / (k + 1) := by ring

end

open Set Nat in
/-- The harmonic series restricted to a residue class is not summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc053ee83f754bb12a8950c5708168075c539e39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
