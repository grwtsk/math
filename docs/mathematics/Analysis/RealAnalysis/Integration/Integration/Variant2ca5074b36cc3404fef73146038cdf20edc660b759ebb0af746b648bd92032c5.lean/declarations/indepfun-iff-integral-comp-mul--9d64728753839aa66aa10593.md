# indepFun_iff_integral_comp_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21997199-8d65-3b61-cf3c-8c7d81f3b157",
  "kind": "theorem",
  "lexical_name": "indepFun_iff_integral_comp_mul",
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
  "slug": "indepfun-iff-integral-comp-mul--9d64728753839aa66aa10593",
  "source": {
    "blob": "5edd8198d106bc7fd22755b47176bd2b6c14f355",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 313,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d64728753839aa66aa105930eecc9325d7fb27d3154a8bd177f36e35ad932a3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21997199-8d65-3b61-cf3c-8c7d81f3b157`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indepFun_iff_integral_comp_mul [IsFiniteMeasure μ] {β β' : Type*} {mβ : MeasurableSpace β}
    {mβ' : MeasurableSpace β'} {f : Ω → β} {g : Ω → β'} {hfm : Measurable f} {hgm : Measurable g} :
    IndepFun f g μ ↔ ∀ {φ : β → ℝ} {ψ : β' → ℝ}, Measurable φ → Measurable ψ →
      Integrable (φ ∘ f) μ → Integrable (ψ ∘ g) μ →
        integral μ (φ ∘ f * ψ ∘ g) = integral μ (φ ∘ f) * integral μ (ψ ∘ g) := by
  refine' ⟨fun hfg _ _ hφ hψ => IndepFun.integral_mul_of_integrable (hfg.comp hφ hψ), _⟩
  rw [IndepFun_iff]
  rintro h _ _ ⟨A, hA, rfl⟩ ⟨B, hB, rfl⟩
  specialize
    h (measurable_one.indicator hA) (measurable_one.indicator hB)
      ((integrable_const 1).indicator (hfm.comp measurable_id hA))
      ((integrable_const 1).indicator (hgm.comp measurable_id hB))
  rwa [← ENNReal.toReal_eq_toReal (measure_ne_top μ _), ENNReal.toReal_mul, ←
    integral_indicator_one ((hfm hA).inter (hgm hB)), ← integral_indicator_one (hfm hA), ←
    integral_indicator_one (hgm hB), Set.inter_indicator_one]
  exact ENNReal.mul_ne_top (measure_ne_top μ _) (measure_ne_top μ _)
#align probability_theory.indep_fun_iff_integral_comp_mul ProbabilityTheory.indepFun_iff_integral_comp_mul

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5edd8198d106bc7fd22755b47176bd2b6c14f355` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
