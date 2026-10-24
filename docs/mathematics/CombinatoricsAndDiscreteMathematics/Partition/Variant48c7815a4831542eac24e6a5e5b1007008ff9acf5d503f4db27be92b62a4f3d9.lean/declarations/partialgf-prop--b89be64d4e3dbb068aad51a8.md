# partialGF_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1097d41dc97634c27c5ae78e717feabcb946a1f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31943e43-bf82-29e5-1968-5b5992bf6ade",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8c0925c-facb-2d79-7cb6-4fbb129fa0d7",
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
  "slug": "partialgf-prop--b89be64d4e3dbb068aad51a8",
  "source": {
    "blob": "1097d41dc97634c27c5ae78e717feabcb946a1f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 168,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b89be64d4e3dbb068aad51a811009bfce175b8dbb6ec6a7b4f8b3e363ca12915",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8c0925c-facb-2d79-7cb6-4fbb129fa0d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partialGF_prop (α : Type*) [CommSemiring α] (n : ℕ) (s : Finset ℕ) (hs : ∀ i ∈ s, 0 < i)
    (c : ℕ → Set ℕ) (hc : ∀ i, i ∉ s → 0 ∈ c i) :
    #{p : n.Partition | (∀ j, p.parts.count j ∈ c j) ∧ ∀ j ∈ p.parts, j ∈ s} =
      coeff α n (∏ i ∈ s, indicatorSeries α ((· * i) '' c i)) := by
  simp_rw [coeff_prod, coeff_indicator, prod_boole, sum_boole]
  apply congr_arg
  simp only [mem_univ, forall_true_left, not_and, not_forall, exists_prop,
    Set.mem_image, not_exists]
  set φ : (a : Nat.Partition n) →
    a ∈ filter (fun p ↦ (∀ (j : ℕ), Multiset.count j p.parts ∈ c j) ∧ ∀ j ∈ p.parts, j ∈ s) univ →
    ℕ →₀ ℕ := fun p _ => {
      toFun := fun i => Multiset.count i p.parts • i
      support := Finset.filter (fun i => i ≠ 0) p.parts.toFinset
      mem_support_toFun := fun a => by
        simp only [smul_eq_mul, ne_eq, mul_eq_zero, Multiset.count_eq_zero]
        rw [not_or, not_not]
        simp only [Multiset.mem_toFinset, not_not, mem_filter] }
  refine Finset.card_bij φ ?_ ?_ ?_
  · intro a ha
    simp only [φ, not_forall, not_exists, not_and, exists_prop, mem_filter]
    rw [mem_finsuppAntidiag]
    dsimp only [ne_eq, smul_eq_mul, id_eq, eq_mpr_eq_cast, le_eq_subset, Finsupp.coe_mk]
    simp only [mem_univ, forall_true_left, not_and, not_forall, exists_prop,
      mem_filter, true_and] at ha
    refine ⟨⟨?_, fun i ↦ ?_⟩, fun i _ ↦ ⟨a.parts.count i, ha.1 i, rfl⟩⟩
    · conv_rhs => simp [← a.parts_sum]
      rw [sum_multiset_count_of_subset _ s]
      · simp only [smul_eq_mul]
      · intro i
        simp only [Multiset.mem_toFinset, not_not, mem_filter]
        apply ha.2
    · simp only [ne_eq, Multiset.mem_toFinset, not_not, mem_filter, and_imp]
      exact fun hi _ ↦ ha.2 i hi
  · dsimp only
    intro p₁ hp₁ p₂ hp₂ h
    apply Nat.Partition.ext
    simp only [true_and, mem_univ, mem_filter] at hp₁ hp₂
    ext i
    simp only [φ, ne_eq, Multiset.mem_toFinset, not_not, smul_eq_mul, Finsupp.mk.injEq] at h
    by_cases hi : i = 0
    · rw [hi]
      rw [Multiset.count_eq_zero_of_notMem]
      · rw [Multiset.count_eq_zero_of_notMem]
        intro a; exact Nat.lt_irrefl 0 (hs 0 (hp₂.2 0 a))
      intro a; exact Nat.lt_irrefl 0 (hs 0 (hp₁.2 0 a))
    · rw [← mul_left_inj' hi]
      rw [funext_iff] at h
      exact h.2 i
  · simp only [φ, mem_filter, mem_finsuppAntidiag, mem_univ, exists_prop, true_and, and_assoc]
    rintro f ⟨hf, hf₃, hf₄⟩
    have hf' : f ∈ finsuppAntidiag s n := mem_finsuppAntidiag.mpr ⟨hf, hf₃⟩
    simp only [mem_finsuppAntidiag] at hf'
    refine ⟨⟨∑ i ∈ s, Multiset.replicate (f i / i) i, ?_, ?_⟩, ?_, ?_, ?_⟩
    · intro i hi
      simp only [exists_prop, mem_sum, mem_map, Function.Embedding.coeFn_mk] at hi
      rcases hi with ⟨t, ht, z⟩
      apply hs
      rwa [Multiset.eq_of_mem_replicate z]
    · simp_rw [Multiset.sum_sum, Multiset.sum_replicate, Nat.nsmul_eq_mul]
      rw [← hf'.1]
      refine sum_congr rfl fun i hi => Nat.div_mul_cancel ?_
      rcases hf₄ i hi with ⟨w, _, hw₂⟩
      rw [← hw₂]
      exact dvd_mul_left _ _
    · intro i
      simp_rw [Multiset.count_sum', Multiset.count_replicate, sum_ite_eq']
      split_ifs with h
      · rcases hf₄ i h with ⟨w, hw₁, hw₂⟩
        rwa [← hw₂, Nat.mul_div_cancel _ (hs i h)]
      · exact hc _ h
    · intro i hi
      rw [mem_sum] at hi
      rcases hi with ⟨j, hj₁, hj₂⟩
      rwa [Multiset.eq_of_mem_replicate hj₂]
    · ext i
      simp_rw [Multiset.count_sum', Multiset.count_replicate, sum_ite_eq']
      simp only [ne_eq, Multiset.mem_toFinset, not_not, smul_eq_mul, ite_mul,
        zero_mul, Finsupp.coe_mk]
      split_ifs with h
      · apply Nat.div_mul_cancel
        rcases hf₄ i h with ⟨w, _, hw₂⟩
        apply Dvd.intro_left _ hw₂
      · apply symm
        rw [← Finsupp.notMem_support_iff]
        exact notMem_mono hf'.2 h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1097d41dc97634c27c5ae78e717feabcb946a1f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
