# ZLattice.rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1beab8f-7eb1-a103-6dd4-d2676c02dfc3",
  "kind": "theorem",
  "lexical_name": "ZLattice.rank",
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
  "slug": "zlattice-rank--61547059b8ae8277e9a2da96",
  "source": {
    "blob": "500406adf6f99576f675c0993f02cb54f422a446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 614,
    "line": 528,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant86d1a16b2b6b78e85c8b45e9ccdbc5383b9fcb1e32341351658547ebbaee026b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61547059b8ae8277e9a2da960b51c14e696444e7a32ed4a0859010f7f8837925",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant86d1a16b2b6b78e85c8b45e9ccdbc5383b9fcb1e32341351658547ebbaee026b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1beab8f-7eb1-a103-6dd4-d2676c02dfc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–614.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZLattice.rank [hs : IsZLattice K L] : finrank ℤ L = finrank K E := by
  classical
  have : Module.Finite ℤ L := module_finite K L
  have : Module.Free ℤ L := module_free K L
  have : Module ℚ E := Module.compHom E (algebraMap ℚ K)
  let b₀ := Module.Free.chooseBasis ℤ L
  -- Let `b` be a `ℤ`-basis of `L` formed of vectors of `E`
  let b := Subtype.val ∘ b₀
  have : LinearIndependent ℤ b :=
    LinearIndependent.map' b₀.linearIndependent (L.subtype) (ker_subtype _)
  -- We prove some assertions that will be useful later on
  have h_spanL : span ℤ (Set.range b) = L := by
    convert congrArg (map (Submodule.subtype L)) b₀.span_eq
    · rw [map_span, Set.range_comp]
      rfl
    · exact (map_subtype_top _).symm
  have h_spanE : span K (Set.range b) = ⊤ := by
    rw [← span_span_of_tower (R := ℤ), h_spanL]
    exact hs.span_top
  have h_card : Fintype.card (Module.Free.ChooseBasisIndex ℤ L) =
      (Set.range b).toFinset.card := by
    rw [Set.toFinset_range, Finset.univ.card_image_of_injective]
    · rfl
    · exact Subtype.coe_injective.comp (Basis.injective _)
  rw [finrank_eq_card_chooseBasisIndex]
    -- We prove that `finrank ℤ L ≤ finrank K E` and `finrank K E ≤ finrank ℤ L`
  refine le_antisymm ?_ ?_
  · -- To prove that `finrank ℤ L ≤ finrank K E`, we proceed by contradiction and prove that, in
    -- this case, there is a ℤ-relation between the vectors of `b`
    obtain ⟨t, ⟨ht_inc, ⟨ht_span, ht_lin⟩⟩⟩ := exists_linearIndependent K (Set.range b)
    -- `e` is a `K`-basis of `E` formed of vectors of `b`
    let e : Basis t K E := Basis.mk ht_lin (by simp [ht_span, h_spanE])
    have : Fintype t := Set.Finite.fintype ((Set.range b).toFinite.subset ht_inc)
    have h : LinearIndepOn ℤ id (Set.range b) := by
      rwa [linearIndepOn_id_range_iff (Subtype.coe_injective.comp b₀.injective)]
    contrapose! h
    -- Since `finrank ℤ L > finrank K E`, there exists a vector `v ∈ b` with `v ∉ e`
    obtain ⟨v, hv⟩ : (Set.range b \ Set.range e).Nonempty := by
      rw [Basis.coe_mk, Subtype.range_coe_subtype, Set.setOf_mem_eq, ← Set.toFinset_nonempty]
      contrapose h
      rw [Finset.not_nonempty_iff_eq_empty, Set.toFinset_diff,
        Finset.sdiff_eq_empty_iff_subset] at h
      replace h := Finset.card_le_card h
      rwa [not_lt, h_card, ← topEquiv.finrank_eq, ← h_spanE, ← ht_span,
        finrank_span_set_eq_card ht_lin]
    -- Assume that `e ∪ {v}` is not `ℤ`-linear independent then we get the contradiction
    suffices ¬ LinearIndepOn ℤ id (insert v (Set.range e)) by
      contrapose! this
      refine this.mono ?_
      exact Set.insert_subset (Set.mem_of_mem_diff hv) (by simp [e, ht_inc])
    -- We prove finally that `e ∪ {v}` is not ℤ-linear independent or, equivalently,
    -- not ℚ-linear independent by showing that `v ∈ span ℚ e`.
    rw [LinearIndepOn, LinearIndependent.iff_fractionRing ℤ ℚ, ← LinearIndepOn,
      linearIndepOn_id_insert (Set.notMem_of_mem_diff hv), not_and, not_not]
    intro _
    -- But that follows from the fact that there exist `n, m : ℕ`, `n ≠ m`
    -- such that `(n - m) • v ∈ span ℤ e` which is true since `n ↦ ZSpan.fract e (n • v)`
    -- takes value into the finite set `fundamentalDomain e ∩ L`
    have h_mapsto : Set.MapsTo (fun n : ℤ => fract e (n • v)) Set.univ
        (Metric.closedBall 0 (∑ i, ‖e i‖) ∩ (L : Set E)) := by
      rw [Set.mapsTo_inter, Set.mapsTo_univ_iff, Set.mapsTo_univ_iff]
      refine ⟨fun _ ↦ mem_closedBall_zero_iff.mpr (norm_fract_le e _), fun _ => ?_⟩
      · rw [← h_spanL]
        refine sub_mem ?_ ?_
        · exact zsmul_mem (subset_span (Set.diff_subset hv)) _
        · exact span_mono (by simp [e, ht_inc]) (coe_mem _)
    have h_finite : Set.Finite (Metric.closedBall 0 (∑ i, ‖e i‖) ∩ (L : Set E)) := by
      change ((_ : Set E) ∩ L.toAddSubgroup).Finite
      have : DiscreteTopology L.toAddSubgroup := (inferInstance : DiscreteTopology L)
      exact Metric.finite_isBounded_inter_isClosed  Metric.isBounded_closedBall inferInstance
    obtain ⟨n, -, m, -, h_neq, h_eq⟩ := Set.Infinite.exists_ne_map_eq_of_mapsTo
      Set.infinite_univ h_mapsto h_finite
    have h_nz : (-n + m : ℚ) ≠ 0 := by
      rwa [Ne, add_eq_zero_iff_eq_neg.not, neg_inj, Rat.coe_int_inj, ← Ne]
    apply (smul_mem_iff _ h_nz).mp
    refine span_subset_span ℤ ℚ _ ?_
    rwa [add_smul, neg_smul, SetLike.mem_coe, ← fract_eq_fract, Int.cast_smul_eq_zsmul ℚ,
      Int.cast_smul_eq_zsmul ℚ]
  · -- To prove that `finrank K E ≤ finrank ℤ L`, we use the fact `b` generates `E` over `K`
    -- and thus `finrank K E ≤ card b = finrank ℤ L`
    rw [← topEquiv.finrank_eq, ← h_spanE]
    convert finrank_span_le_card (R := K) (Set.range b)

open Module

variable {ι : Type*} [hs : IsZLattice K L] (b : Basis ι ℤ L)
/-- Any `ℤ`-basis of `L` is also a `K`-basis of `E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant86d1a16b2b6b78e85c8b45e9ccdbc5383b9fcb1e32341351658547ebbaee026b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant86d1a16b2b6b78e85c8b45e9ccdbc5383b9fcb1e32341351658547ebbaee026b.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `500406adf6f99576f675c0993f02cb54f422a446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
