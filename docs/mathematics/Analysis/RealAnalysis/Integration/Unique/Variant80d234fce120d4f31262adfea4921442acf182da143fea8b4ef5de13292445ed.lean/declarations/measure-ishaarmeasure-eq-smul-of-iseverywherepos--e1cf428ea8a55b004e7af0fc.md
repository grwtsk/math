# measure_isHaarMeasure_eq_smul_of_isEverywherePos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed2846b3-cbea-f40d-cb8e-288483225358",
  "kind": "theorem",
  "lexical_name": "measure_isHaarMeasure_eq_smul_of_isEverywherePos",
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
  "slug": "measure-ishaarmeasure-eq-smul-of-iseverywherepos--e1cf428ea8a55b004e7af0fc",
  "source": {
    "blob": "cce80fab2e4f45ea1fa455657fb5e19d16580bfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 836,
    "line": 730,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variant80d234fce120d4f31262adfea4921442acf182da143fea8b4ef5de13292445ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1cf428ea8a55b004e7af0fcfd614982b39f9cac22b53c78c11c03c9afa80dab",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Unique/Variant80d234fce120d4f31262adfea4921442acf182da143fea8b4ef5de13292445ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed2846b3-cbea-f40d-cb8e-288483225358`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 730–836.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_isHaarMeasure_eq_smul_of_isEverywherePos [LocallyCompactSpace G]
    (μ' μ : Measure G) [IsHaarMeasure μ] [IsHaarMeasure μ']
    {s : Set G} (hs : MeasurableSet s) (h's : IsEverywherePos μ s) :
    μ' s = haarScalarFactor μ' μ • μ s := by
  let ν := haarScalarFactor μ' μ • μ
  change μ' s = ν s
  /- Fix a compact neighborhood `k` of the identity, and consider a maximal disjoint family `m` of
  sets `x • k` centered at points in `s`. Then `s` is covered by the sets `x • (k * k⁻¹)` by
  maximality. If the family is countable, then since `μ'` and `ν` coincide in compact sets, and
  the measure of a countable disjoint union is the sum of the measures, we get `μ' s = ν s`.
  Otherwise, the family is uncountable, and each intersection with `s` has positive measure by
  the everywhere positivity assumption, so `ν s = ∞`, and `μ' s = ∞` in the same way. -/
  obtain ⟨k, k_comp, k_closed, k_mem⟩ : ∃ k, IsCompact k ∧ IsClosed k ∧ k ∈ 𝓝 (1 : G) := by
    rcases exists_compact_mem_nhds (1 : G) with ⟨k, hk, hmem⟩
    exact ⟨closure k, hk.closure, isClosed_closure, mem_of_superset hmem subset_closure⟩
  have one_k : 1 ∈ k := mem_of_mem_nhds k_mem
  let A : Set (Set G) := {t | t ⊆ s ∧ PairwiseDisjoint t (fun x ↦ x • k)}
  obtain ⟨m, m_max⟩ : ∃ m, Maximal (· ∈ A) m := by
    apply zorn_subset
    intro c cA hc
    refine ⟨⋃ a ∈ c, a, ⟨?_, ?_⟩, ?_⟩
    · simp only [iUnion_subset_iff]
      intro a ac x hx
      simp only [A, subset_def, mem_ofPred_eq] at cA
      exact (cA _ ac).1 x hx
    · rintro x hx y hy hxy
      simp only [mem_iUnion, exists_prop] at hx hy
      rcases hx with ⟨a, ac, xa⟩
      rcases hy with ⟨b, bc, yb⟩
      obtain ⟨m, mc, am, bm⟩ : ∃ m ∈ c, a ⊆ m ∧ b ⊆ m := hc.directedOn _ ac _ bc
      exact (cA mc).2 (am xa) (bm yb) hxy
    · intro a ac
      exact subset_biUnion_of_mem (u := id) ac
  obtain ⟨hms : m ⊆ s, hdj : PairwiseDisjoint m (fun x ↦ x • k)⟩ := m_max.prop
  have sm : s ⊆ ⋃ x ∈ m, x • (k * k⁻¹) := by
    intro y hy
    by_cases h'y : m ∪ {y} ∈ A
    · have ym : y ∈ m := m_max.mem_of_prop_insert (by simpa using h'y)
      have : y ∈ y • (k * k⁻¹) := by
        simpa using mem_leftCoset y (Set.mul_mem_mul one_k (Set.inv_mem_inv.mpr one_k))
      exact mem_biUnion ym this
    · obtain ⟨x, xm, -, z, zy, zx⟩ : ∃ x ∈ m, y ≠ x ∧ ∃ z, z ∈ y • k ∧ z ∈ x • k := by
        simpa [A, hms, hy, insert_subset_iff, pairwiseDisjoint_insert, hdj, not_disjoint_iff]
          using h'y
      have : y ∈ x • (k * k⁻¹) := by
        rw [show y = x * ((x⁻¹ * z) * (y⁻¹ * z)⁻¹) by group]
        have : (x⁻¹ * z) * (y⁻¹ * z)⁻¹ ∈ k * k⁻¹ := Set.mul_mem_mul ((mem_leftCoset_iff x).mp zx)
          (Set.inv_mem_inv.mpr ((mem_leftCoset_iff y).mp zy))
        exact mem_leftCoset x this
      exact mem_biUnion xm this
  rcases eq_empty_or_nonempty m with rfl | hm
  · simp only [mem_empty_iff_false, iUnion_of_empty, iUnion_empty, subset_empty_iff] at sm
    simp [sm]
  by_cases h'm : Set.Countable m
  · rcases h'm.exists_eq_range hm with ⟨f, rfl⟩
    have M i : MeasurableSet (disjointed (fun n ↦ s ∩ f n • (k * k⁻¹)) i) := by
      apply MeasurableSet.disjointed (fun j ↦ hs.inter ?_)
      have : IsClosed (k • k⁻¹) := IsClosed.smul_left_of_isCompact k_closed.inv k_comp
      exact (IsClosed.smul this (f j)).measurableSet
    simp only [mem_range, iUnion_exists, iUnion_iUnion_eq'] at sm
    have s_eq : s = ⋃ n, s ∩ (f n • (k * k⁻¹)) := by rwa [← inter_iUnion, eq_comm, inter_eq_left]
    have I : μ' s = ∑' n, μ' (disjointed (fun n ↦ s ∩ f n • (k * k⁻¹)) n) := by
      rw [← measure_iUnion (disjoint_disjointed _) M, iUnion_disjointed, ← s_eq]
    have J : ν s = ∑' n, ν (disjointed (fun n ↦ s ∩ f n • (k * k⁻¹)) n) := by
      rw [← measure_iUnion (disjoint_disjointed _) M, iUnion_disjointed, ← s_eq]
    rw [I, J]
    congr with n
    apply measure_isMulInvariant_eq_smul_of_isCompact_closure
    have : IsCompact (f n • (k * k⁻¹)) := IsCompact.smul (f n) (k_comp.mul k_comp.inv)
    exact this.closure_of_subset <| (disjointed_subset _ _).trans inter_subset_right
  · have H : ∀ (ρ : Measure G), IsEverywherePos ρ s → ρ s = ∞ := by
      intro ρ hρ
      have M : ∀ (i : ↑m), MeasurableSet (s ∩ (i : G) • k) :=
        fun i ↦ hs.inter (IsClosed.smul k_closed _).measurableSet
      contrapose! h'm
      have : ∑' (x : m), ρ (s ∩ ((x : G) • k)) < ∞ := by
        apply lt_of_le_of_lt (MeasureTheory.tsum_meas_le_meas_iUnion_of_disjoint _ M _) _
        · have I : PairwiseDisjoint m fun x ↦ s ∩ x • k :=
            hdj.mono (fun x ↦ inter_subset_right)
          exact I.on_injective Subtype.val_injective (fun x ↦ x.2)
        · exact lt_of_le_of_lt (measure_mono (by simp [inter_subset_left])) h'm.lt_top
      have C : Set.Countable (support fun (i : m) ↦ ρ (s ∩ (i : G) • k)) :=
        Summable.countable_support_ennreal this.ne
      have : support (fun (i : m) ↦ ρ (s ∩ (i : G) • k)) = univ := by
        refine eq_univ_iff_forall.2 fun i ↦ ?_
        refine ne_of_gt (hρ (i : G) (hms i.2) _ ?_)
        exact inter_mem_nhdsWithin s (by simpa)
      rw [this] at C
      have : Countable m := countable_univ_iff.mp C
      exact to_countable m
    have Hν : IsEverywherePos ν s :=
      h's.smul_measure_nnreal (haarScalarFactor_pos_of_isHaarMeasure _ _).ne'
    have Hμ' : IsEverywherePos μ' s := by
      apply Hν.of_forall_exists_nhds_eq (fun x _hx ↦ ?_)
      obtain ⟨t, t_comp, t_mem⟩ : ∃ t, IsCompact t ∧ t ∈ 𝓝 x := exists_compact_mem_nhds x
      refine ⟨t, t_mem, fun u hu ↦ ?_⟩
      apply measure_isMulInvariant_eq_smul_of_isCompact_closure
      exact t_comp.closure_of_subset hu
    rw [H ν Hν, H μ' Hμ']

/-- **Uniqueness of Haar measures**:
Given two Haar measures, they coincide in the following sense: they give the same value to open
sets, up to the multiplicative constant `haarScalarFactor μ' μ`. -/
@[to_additive measure_isAddHaarMeasure_eq_smul_of_isOpen
/-- **Uniqueness of Haar measures**:
Given two additive Haar measures, they coincide in the following sense: they give the same value to
open sets, up to the multiplicative constant `addHaarScalarFactor μ' μ`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Unique/Variant80d234fce120d4f31262adfea4921442acf182da143fea8b4ef5de13292445ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variant80d234fce120d4f31262adfea4921442acf182da143fea8b4ef5de13292445ed.lean#L730).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cce80fab2e4f45ea1fa455657fb5e19d16580bfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
