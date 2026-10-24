# continuousAt_parametric_primitive_of_dominated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44cee00211d413e61250a77d2d7beb5a82a518f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 387,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb94946e-bbff-5cd5-552a-5624e11759bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87aaea3d-d53f-5dd9-c242-987d0e826c9d",
  "kind": "theorem",
  "lexical_name": "continuousAt_parametric_primitive_of_dominated",
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
  "slug": "continuousat-parametric-primitive-of-dominated--2ec8e73e6dbab2283dba7db3",
  "source": {
    "blob": "44cee00211d413e61250a77d2d7beb5a82a518f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 387,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ec8e73e6dbab2283dba7db3a1015f7d7176a5709c5572dad3623e41b55e1e3f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87aaea3d-d53f-5dd9-c242-987d0e826c9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_parametric_primitive_of_dominated [FirstCountableTopology X]
    {F : X → ℝ → E} (bound : ℝ → ℝ) (a b : ℝ)
    {a₀ b₀ : ℝ} {x₀ : X} (hF_meas : ∀ x, AEStronglyMeasurable (F x) (μ.restrict <| Ι a b))
    (h_bound : ∀ᶠ x in 𝓝 x₀, ∀ᵐ t ∂μ.restrict <| Ι a b, ‖F x t‖ ≤ bound t)
    (bound_integrable : IntervalIntegrable bound μ a b)
    (h_cont : ∀ᵐ t ∂μ.restrict <| Ι a b, ContinuousAt (fun x ↦ F x t) x₀) (ha₀ : a₀ ∈ Ioo a b)
    (hb₀ : b₀ ∈ Ioo a b) (hμb₀ : μ {b₀} = 0) :
    ContinuousAt (fun p : X × ℝ ↦ ∫ t : ℝ in a₀..p.2, F p.1 t ∂μ) (x₀, b₀) := by
  have hsub : ∀ {a₀ b₀}, a₀ ∈ Ioo a b → b₀ ∈ Ioo a b → Ι a₀ b₀ ⊆ Ι a b := fun ha₀ hb₀ ↦
    (ordConnected_Ioo.uIoc_subset ha₀ hb₀).trans (Ioo_subset_Ioc_self.trans Ioc_subset_uIoc)
  have Ioo_nhds : Ioo a b ∈ 𝓝 b₀ := Ioo_mem_nhds hb₀.1 hb₀.2
  have Icc_nhds : Icc a b ∈ 𝓝 b₀ := Icc_mem_nhds hb₀.1 hb₀.2
  have hx₀ : ∀ᵐ t : ℝ ∂μ.restrict (Ι a b), ‖F x₀ t‖ ≤ bound t := h_bound.self_of_nhds
  have : ∀ᶠ p : X × ℝ in 𝓝 (x₀, b₀),
      ∫ s in a₀..p.2, F p.1 s ∂μ =
        ∫ s in a₀..b₀, F p.1 s ∂μ + ∫ s in b₀..p.2, F x₀ s ∂μ +
          ∫ s in b₀..p.2, F p.1 s - F x₀ s ∂μ := by
    rw [nhds_prod_eq]
    refine (h_bound.prod_mk Ioo_nhds).mono ?_
    rintro ⟨x, t⟩ ⟨hx : ∀ᵐ t : ℝ ∂μ.restrict (Ι a b), ‖F x t‖ ≤ bound t, ht : t ∈ Ioo a b⟩
    dsimp
    have hiF : ∀ {x a₀ b₀},
        (∀ᵐ t : ℝ ∂μ.restrict (Ι a b), ‖F x t‖ ≤ bound t) → a₀ ∈ Ioo a b → b₀ ∈ Ioo a b →
          IntervalIntegrable (F x) μ a₀ b₀ := fun {x a₀ b₀} hx ha₀ hb₀ ↦
      (bound_integrable.mono_set_ae <| Eventually.of_forall <| hsub ha₀ hb₀).mono_fun'
        ((hF_meas x).mono_set <| hsub ha₀ hb₀)
        (ae_restrict_of_ae_restrict_of_subset (hsub ha₀ hb₀) hx)
    rw [intervalIntegral.integral_sub, add_assoc, add_sub_cancel,
      intervalIntegral.integral_add_adjacent_intervals]
    · exact hiF hx ha₀ hb₀
    · exact hiF hx hb₀ ht
    · exact hiF hx hb₀ ht
    · exact hiF hx₀ hb₀ ht
  rw [continuousAt_congr this]; clear this
  refine (ContinuousAt.add ?_ ?_).add ?_
  · exact (intervalIntegral.continuousAt_of_dominated_interval
        (Eventually.of_forall fun x ↦ (hF_meas x).mono_set <| hsub ha₀ hb₀)
          (h_bound.mono fun x hx ↦
            ae_imp_of_ae_restrict <| ae_restrict_of_ae_restrict_of_subset (hsub ha₀ hb₀) hx)
          (bound_integrable.mono_set_ae <| Eventually.of_forall <| hsub ha₀ hb₀) <|
          ae_imp_of_ae_restrict <| ae_restrict_of_ae_restrict_of_subset (hsub ha₀ hb₀) h_cont).fst'
  · refine (?_ : ContinuousAt (fun t ↦ ∫ s in b₀..t, F x₀ s ∂μ) b₀).snd'
    apply ContinuousWithinAt.continuousAt _ (Icc_mem_nhds hb₀.1 hb₀.2)
    apply intervalIntegral.continuousWithinAt_primitive hμb₀
    rw [min_eq_right hb₀.1.le, max_eq_right hb₀.2.le]
    exact bound_integrable.mono_fun' (hF_meas x₀) hx₀
  · suffices Tendsto (fun x : X × ℝ ↦ ∫ s in b₀..x.2, F x.1 s - F x₀ s ∂μ) (𝓝 (x₀, b₀)) (𝓝 0) by
      simpa [ContinuousAt]
    have : ∀ᶠ p : X × ℝ in 𝓝 (x₀, b₀),
        ‖∫ s in b₀..p.2, F p.1 s - F x₀ s ∂μ‖ ≤ |∫ s in b₀..p.2, 2 * bound s ∂μ| := by
      rw [nhds_prod_eq]
      refine (h_bound.prod_mk Ioo_nhds).mono ?_
      rintro ⟨x, t⟩ ⟨hx : ∀ᵐ t ∂μ.restrict (Ι a b), ‖F x t‖ ≤ bound t, ht : t ∈ Ioo a b⟩
      have H : ∀ᵐ t : ℝ ∂μ.restrict (Ι b₀ t), ‖F x t - F x₀ t‖ ≤ 2 * bound t := by
        apply (ae_restrict_of_ae_restrict_of_subset (hsub hb₀ ht) (hx.and hx₀)).mono
        rintro s ⟨hs₁, hs₂⟩
        calc
          ‖F x s - F x₀ s‖ ≤ ‖F x s‖ + ‖F x₀ s‖ := norm_sub_le _ _
          _ ≤ 2 * bound s := by linarith only [hs₁, hs₂]
      exact intervalIntegral.norm_integral_le_abs_of_norm_le H
        ((bound_integrable.mono_set' <| hsub hb₀ ht).const_mul 2)
    apply squeeze_zero_norm' this
    have : Tendsto (fun t ↦ ∫ s in b₀..t, 2 * bound s ∂μ) (𝓝 b₀) (𝓝 0) := by
      suffices ContinuousAt (fun t ↦ ∫ s in b₀..t, 2 * bound s ∂μ) b₀ by
        simpa [ContinuousAt] using this
      apply ContinuousWithinAt.continuousAt _ Icc_nhds
      apply intervalIntegral.continuousWithinAt_primitive hμb₀
      apply IntervalIntegrable.const_mul
      apply bound_integrable.mono_set'
      rw [min_eq_right hb₀.1.le, max_eq_right hb₀.2.le]
    rw [nhds_prod_eq]
    exact (continuous_abs.tendsto' _ _ abs_zero).comp (this.comp tendsto_snd)

variable [NoAtoms μ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44cee00211d413e61250a77d2d7beb5a82a518f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
