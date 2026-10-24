# convexHull_range_eq_exists_affineCombination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b95499f4e25da6d40581ef8f91a895ed42cc8a21",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2cbc919b-db2f-66ec-eeb8-bbb3ae4563f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c52bee4a-000a-ef68-3100-28954e4a12b9",
  "kind": "theorem",
  "lexical_name": "convexHull_range_eq_exists_affineCombination",
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
  "slug": "convexhull-range-eq-exists-affinecombination--9b24776690e253a16b76edb6",
  "source": {
    "blob": "b95499f4e25da6d40581ef8f91a895ed42cc8a21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 266,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b24776690e253a16b76edb6f57d60a07e6cb4f761e15cfda0494114319f35c9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c52bee4a-000a-ef68-3100-28954e4a12b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexHull_range_eq_exists_affineCombination (v : ι → E) : convexHull R (range v) =
    { x | ∃ (s : Finset ι) (w : ι → R) (_ : ∀ i ∈ s, 0 ≤ w i) (_ : s.sum w = 1),
    s.affineCombination R v w = x } := by
  refine' Subset.antisymm (convexHull_min _ _) _
  · intro x hx
    obtain ⟨i, hi⟩ := Set.mem_range.mp hx
    refine' ⟨{i}, Function.const ι (1 : R), by simp, by simp, by simp [hi]⟩
  · rintro x ⟨s, w, hw₀, hw₁, rfl⟩ y ⟨s', w', hw₀', hw₁', rfl⟩ a b ha hb hab
    let W : ι → R := fun i => (if i ∈ s then a * w i else 0) + if i ∈ s' then b * w' i else 0
    have hW₁ : (s ∪ s').sum W = 1 := by
      rw [sum_add_distrib, ← sum_subset (subset_union_left s s'),
        ← sum_subset (subset_union_right s s'), sum_ite_of_true _ _ fun i hi => hi,
        sum_ite_of_true _ _ fun i hi => hi, ← mul_sum, ← mul_sum, hw₁, hw₁', ← add_mul, hab,
        mul_one] <;> intro i _ hi' <;> simp [hi']
    refine' ⟨s ∪ s', W, _, hW₁, _⟩
    · rintro i -
      by_cases hi : i ∈ s <;> by_cases hi' : i ∈ s' <;>
        simp [hi, hi', add_nonneg, mul_nonneg ha (hw₀ i _), mul_nonneg hb (hw₀' i _)]
    · simp_rw [affineCombination_eq_linear_combination (s ∪ s') v _ hW₁,
        affineCombination_eq_linear_combination s v w hw₁,
        affineCombination_eq_linear_combination s' v w' hw₁', add_smul, sum_add_distrib]
      rw [← sum_subset (subset_union_left s s'), ← sum_subset (subset_union_right s s')]
      · simp only [ite_smul, sum_ite_of_true _ _ fun _ hi => hi, mul_smul, ← smul_sum]
      · intro i _ hi'
        simp [hi']
      · intro i _ hi'
        simp [hi']
  · rintro x ⟨s, w, hw₀, hw₁, rfl⟩
    exact affineCombination_mem_convexHull hw₀ hw₁
#align convex_hull_range_eq_exists_affine_combination convexHull_range_eq_exists_affineCombination

/--
Convex hull of `s` is equal to the set of all centers of masses of `Finset`s `t`, `z '' t ⊆ s`.
For universe reasons, you shouldn't use this lemma to prove that a given center of mass belongs
to the convex hull. Use convexity of the convex hull instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b95499f4e25da6d40581ef8f91a895ed42cc8a21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
