# lintegral_comp_eq_lintegral_meas_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:385a9d47-cf4e-71a1-6097-161c5110daf4",
  "kind": "theorem",
  "lexical_name": "lintegral_comp_eq_lintegral_meas_le_mul",
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
  "slug": "lintegral-comp-eq-lintegral-meas-le-mul--6a0efb5c3e39ec1263aa4a5b",
  "source": {
    "blob": "7f7df4ecfb474def3681bb622071838acc047db3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 399,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a0efb5c3e39ec1263aa4a5bbb48704bcef4ae2b4778df8b92c1db43c382dce1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:385a9d47-cf4e-71a1-6097-161c5110daf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_comp_eq_lintegral_meas_le_mul (μ : Measure α) (f_nn : 0 ≤ᵐ[μ] f)
    (f_mble : AEMeasurable f μ) (g_intble : ∀ t > 0, IntervalIntegrable g volume 0 t)
    (g_nn : ∀ᵐ t ∂volume.restrict (Ioi 0), 0 ≤ g t) :
    ∫⁻ ω, ENNReal.ofReal (∫ t in (0)..f ω, g t) ∂μ =
      ∫⁻ t in Ioi 0, μ {a : α | t ≤ f a} * ENNReal.ofReal (g t) := by
  obtain ⟨G, G_mble, G_nn, g_eq_G⟩ : ∃ G : ℝ → ℝ, Measurable G ∧ 0 ≤ G
      ∧ g =ᵐ[volume.restrict (Ioi 0)] G := by
    refine AEMeasurable.exists_measurable_nonneg ?_ g_nn
    exact aemeasurable_Ioi_of_forall_Ioc fun t ht => (g_intble t ht).1.1.aemeasurable
  have g_eq_G_on : ∀ t, g =ᵐ[volume.restrict (Ioc 0 t)] G := fun t =>
    ae_mono (Measure.restrict_mono Ioc_subset_Ioi_self le_rfl) g_eq_G
  have G_intble : ∀ t > 0, IntervalIntegrable G volume 0 t := by
    refine fun t t_pos => ⟨(g_intble t t_pos).1.congr_fun_ae (g_eq_G_on t), ?_⟩
    rw [Ioc_eq_empty_of_le t_pos.lt.le]
    exact integrableOn_empty
  obtain ⟨F, F_mble, F_nn, f_eq_F⟩ : ∃ F : α → ℝ, Measurable F ∧ 0 ≤ F ∧ f =ᵐ[μ] F := by
    refine ⟨fun ω ↦ max (f_mble.mk f ω) 0, f_mble.measurable_mk.max measurable_const,
        fun ω ↦ le_max_right _ _, ?_⟩
    filter_upwards [f_mble.ae_eq_mk, f_nn] with ω hω h'ω
    rw [← hω]
    exact (max_eq_left h'ω).symm
  have eq₁ :
    ∫⁻ t in Ioi 0, μ {a : α | t ≤ f a} * ENNReal.ofReal (g t) =
      ∫⁻ t in Ioi 0, μ {a : α | t ≤ F a} * ENNReal.ofReal (G t) := by
    apply lintegral_congr_ae
    filter_upwards [g_eq_G] with t ht
    rw [ht]
    congr 1
    apply measure_congr
    filter_upwards [f_eq_F] with a ha using by simp [setOf, ha]
  have eq₂ : ∀ᵐ ω ∂μ,
      ENNReal.ofReal (∫ t in (0)..f ω, g t) = ENNReal.ofReal (∫ t in (0)..F ω, G t) := by
    filter_upwards [f_eq_F] with ω fω_nn
    rw [fω_nn]
    congr 1
    refine intervalIntegral.integral_congr_ae ?_
    have fω_nn : 0 ≤ F ω := F_nn ω
    rw [uIoc_of_le fω_nn, ←
      ae_restrict_iff' (measurableSet_Ioc : MeasurableSet (Ioc (0 : ℝ) (F ω)))]
    exact g_eq_G_on (F ω)
  simp_rw [lintegral_congr_ae eq₂, eq₁]
  exact lintegral_comp_eq_lintegral_meas_le_mul_of_measurable μ F_nn F_mble
          G_intble G_mble (fun t _ => G_nn t)

/-- The standard case of the layer cake formula / Cavalieri's principle / tail probability formula:

For a nonnegative function `f` on a measure space, the Lebesgue integral of `f` can
be written (roughly speaking) as: `∫⁻ f ∂μ = ∫⁻ t in 0..∞, μ {ω | f(ω) ≥ t}`.

See `MeasureTheory.lintegral_eq_lintegral_meas_lt` for a version with sets of the form
`{ω | f(ω) > t}` instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f7df4ecfb474def3681bb622071838acc047db3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
