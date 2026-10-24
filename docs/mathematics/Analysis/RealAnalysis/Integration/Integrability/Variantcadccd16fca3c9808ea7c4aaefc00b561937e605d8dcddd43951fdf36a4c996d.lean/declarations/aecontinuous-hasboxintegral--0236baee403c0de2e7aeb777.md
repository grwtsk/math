# AEContinuous.hasBoxIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c2cceab-f115-a7e9-fa85-f9a66d28bb3d",
  "kind": "theorem",
  "lexical_name": "AEContinuous.hasBoxIntegral",
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
  "slug": "aecontinuous-hasboxintegral--0236baee403c0de2e7aeb777",
  "source": {
    "blob": "b73046230ca8be0ac9dc15f8496fada5287e3e6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 322,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0236baee403c0de2e7aeb777230e5a227ea47829c4580fb5df44792dbc02afbd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c2cceab-f115-a7e9-fa85-f9a66d28bb3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AEContinuous.hasBoxIntegral [CompleteSpace E] {f : (ι → ℝ) → E} (μ : Measure (ι → ℝ))
    [IsLocallyFiniteMeasure μ] {I : Box ι} (hb : ∃ C : ℝ, ∀ x ∈ Box.Icc I, ‖f x‖ ≤ C)
    (hc : ∀ᵐ x ∂μ, ContinuousAt f x) (l : IntegrationParams) :
    HasIntegral.{u, v, v} I l f μ.toBoxAdditive.toSMul (∫ x in I, f x ∂μ) := by
  obtain ⟨y, hy⟩ := integrable_of_bounded_and_ae_continuous l hb μ hc
  convert hy
  refine HasIntegral.unique (IntegrableOn.hasBoxIntegral ?_ ⊥ rfl) (HasIntegral.mono hy bot_le)
  constructor
  · let v := {x : (ι → ℝ) | ContinuousAt f x}
    have : AEStronglyMeasurable f (μ.restrict v) :=
      (continuousOn_of_forall_continuousAt fun _ h ↦ h).aestronglyMeasurable
      (measurableSet_of_continuousAt f)
    refine this.mono_measure (Measure.le_iff.2 fun s hs ↦ ?_)
    repeat rw [μ.restrict_apply hs]
    apply le_of_le_of_eq <| μ.mono s.inter_subset_left
    refine measure_eq_measure_of_null_diff s.inter_subset_left ?_ |>.symm
    rw [diff_self_inter, Set.diff_eq]
    refine (le_antisymm (zero_le (μ (s ∩ vᶜ))) ?_).symm
    exact le_trans (μ.mono s.inter_subset_right) (nonpos_iff_eq_zero.2 hc)
  · have : IsFiniteMeasure (μ.restrict (Box.Icc I)) :=
      { measure_univ_lt_top := by simp [I.isCompact_Icc.measure_lt_top (μ := μ)] }
    have : IsFiniteMeasure (μ.restrict I) :=
      isFiniteMeasure_of_le (μ.restrict (Box.Icc I))
                            (μ.restrict_mono Box.coe_subset_Icc (le_refl μ))
    obtain ⟨C, hC⟩ := hb
    refine hasFiniteIntegral_of_bounded (C := C) (Filter.eventually_iff_exists_mem.2 ?_)
    use I, self_mem_ae_restrict I.measurableSet_coe, fun y hy ↦ hC y (I.coe_subset_Icc hy)

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b73046230ca8be0ac9dc15f8496fada5287e3e6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
