# tendsto_mul_right_approximateUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64f8b2c0-3259-40ae-981f-a8142e81953e",
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
  "slug": "tendsto-mul-right-approximateunit--f5f110e3b1343418d6a28dd3",
  "source": {
    "blob": "a7079e5c938c4b3f83afc3f8d2e98f25bc8623d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 242,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5f110e3b1343418d6a28dd3c4e95b5fd5df140a49e325abc6a44e567a0a2273",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64f8b2c0-3259-40ae-981f-a8142e81953e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–295.

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
  rw [← inr_le_iff _ _ (.of_nonneg cfcₙ_nonneg_of_predicate) (.of_nonneg hx₀),
    nnreal_cfcₙ_eq_cfc_inr _ _ (by simp [tsub_self]), inr_smul] at hx₁
  rw [← norm_inr (𝕜 := ℂ)] at hm₂ hx₂
  rw [← inr_nonneg_iff] at hx₀ hm₁
  rw [← nnnorm_inr (𝕜 := ℂ), inr_sub, inr_mul]
  generalize (x : A⁺¹) = x, (m : A⁺¹) = m at *
  set g : ℝ≥0 → ℝ≥0 := fun y ↦ 1 - (1 + y)⁻¹
  have hg : Continuous g := by
    rw [continuous_iff_continuousOn_univ]
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
    field_simp
    calc
      y * ε ^ 2 * y / (ε ^ 2 + y) ≤ ε ^ 2 * 1 := by
        rw [mul_div_assoc]
        gcongr
        · refine mul_le_of_le_one_left (zero_le _) ?_
          have hm' := hm₂.le
          rw [norm_le_one_iff_of_nonneg m hm₁, ← cfc_id' ℝ≥0 m, ← cfc_one (R := ℝ≥0) m,
            cfc_nnreal_le_iff _ _ _ (QuasispectrumRestricts.nnreal_of_nonneg hm₁)] at hm'
          exact hm' y hy
        · exact div_le_one (by positivity) |>.mpr le_add_self
      _ = ε ^ 2 := mul_one _
  rw [cfc_mul _ _ m (continuousOn_id' _ |>.mul hg') (continuousOn_id' _),
    cfc_mul _ _ m (continuousOn_id' _) hg', cfc_id' .., hm₁.star_eq]
  congr
  rw [← cfc_one (R := ℝ≥0) m, ← cfc_comp_smul _ _ _ hg.continuousOn hm₁,
    ← cfc_tsub _ _ m (by simp [g]) hm₁ (by fun_prop) (Continuous.continuousOn <| by fun_prop)]
  refine cfc_congr (fun y _ ↦ ?_)
  simp [g, tsub_tsub_cancel_of_le]

/-- The filter `CStarAlgebra.approximateUnit` generated by the sections
`{x | a ≤ x} ∩ closedBall 0 1` for `0 ≤ a` forms an increasing approximate unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7079e5c938c4b3f83afc3f8d2e98f25bc8623d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
