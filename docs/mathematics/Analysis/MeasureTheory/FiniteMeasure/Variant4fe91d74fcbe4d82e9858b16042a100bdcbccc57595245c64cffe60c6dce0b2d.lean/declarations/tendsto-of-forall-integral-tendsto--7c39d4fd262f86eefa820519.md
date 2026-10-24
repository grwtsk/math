# tendsto_of_forall_integral_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5bf95db-5275-8db0-b658-a283b8aade8b",
  "kind": "theorem",
  "lexical_name": "tendsto_of_forall_integral_tendsto",
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
  "slug": "tendsto-of-forall-integral-tendsto--7c39d4fd262f86eefa820519",
  "source": {
    "blob": "f5405a22a971e968ce8d9812ee76cf9654c04e3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 734,
    "line": 706,
    "path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant4fe91d74fcbe4d82e9858b16042a100bdcbccc57595245c64cffe60c6dce0b2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c39d4fd262f86eefa82051945fbf0e840b2e2fa4a93572ad26507dbd5e28f8c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FiniteMeasure/Variant4fe91d74fcbe4d82e9858b16042a100bdcbccc57595245c64cffe60c6dce0b2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5bf95db-5275-8db0-b658-a283b8aade8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 706–734.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_of_forall_integral_tendsto {γ : Type*} {F : Filter γ} {μs : γ → FiniteMeasure Ω}
    {μ : FiniteMeasure Ω}
    (h :
      ∀ f : Ω →ᵇ ℝ,
        Tendsto (fun i => ∫ x, f x ∂(μs i : Measure Ω)) F (𝓝 (∫ x, f x ∂(μ : Measure Ω)))) :
    Tendsto μs F (𝓝 μ) := by
  apply (@tendsto_iff_forall_lintegral_tendsto Ω _ _ _ γ F μs μ).mpr
  intro f
  have key :=
    @ENNReal.tendsto_toReal_iff _ F _
      (fun i => (lintegral_lt_top_of_boundedContinuous_to_nnreal (μs i : Measure Ω) f).ne) _
      (lintegral_lt_top_of_boundedContinuous_to_nnreal (μ : Measure Ω) f).ne
  simp only [ENNReal.ofReal_coe_nnreal] at key
  apply key.mp
  have lip : LipschitzWith 1 ((↑) : ℝ≥0 → ℝ) := isometry_subtype_coe.lipschitz
  set f₀ := BoundedContinuousFunction.comp _ lip f with _def_f₀
  have f₀_eq : ⇑f₀ = ((↑) : ℝ≥0 → ℝ) ∘ ⇑f := by rfl
  have f₀_nn : 0 ≤ ⇑f₀ := fun _ => by
    simp only [f₀_eq, Pi.zero_apply, Function.comp_apply, NNReal.zero_le_coe]
  have f₀_ae_nn : 0 ≤ᵐ[(μ : Measure Ω)] ⇑f₀ := eventually_of_forall f₀_nn
  have f₀_ae_nns : ∀ i, 0 ≤ᵐ[(μs i : Measure Ω)] ⇑f₀ := fun i => eventually_of_forall f₀_nn
  have aux :=
    integral_eq_lintegral_of_nonneg_ae f₀_ae_nn f₀.continuous.measurable.aestronglyMeasurable
  have auxs := fun i =>
    integral_eq_lintegral_of_nonneg_ae (f₀_ae_nns i) f₀.continuous.measurable.aestronglyMeasurable
  simp_rw [f₀_eq, Function.comp_apply, ENNReal.ofReal_coe_nnreal] at aux auxs
  simpa only [← aux, ← auxs] using h f₀
#align measure_theory.finite_measure.tendsto_of_forall_integral_tendsto MeasureTheory.FiniteMeasure.tendsto_of_forall_integral_tendsto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FiniteMeasure/Variant4fe91d74fcbe4d82e9858b16042a100bdcbccc57595245c64cffe60c6dce0b2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant4fe91d74fcbe4d82e9858b16042a100bdcbccc57595245c64cffe60c6dce0b2d.lean#L706).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5405a22a971e968ce8d9812ee76cf9654c04e3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
