# tendsto_mul_right_approximateUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16e3d6b2-17bd-5341-7e88-4663cfa28473",
  "kind": "lemma",
  "lexical_name": "tendsto_mul_right_approximateUnit",
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
  "slug": "tendsto-mul-right-approximateunit--8f1c3445339f312afb31e105",
  "source": {
    "blob": "ea918994fce91465b3822c97a0f2af0e641f63cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 276,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f1c3445339f312afb31e105e239291075e0b1807c2b03527d735abc30f1dcd1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16e3d6b2-17bd-5341-7e88-4663cfa28473`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma tendsto_mul_right_approximateUnit (m : A) :
    Tendsto (· * m) (approximateUnit A) (𝓝 m) := by
  refine tendsto_mul_right_of_forall_nonneg_tendsto (fun m hm₁ hm₂ ↦ ?_) m
  rw [(hasBasis_approximateUnit A).tendsto_iff nhds_basis_closedBall]
  intro ε hε
  lift ε to ℝ≥0 using hε.le
  rw [coe_pos] at hε
  refine ⟨cfcₙ (fun y : ℝ≥0 ↦ 1 - (1 + y)⁻¹) (ε⁻¹ ^ 2 • m),
    ⟨cfcₙ_nonneg_of_predicate, norm_cfcₙ_one_sub_one_add_inv_lt_one (ε⁻¹ ^ 2 • m)⟩, ?_⟩
  rintro x ⟨(hx₁ : _ ≤ x), hx₂⟩
  simp only [mem_closedBall, dist_eq_norm', zero_sub, norm_neg] at hx₂ ⊢
  rw [← coe_nnnorm, coe_le_coe]
  have hx₀ : 0 ≤ x := cfcₙ_nonneg_of_predicate.trans hx₁
  rw [← inr_le_inr_iff, nnreal_cfcₙ_eq_cfc_inr _ _ (by simp [tsub_self]), inr_smul] at hx₁
  rw [← norm_inr (𝕜 := ℂ)] at hm₂ hx₂
  rw [← inr_nonneg_iff] at hx₀ hm₁
  rw [← nnnorm_inr (𝕜 := ℂ), inr_sub, inr_mul]
  generalize (x : A⁺¹) = x, (m : A⁺¹) = m at *
  set g : ℝ≥0 → ℝ≥0 := fun y ↦ 1 - (1 + y)⁻¹
  have hg : Continuous g := by
    rw [← continuousOn_univ]
    fun_prop (disch := intro _ _; positivity)
  have hg' : ContinuousOn (fun y ↦ (1 + ε⁻¹ ^ 2 • y)⁻¹) (spectrum ℝ≥0 m) :=
    ContinuousOn.inv₀ (by fun_prop) fun _ _ ↦ by positivity
  have hx : x ∈ Set.Icc 0 1 := mem_Icc_iff_norm_le_one.mpr ⟨hx₀, hx₂⟩
  have hx' : x ∈ Set.Icc _ 1 := ⟨hx₁, hx.2⟩
  refine nnnorm_sub_mul_self_le m cfc_nonneg_of_predicate hx' ?_
  suffices star m * (1 - cfc g (ε⁻¹ ^ 2 • m)) * m =
      cfc (fun y : ℝ≥0 ↦ y * (1 + ε⁻¹ ^ 2 • y)⁻¹ * y) m by
    rw [this]
    refine nnnorm_cfc_nnreal_le fun y hy ↦ ?_
    calc
      y * (1 + ε⁻¹ ^ 2 • y)⁻¹ * y = y * ε ^ 2 * (y / (ε ^ 2 + y)) := by simp [field]
      _ ≤ ε ^ 2 * 1 := by
        gcongr
        · apply mul_le_of_le_one_left'
          have hm' := hm₂.le
          rw [norm_le_one_iff_of_nonneg m hm₁, ← cfc_id' ℝ≥0 m, ← cfc_one (R := ℝ≥0) m,
            cfc_nnreal_le_iff _ _ _ (QuasispectrumRestricts.nnreal_of_nonneg hm₁)] at hm'
          exact hm' y hy
        · exact div_le_one (by positivity) |>.mpr le_add_self
      _ = ε ^ 2 := mul_one _
  rw [cfc_mul _ _ m (continuousOn_id' _ |>.fun_mul hg') (continuousOn_id' _),
    cfc_mul _ _ m (continuousOn_id' _) hg', cfc_id' .., hm₁.star_eq]
  congr
  rw [← cfc_one (R := ℝ≥0) m, ← cfc_comp_smul _ _ _ hg.continuousOn hm₁,
    ← cfc_tsub _ _ m (by simp [g]) hm₁ (by fun_prop) (Continuous.continuousOn <| by fun_prop)]
  congr! 1 with y _
  simp [g, tsub_tsub_cancel_of_le]

/-- The filter `CStarAlgebra.approximateUnit` generated by the sections
`{x | a ≤ x} ∩ closedBall 0 1` for `0 ≤ a` forms an increasing approximate unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea918994fce91465b3822c97a0f2af0e641f63cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
