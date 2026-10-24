# leftCoset_cover_filter_FiniteIndex_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c848781-009c-81da-dee2-c94d7fa98e9e",
  "kind": "theorem",
  "lexical_name": "leftCoset_cover_filter_FiniteIndex_aux",
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
  "slug": "leftcoset-cover-filter-finiteindex-aux--41609a3edd1f7c4ac1ad95c1",
  "source": {
    "blob": "4d2917ad3588fee91d80d42fe37d606a4695f80b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 215,
    "path": "GRWTSK/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41609a3edd1f7c4ac1ad95c1ccc0765f4aeedf38af71e78c4d7cc534cff634a1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c848781-009c-81da-dee2-c94d7fa98e9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leftCoset_cover_filter_FiniteIndex_aux
    [DecidablePred (FiniteIndex : Subgroup G → Prop)] :
    (⋃ k ∈ s.filter (fun i => (H i).FiniteIndex), g k • (H k : Set G) = Set.univ) ∧
      (1 ≤ ∑ i ∈ s, ((H i).index : ℚ)⁻¹) ∧
      (∑ i ∈ s, ((H i).index : ℚ)⁻¹ = 1 → Set.PairwiseDisjoint
        (s.filter (fun i => (H i).FiniteIndex)) (fun i ↦ g i • (H i : Set G))) := by
  classical
  let D := ⨅ k ∈ s.filter (fun i => (H i).FiniteIndex), H k
  -- `D`, as the finite intersection of subgroups of finite index, also has finite index.
  have hD : D.FiniteIndex := finiteIndex_iInf' _ <| by simp
  have hD_le {i} (hi : i ∈ s) (hfi : (H i).FiniteIndex) : D ≤ H i :=
    iInf₂_le i (Finset.mem_filter.mpr ⟨hi, hfi⟩)
  -- Each subgroup of finite index in the covering is the union of finitely many cosets of `D`.
  choose t ht using fun i hi hfi =>
    exists_leftTransversal_of_FiniteIndex (H := H i) (hD_le hi hfi)
  -- We construct a cover of `G` by the cosets of subgroups of infinite index and of `D`.
  let κ := (i : s) × { x // x ∈ if h : (H i.1).FiniteIndex then t i.1 i.2 h else {1} }
  let f (k : κ) : G := g k.1 * k.2.val
  let K (k : κ) : Subgroup G := if (H k.1).FiniteIndex then D else H k.1
  have hcovers' : ⋃ k ∈ Finset.univ, f k • (K k : Set G) = Set.univ := by
    rw [← s.filter_union_filter_neg_eq (fun i => (H i).FiniteIndex)] at hcovers
    rw [← hcovers, ← Finset.univ.filter_union_filter_neg_eq (fun k => (H k.1).FiniteIndex),
      Finset.set_biUnion_union, Finset.set_biUnion_union]
    apply congrArg₂ (· ∪ ·) <;> rw [Set.iUnion_sigma, Set.iUnion_subtype] <;>
        refine Set.iUnion_congr fun i => ?_
    · by_cases hfi : (H i).FiniteIndex <;>
        simp [← Set.smul_set_iUnion₂, Set.iUnion_subtype, ← leftCoset_assoc, f, K, ht, hfi]
    · by_cases hfi : (H i).FiniteIndex <;>
        simp [Set.iUnion_subtype, f, K, hfi]
  -- There is at least one coset of a subgroup of finite index in the original covering.
  -- Therefore a coset of `D` occurs in the new covering.
  have ⟨k, hkfi, hk⟩ : ∃ k, (H k.1.1).FiniteIndex ∧ K k = D :=
    have ⟨j, hj, hjfi⟩ := exists_finiteIndex_of_leftCoset_cover hcovers
    have ⟨x, hx⟩ : (t j hj hjfi).Nonempty := Finset.nonempty_coe_sort.mp
      (ht j hj hjfi).1.leftQuotientEquiv.symm.nonempty
    ⟨⟨⟨j, hj⟩, ⟨x, dif_pos hjfi ▸ hx⟩⟩, hjfi, if_pos hjfi⟩
  -- Since `D` is the unique subgroup of finite index whose cosets occur in the new covering,
  -- the cosets of the other subgroups can be omitted.
  replace hcovers' : ⋃ i ∈ Finset.univ.filter (K · = D), f i • (D : Set G) = Set.univ := by
    rw [← hk, Set.iUnion₂_congr fun i hi => by rw [← (Finset.mem_filter.mp hi).2]]
    by_contra! h
    obtain ⟨i, -, hi⟩ :=
      exists_finiteIndex_of_leftCoset_cover_aux hcovers' k (Finset.mem_univ k) h
    by_cases hfi : (H i.1.1).FiniteIndex <;> simp [K, hfi, hkfi] at hi
  -- The result follows by restoring the original cosets of subgroups of finite index
  -- from the cosets of `D` into which they have been decomposed.
  have hHD (i) : ¬(H i).FiniteIndex → H i ≠ D := fun hfi hD' => (hD' ▸ hfi) hD
  have hdensity : ∑ i ∈ s, ((H i).index : ℚ)⁻¹ =
      (Finset.univ.filter (K · = D)).card * (D.index : ℚ)⁻¹ := by
    rw [eq_mul_inv_iff_mul_eq₀ (Nat.cast_ne_zero.mpr hD.index_ne_zero), Finset.sum_mul,
      ← Finset.sum_attach, eq_comm, Finset.card_filter, Nat.cast_sum, ← Finset.univ_sigma_univ,
      Finset.sum_sigma, Finset.sum_coe_sort_eq_attach]
    refine Finset.sum_congr rfl fun i _ => ?_
    by_cases hfi : (H i).FiniteIndex
    · rw [← relindex_mul_index (hD_le i.2 hfi), Nat.cast_mul, mul_comm,
        mul_inv_cancel_right₀ (Nat.cast_ne_zero.mpr hfi.index_ne_zero)]
      simpa [K, hfi] using (ht i.1 i.2 hfi).1.card_left
    · rw [of_not_not (FiniteIndex.mk.mt hfi), Nat.cast_zero, inv_zero, zero_mul]
      simpa [K, hfi] using hHD i hfi
  refine ⟨?_, ?_, ?_⟩
  · rw [← hcovers', Set.iUnion_sigma, Set.iUnion_subtype]
    refine Set.iUnion_congr fun i => ?_
    rw [Finset.mem_filter, Set.iUnion_and]
    refine Set.iUnion_congr fun hi => ?_
    by_cases hfi : (H i).FiniteIndex <;>
      simp [Set.smul_set_iUnion, Set.iUnion_subtype, ← leftCoset_assoc,
        f, K, hHD, ← (ht i hi _).2, hi, hfi, hkfi]
  · rw [hdensity]
    refine le_of_mul_le_mul_right ?_ (Nat.cast_pos.mpr (Nat.pos_of_ne_zero hD.index_ne_zero))
    rw [one_mul, mul_assoc, inv_mul_cancel₀ (Nat.cast_ne_zero.mpr hD.index_ne_zero), mul_one,
      Nat.cast_le]
    exact index_le_of_leftCoset_cover_const hcovers'
  · rw [hdensity, mul_inv_eq_one₀ (Nat.cast_ne_zero.mpr hD.index_ne_zero),
      Nat.cast_inj, Finset.coe_filter]
    intro h i hi j hj hij c hi' hj' x hx
    have hdisjoint := pairwiseDisjoint_leftCoset_cover_const_of_index_eq hcovers' h.symm
    -- We know the `f k • K k` are pairwise disjoint and need to prove that the `g i • H i` are.
    rw [Set.mem_setOf_eq] at hi hj
    have hk' (i) (hi : i ∈ s ∧ (H i).FiniteIndex) (hi' : c ≤ g i • (H i : Set G)) :
        ∃ (k : κ), k.1.1 = i ∧ K k = D ∧ x ∈ f k • (D : Set G) := by
      rw [← (ht i hi.1 hi.2).2] at hi'
      suffices ∃ r : H i, r ∈ t i hi.1 hi.2 ∧ x ∈ (g i * r) • (D : Set G) by
        have ⟨r, hr, hxr⟩ := this
        refine ⟨⟨⟨i, hi.1⟩, ⟨r, dif_pos hi.2 ▸ hr⟩⟩, rfl, ?_⟩
        simpa [K, f, if_pos hi.2] using hxr
      simpa [Set.mem_smul_set_iff_inv_smul_mem, smul_eq_mul, mul_assoc] using hi' hx
    have ⟨k₁, hik₁, hk₁, hxk₁⟩ := hk' i hi hi'
    have ⟨k₂, hjk₂, hk₂, hxk₂⟩ := hk' j hj hj'
    rw [← Set.singleton_subset_iff, ← Set.le_iff_subset] at hxk₁ hxk₂ ⊢
    exact hdisjoint
      (Finset.mem_filter.mpr ⟨Finset.mem_univ k₁, hk₁⟩)
      (Finset.mem_filter.mpr ⟨Finset.mem_univ k₂, hk₂⟩)
      (ne_of_apply_ne Sigma.fst (ne_of_apply_ne Subtype.val (hik₁ ▸ hjk₂ ▸ hij)))
      hxk₁ hxk₂

/-- Let the group `G` be the union of finitely many left cosets `g i • H i`.
Then the cosets of subgroups of infinite index may be omitted from the covering. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d2917ad3588fee91d80d42fe37d606a4695f80b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
