# tendsto_card_le_div''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8f72e89-0445-3447-b8e9-e3e6c0c4306e",
  "kind": "theorem",
  "lexical_name": "tendsto_card_le_div''",
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
  "slug": "tendsto-card-le-div--ed11c3df79fd92802bffbc29",
  "source": {
    "blob": "2ea7846d49f9b471740e48867069f6a6e43c1cc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 268,
    "path": "GRWTSK/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed11c3df79fd92802bffbc29181be37aff41701a6482101545efb5165d8185c4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8f72e89-0445-3447-b8e9-e3e6c0c4306e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_card_le_div'' [FiniteDimensional ℝ E] [MeasurableSpace E] [BorelSpace E]
    [Nonempty ι] {X : Set E} (hX : ∀ ⦃x⦄ ⦃r : ℝ⦄, x ∈ X → 0 < r → r • x ∈ X)
    {F : E → ℝ} (h₁ : ∀ x ⦃r : ℝ⦄, 0 ≤ r → F (r • x) = r ^ card ι * (F x))
    (h₂ : IsBounded {x ∈ X | F x ≤ 1}) (h₃ : MeasurableSet {x ∈ X | F x ≤ 1})
    (h₄ : volume (frontier ((b.ofZLatticeBasis ℝ L).equivFun '' {x | x ∈ X ∧ F x ≤ 1})) = 0) :
    Tendsto (fun c : ℝ ↦
      Nat.card ({x ∈ X | F x ≤ c} ∩ L : Set E) / (c : ℝ))
        atTop (𝓝 (volume.real ((b.ofZLatticeBasis ℝ).equivFun '' {x ∈ X | F x ≤ 1}))) := by
  refine Tendsto.congr' ?_ <| (tendsto_card_div_pow_atTop_volume'
      ((b.ofZLatticeBasis ℝ).equivFun '' {x ∈ X | F x ≤ 1}) ?_ ?_ h₄ fun x y hx hy ↦ ?_).comp
        (tendsto_rpow_atTop <| inv_pos.mpr
          (Nat.cast_pos.mpr card_pos) : Tendsto (fun x ↦ x ^ (card ι : ℝ)⁻¹) atTop atTop)
  · filter_upwards [eventually_gt_atTop 0] with c hc
    have aux₁ : (card ι : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr card_ne_zero
    have aux₂ : 0 < c ^ (card ι : ℝ)⁻¹ := Real.rpow_pos_of_pos hc _
    have aux₃ : (c ^ (card ι : ℝ)⁻¹)⁻¹ ≠ 0 := inv_ne_zero aux₂.ne'
    have aux₄ : c ^ (-(card ι : ℝ)⁻¹) ≠ 0 := (Real.rpow_pos_of_pos hc _).ne'
    obtain ⟨hc₁, hc₂⟩ := lt_iff_le_and_ne.mp hc
    rw [Function.comp_apply, ← Real.rpow_natCast, Real.rpow_inv_rpow hc₁ aux₁, eq_comm]
    congr
    refine Nat.card_congr <| Equiv.subtypeEquiv ((b.ofZLatticeBasis ℝ).equivFun.toEquiv.trans
          (Equiv.smulRight aux₄)) fun _ ↦ ?_
    rw [Set.mem_inter_iff, Set.mem_inter_iff, Equiv.trans_apply, LinearEquiv.coe_toEquiv,
      Equiv.smulRight_apply, Real.rpow_neg hc₁, Set.smul_mem_smul_set_iff₀ aux₃,
      ← Set.mem_smul_set_iff_inv_smul_mem₀ aux₂.ne', ← image_smul_set,
      tendsto_card_le_div''_aux hX h₁ aux₂, ← Real.rpow_natCast, ← Real.rpow_mul hc₁,
      inv_mul_cancel₀ aux₁, Real.rpow_one]
    simp_rw [SetLike.mem_coe, Set.mem_image, EmbeddingLike.apply_eq_iff_eq, exists_eq_right,
      and_congr_right_iff, ← b.ofZLatticeBasis_span ℝ, Basis.mem_span_iff_repr_mem,
      Pi.basisFun_repr, Basis.equivFun_apply, implies_true]
  · rw [← NormedSpace.isVonNBounded_iff ℝ] at h₂ ⊢
    exact Bornology.IsVonNBounded.image h₂ ((b.ofZLatticeBasis ℝ).equivFunL : E →L[ℝ] ι → ℝ)
  · exact (b.ofZLatticeBasis ℝ).equivFunL.toHomeomorph.toMeasurableEquiv.measurableSet_image.mpr h₃
  · simp_rw [← image_smul_set]
    apply Set.image_mono
    rw [tendsto_card_le_div''_aux hX h₁ hx,
      tendsto_card_le_div''_aux hX h₁ (lt_of_lt_of_le hx hy)]
    exact fun a ⟨ha₁, ha₂⟩ ↦ ⟨ha₁, le_trans ha₂ <| pow_le_pow_left₀ (le_of_lt hx) hy _⟩

end General

section Pi

open Filter Fintype Pointwise Bornology

open scoped Topology

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ea7846d49f9b471740e48867069f6a6e43c1cc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
