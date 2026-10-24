# partialGF_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06eca4e9e8f5368c23adfa93631e01d414ce4755",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 312,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90ecd774-5546-df47-dd43-6603b8de71c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1af87e7f-96d3-9725-e0da-146c14ee98bd",
  "kind": "theorem",
  "lexical_name": "partialGF_prop",
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
  "slug": "partialgf-prop--87f392146c2ce1eff48d831b",
  "source": {
    "blob": "06eca4e9e8f5368c23adfa93631e01d414ce4755",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 312,
    "path": "GRWTSK/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87f392146c2ce1eff48d831b553718346721fc32c9b3633fe9831402ebbbeb72",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1af87e7f-96d3-9725-e0da-146c14ee98bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partialGF_prop (α : Type _) [CommSemiring α] (n : ℕ) (s : Finset ℕ) (hs : ∀ i ∈ s, 0 < i)
    (c : ℕ → Set ℕ) (hc : ∀ i, i ∉ s → 0 ∈ c i) :
    (Finset.card
          ((univ : Finset (Nat.Partition n)).filter fun p =>
            (∀ j, p.parts.count j ∈ c j) ∧ ∀ j ∈ p.parts, j ∈ s) :
        α) =
      (coeff α n) (∏ i : ℕ in s, indicatorSeries α ((· * i) '' c i)) := by
  simp_rw [coeff_prod_range, coeff_indicator, prod_boole, sum_boole]
  congr 1
  refine' Finset.card_congr (fun p _ i => Multiset.count i p.parts • i) _ _ _
  · simp only [mem_filter, mem_cut, mem_univ, true_and_iff, exists_prop, and_assoc, and_imp,
      smul_eq_zero, Function.Embedding.coeFn_mk, exists_imp]
    rintro ⟨p, hp₁, hp₂⟩ hp₃ hp₄
    dsimp only at *
    refine' ⟨_, _, _⟩
    · rw [← hp₂, ←
        sum_multiset_count_of_subset p s fun x hx => hp₄ _ (Multiset.mem_toFinset.mp hx)]
    · intro i hi
      left
      exact Multiset.count_eq_zero_of_not_mem (mt (hp₄ i) hi)
    · exact fun i _ => ⟨_, hp₃ i, rfl⟩
  · dsimp only
    intro p₁ p₂ hp₁ hp₂ h
    apply Nat.Partition.ext
    simp only [true_and_iff, mem_univ, mem_filter] at hp₁ hp₂
    ext i
    rw [Function.funext_iff] at h
    specialize h i
    match i with
    | 0 =>
      rw [Multiset.count_eq_zero_of_not_mem]
      rw [Multiset.count_eq_zero_of_not_mem]
      intro a; exact Nat.lt_irrefl 0 (hs 0 (hp₂.2 0 a))
      intro a; exact Nat.lt_irrefl 0 (hs 0 (hp₁.2 0 a))
    | .succ i =>
      rwa [Nat.nsmul_eq_mul, Nat.nsmul_eq_mul, mul_left_inj' i.succ_ne_zero] at h
  · simp only [mem_filter, mem_cut, mem_univ, exists_prop, true_and_iff, and_assoc]
    rintro f ⟨hf₁, hf₂, hf₃⟩
    refine' ⟨⟨∑ i in s, Multiset.replicate (f i / i) i, _, _⟩, _, _, _⟩
    · intro i hi
      simp only [exists_prop, mem_sum, mem_map, Function.Embedding.coeFn_mk] at hi
      rcases hi with ⟨t, ht, z⟩
      apply hs
      rwa [Multiset.eq_of_mem_replicate z]
    · simp_rw [Multiset.sum_sum, Multiset.sum_replicate, Nat.nsmul_eq_mul, ← hf₁]
      refine' sum_congr rfl fun i hi => Nat.div_mul_cancel _
      rcases hf₃ i hi with ⟨w, _, hw₂⟩
      rw [← hw₂]
      exact dvd_mul_left _ _
    · intro i
      simp_rw [Multiset.count_sum', Multiset.count_replicate, sum_ite_eq]
      split_ifs with h
      · rcases hf₃ i h with ⟨w, hw₁, hw₂⟩
        rwa [← hw₂, Nat.mul_div_cancel _ (hs i h)]
      · exact hc _ h
    · intro i hi
      rw [mem_sum] at hi
      rcases hi with ⟨j, hj₁, hj₂⟩
      rwa [Multiset.eq_of_mem_replicate hj₂]
    · ext i
      simp_rw [Multiset.count_sum', Multiset.count_replicate, sum_ite_eq]
      split_ifs with h
      · apply Nat.div_mul_cancel
        rcases hf₃ i h with ⟨w, _, hw₂⟩
        apply Dvd.intro_left _ hw₂
      · rw [zero_smul, hf₂ i h]
#align theorems_100.partial_gf_prop Theorems100.partialGF_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06eca4e9e8f5368c23adfa93631e01d414ce4755` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
