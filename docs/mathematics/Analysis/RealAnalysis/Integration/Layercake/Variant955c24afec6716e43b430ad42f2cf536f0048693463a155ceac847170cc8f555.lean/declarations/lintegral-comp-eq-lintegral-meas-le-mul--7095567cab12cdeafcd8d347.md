# lintegral_comp_eq_lintegral_meas_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c9dc030-684d-7e19-3ae3-96cb1e25f26f",
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
  "slug": "lintegral-comp-eq-lintegral-meas-le-mul--7095567cab12cdeafcd8d347",
  "source": {
    "blob": "d19866ba90671e5d7abc7e000390ac59e90fdea8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 180,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7095567cab12cdeafcd8d347f51a8f0472015a3ee32a80056d41922aeda4fb2f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c9dc030-684d-7e19-3ae3-96cb1e25f26f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_comp_eq_lintegral_meas_le_mul (μ : Measure α) [SigmaFinite μ] (f_nn : 0 ≤ f)
    (f_mble : Measurable f) (g_intble : ∀ t > 0, IntervalIntegrable g volume 0 t)
    (g_nn : ∀ᵐ t ∂volume.restrict (Ioi 0), 0 ≤ g t) :
    (∫⁻ ω, ENNReal.ofReal (∫ t in (0)..f ω, g t) ∂μ) =
      ∫⁻ t in Ioi 0, μ {a : α | t ≤ f a} * ENNReal.ofReal (g t) := by
  have ex_G : ∃ G : ℝ → ℝ, Measurable G ∧ 0 ≤ G ∧ g =ᵐ[volume.restrict (Ioi 0)] G := by
    refine' AEMeasurable.exists_measurable_nonneg _ g_nn
    exact aemeasurable_Ioi_of_forall_Ioc fun t ht => (g_intble t ht).1.1.aemeasurable
  rcases ex_G with ⟨G, G_mble, G_nn, g_eq_G⟩
  have g_eq_G_on : ∀ t, g =ᵐ[volume.restrict (Ioc 0 t)] G := fun t =>
    ae_mono (Measure.restrict_mono Ioc_subset_Ioi_self le_rfl) g_eq_G
  have G_intble : ∀ t > 0, IntervalIntegrable G volume 0 t := by
    refine' fun t t_pos => ⟨(g_intble t t_pos).1.congr_fun_ae (g_eq_G_on t), _⟩
    rw [Ioc_eq_empty_of_le t_pos.lt.le]
    exact integrableOn_empty
  have eq₁ :
    (∫⁻ t in Ioi 0, μ {a : α | t ≤ f a} * ENNReal.ofReal (g t)) =
      ∫⁻ t in Ioi 0, μ {a : α | t ≤ f a} * ENNReal.ofReal (G t) := by
    apply lintegral_congr_ae
    filter_upwards [g_eq_G] with a ha
    rw [ha]
  have eq₂ : ∀ ω, (∫ t in (0)..f ω, g t) = ∫ t in (0)..f ω, G t := by
    refine' fun ω => intervalIntegral.integral_congr_ae _
    have fω_nn : 0 ≤ f ω := f_nn ω
    rw [uIoc_of_le fω_nn, ←
      ae_restrict_iff' (measurableSet_Ioc : MeasurableSet (Ioc (0 : ℝ) (f ω)))]
    exact g_eq_G_on (f ω)
  simp_rw [eq₁, eq₂]
  exact
    lintegral_comp_eq_lintegral_meas_le_mul_of_measurable μ f_nn f_mble G_intble G_mble
      fun t _ => G_nn t
#align measure_theory.lintegral_comp_eq_lintegral_meas_le_mul MeasureTheory.lintegral_comp_eq_lintegral_meas_le_mul

/-- The standard case of the layer cake formula / Cavalieri's principle / tail probability formula:

For a nonnegative function `f` on a sigma-finite measure space, the Lebesgue integral of `f` can
be written (roughly speaking) as: `∫⁻ f ∂μ = ∫⁻ t in (0).. ∞, μ {ω | f(ω) ≥ t}`.

See `lintegral_eq_lintegral_meas_lt` for a version with sets of the form `{ω | f(ω) > t}`
instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d19866ba90671e5d7abc7e000390ac59e90fdea8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
