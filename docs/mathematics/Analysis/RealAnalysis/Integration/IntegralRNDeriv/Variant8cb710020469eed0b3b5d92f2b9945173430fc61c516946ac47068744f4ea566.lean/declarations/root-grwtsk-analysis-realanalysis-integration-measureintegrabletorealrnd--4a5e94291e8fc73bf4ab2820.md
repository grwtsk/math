# _root_.GRWTSK.Analysis.RealAnalysis.Integration.MeasureIntegrableToRealRnDeriv.Variant15ddd59666715b0436ffc293a7de4dacafc5c562ee1e2fecc4c10445c49f3e65.ConvexOn.apply_rnDeriv_ae_le_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c87a246b-73c3-1013-7560-5306e032ce1a",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.Integration.MeasureIntegrableToRealRnDeriv.Variant15ddd59666715b0436ffc293a7de4dacafc5c562ee1e2fecc4c10445c49f3e65.ConvexOn.apply_rnDeriv_ae_le_integral",
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
  "slug": "root-grwtsk-analysis-realanalysis-integration-measureintegrabletorealrnd--4a5e94291e8fc73bf4ab2820",
  "source": {
    "blob": "7b129e89a411f030194a5730fe605619a74d9887",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 137,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a5e94291e8fc73bf4ab28206ef713c155bd62b1c0e393179dff1a8d7ecd9bad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c87a246b-73c3-1013-7560-5306e032ce1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.RealAnalysis.Integration.MeasureIntegrableToRealRnDeriv.Variant15ddd59666715b0436ffc293a7de4dacafc5c562ee1e2fecc4c10445c49f3e65.ConvexOn.apply_rnDeriv_ae_le_integral (hf : StronglyMeasurable f)
    (hf_cvx : ConvexOn ℝ (Ici 0) f) (hf_cont_at : ContinuousWithinAt f (Ici 0) 0)
    (h_int : Integrable (fun p ↦ f ((μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ η) p).toReal) (ν ⊗ₘ η))
    (hκη : μ ⊗ₘ κ ≪ μ ⊗ₘ η) :
    (fun a ↦ f (μ.rnDeriv ν a).toReal)
      ≤ᵐ[ν] fun a ↦ ∫ b, f ((μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ η) (a, b)).toReal ∂(η a) := by
  have hf_cont : ContinuousOn f (Ici 0) := hf_cvx.continuousOn_Ici hf_cont_at
  have h_lt_top : ∀ᵐ a ∂ν, ∀ᵐ b ∂η a, (μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ η) (a, b) < ∞ :=
    Measure.ae_ae_of_ae_compProd <| (μ ⊗ₘ κ).rnDeriv_lt_top (ν ⊗ₘ η)
  have h_integrable : Integrable (fun x ↦ ((μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ η) x).toReal) (ν ⊗ₘ η) :=
    Measure.integrable_toReal_rnDeriv
  rw [Measure.integrable_compProd_iff] at h_integrable h_int
  rotate_left
  · exact StronglyMeasurable.aestronglyMeasurable (by fun_prop)
  · exact StronglyMeasurable.aestronglyMeasurable (by fun_prop)
  have h_ae1 : ∀ᵐ a ∂ν,
      μ.rnDeriv ν a * ∫⁻ b, (μ ⊗ₘ κ).rnDeriv (μ ⊗ₘ η) (a, b) ∂(η a) = μ.rnDeriv ν a := by
    filter_upwards [Measure.ae_rnDeriv_ne_zero_imp_of_ae _ (lintegral_rnDeriv_compProd hκη)]
      with a ha
    by_cases h0 : μ.rnDeriv ν a = 0
    · simp [h0]
    · simp [ha h0]
  have h_ae2 : ∀ᵐ a ∂ν, ∀ᵐ b ∂(η a), μ.rnDeriv ν a * (μ ⊗ₘ κ).rnDeriv (μ ⊗ₘ η) (a, b) =
      (μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ η) (a, b) := by
    have h_compProd : (fun p ↦ μ.rnDeriv ν p.1 * (μ ⊗ₘ κ).rnDeriv (μ ⊗ₘ η) p) =ᵐ[ν ⊗ₘ η]
        (μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ η) := (rnDeriv_compProd hκη ν).symm
    rwa [Filter.EventuallyEq, Measure.ae_compProd_iff] at h_compProd
    simp only [measurableSet_setOfPred]
    fun_prop
  filter_upwards [h_ae1, h_ae2, h_lt_top, h_integrable.1, h_int.1]
    with a h_eq_one h_mul_eq h_lt_top h_int' h_int
  calc f (μ.rnDeriv ν a).toReal
    = f (μ.rnDeriv ν a * ∫⁻ b, (μ ⊗ₘ κ).rnDeriv (μ ⊗ₘ η) (a, b) ∂(η a)).toReal := by simp [h_eq_one]
  _ = f (∫⁻ b, (μ.rnDeriv ν a) * (μ ⊗ₘ κ).rnDeriv (μ ⊗ₘ η) (a, b) ∂(η a)).toReal := by
    rw [lintegral_const_mul _ (by fun_prop)]
  _ = f (∫⁻ b, (μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ η) (a, b) ∂(η a)).toReal := by
    congr 2
    refine lintegral_congr_ae ?_
    filter_upwards [h_mul_eq] with b hb using hb
  _ = f (∫ b, ((μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ η) (a, b)).toReal ∂(η a)) := by
    rw [integral_toReal (by fun_prop) h_lt_top]
  _ ≤ ∫ b, f ((μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ η) (a, b)).toReal ∂(η a) := by
    rw [← average_eq_integral, ← average_eq_integral]
    exact ConvexOn.map_average_le hf_cvx hf_cont isClosed_Ici (by simp) h_int' h_int

/-- For `f` a convex function on `Ici 0`, if `f ((μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ η) (a, b))` is integrable,
then `f (μ.rnDeriv ν a)` is integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b129e89a411f030194a5730fe605619a74d9887` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
