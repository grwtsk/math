# tendsto_lintegral_norm_of_dominated_convergence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59134423-d3b4-0382-c9b3-5162b9cd1f7c",
  "kind": "theorem",
  "lexical_name": "tendsto_lintegral_norm_of_dominated_convergence",
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
  "slug": "tendsto-lintegral-norm-of-dominated-convergence--0084a79af460b94f06875f23",
  "source": {
    "blob": "1d1a0dd67b669301e53b9eb8caba82d6118708d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 386,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variant03115f747c2e8cea1cf39f3a56956244ea0717fe80731f81753f1ce580254336.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0084a79af460b94f06875f235339b6dd961b8c8e44e3e487e9d5d70b634ca536",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variant03115f747c2e8cea1cf39f3a56956244ea0717fe80731f81753f1ce580254336.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59134423-d3b4-0382-c9b3-5162b9cd1f7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_lintegral_norm_of_dominated_convergence
    (F_measurable : ∀ n, AEStronglyMeasurable (F n) μ)
    (bound_hasFiniteIntegral : HasFiniteIntegral bound μ)
    (h_bound : ∀ n, ∀ᵐ a ∂μ, ‖F n a‖ ≤ bound a)
    (h_lim : ∀ᵐ a ∂μ, Tendsto (fun n => F n a) atTop (𝓝 (f a))) :
    Tendsto (fun n => ∫⁻ a, ENNReal.ofReal ‖F n a - f a‖ ∂μ) atTop (𝓝 0) := by
  have f_measurable : AEStronglyMeasurable f μ :=
    aestronglyMeasurable_of_tendsto_ae _ F_measurable h_lim
  let b a := 2 * ENNReal.ofReal (bound a)
  /- `‖F n a‖ ≤ bound a` and `F n a --> f a` implies `‖f a‖ ≤ bound a`, and thus by the
    triangle inequality, have `‖F n a - f a‖ ≤ 2 * (bound a)`. -/
  have hb : ∀ n, ∀ᵐ a ∂μ, ENNReal.ofReal ‖F n a - f a‖ ≤ b a := by
    intro n
    filter_upwards [all_ae_norm_ofReal_F_le_bound h_bound n,
      ae_norm_ofReal_f_le_bound h_bound h_lim] with a h₁ h₂
    calc
      ENNReal.ofReal ‖F n a - f a‖ ≤ ENNReal.ofReal ‖F n a‖ + ENNReal.ofReal ‖f a‖ := by
        rw [← ENNReal.ofReal_add]
        · apply ofReal_le_ofReal
          apply norm_sub_le
        · exact norm_nonneg _
        · exact norm_nonneg _
      _ ≤ ENNReal.ofReal (bound a) + ENNReal.ofReal (bound a) := add_le_add h₁ h₂
      _ = b a := by rw [← two_mul]
  -- On the other hand, `F n a --> f a` implies that `‖F n a - f a‖ --> 0`
  have h : ∀ᵐ a ∂μ, Tendsto (fun n => ENNReal.ofReal ‖F n a - f a‖) atTop (𝓝 0) := by
    rw [← ENNReal.ofReal_zero]
    refine h_lim.mono fun a h => (continuous_ofReal.tendsto _).comp ?_
    rwa [← tendsto_iff_norm_sub_tendsto_zero]
  /- Therefore, by the dominated convergence theorem for nonnegative integration, have
    ` ∫ ‖f a - F n a‖ --> 0 ` -/
  suffices Tendsto (fun n => ∫⁻ a, ENNReal.ofReal ‖F n a - f a‖ ∂μ) atTop (𝓝 (∫⁻ _ : α, 0 ∂μ)) by
    rwa [lintegral_zero] at this
  -- Using the dominated convergence theorem.
  refine tendsto_lintegral_of_dominated_convergence' _ ?_ hb ?_ ?_
  -- Show `fun a => ‖f a - F n a‖` is almost everywhere measurable for all `n`
  · exact fun n =>
      measurable_ofReal.comp_aemeasurable ((F_measurable n).sub f_measurable).norm.aemeasurable
  -- Show `2 * bound` `HasFiniteIntegral`
  · rw [hasFiniteIntegral_iff_ofReal] at bound_hasFiniteIntegral
    · calc
        ∫⁻ a, b a ∂μ = 2 * ∫⁻ a, ENNReal.ofReal (bound a) ∂μ := by
          rw [lintegral_const_mul']
          finiteness
        _ ≠ ∞ := mul_ne_top coe_ne_top bound_hasFiniteIntegral.ne
    filter_upwards [h_bound 0] with _ h using le_trans (norm_nonneg _) h
  -- Show `‖f a - F n a‖ --> 0`
  · exact h

end DominatedConvergence

section PosPart

/-! Lemmas used for defining the positive part of an `L¹` function -/

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variant03115f747c2e8cea1cf39f3a56956244ea0717fe80731f81753f1ce580254336.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variant03115f747c2e8cea1cf39f3a56956244ea0717fe80731f81753f1ce580254336.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d1a0dd67b669301e53b9eb8caba82d6118708d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
