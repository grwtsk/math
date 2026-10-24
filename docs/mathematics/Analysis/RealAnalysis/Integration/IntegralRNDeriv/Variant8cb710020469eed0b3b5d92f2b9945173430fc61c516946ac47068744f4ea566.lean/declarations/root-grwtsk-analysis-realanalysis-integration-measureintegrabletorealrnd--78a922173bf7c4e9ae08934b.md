# _root_.GRWTSK.Analysis.RealAnalysis.Integration.MeasureIntegrableToRealRnDeriv.Variant15ddd59666715b0436ffc293a7de4dacafc5c562ee1e2fecc4c10445c49f3e65.ConvexOn.integrable_apply_rnDeriv_of_integrable_compProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc6f1a2a-9064-2d04-ada0-b65631220ce7",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.Integration.MeasureIntegrableToRealRnDeriv.Variant15ddd59666715b0436ffc293a7de4dacafc5c562ee1e2fecc4c10445c49f3e65.ConvexOn.integrable_apply_rnDeriv_of_integrable_compProd",
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
  "slug": "root-grwtsk-analysis-realanalysis-integration-measureintegrabletorealrnd--78a922173bf7c4e9ae08934b",
  "source": {
    "blob": "7b129e89a411f030194a5730fe605619a74d9887",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 184,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78a922173bf7c4e9ae08934b8c42a3fea36a292d197eedee4ecf191ce96bf895",
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

Occurrence: `result:bc6f1a2a-9064-2d04-ada0-b65631220ce7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.RealAnalysis.Integration.MeasureIntegrableToRealRnDeriv.Variant15ddd59666715b0436ffc293a7de4dacafc5c562ee1e2fecc4c10445c49f3e65.ConvexOn.integrable_apply_rnDeriv_of_integrable_compProd (hf : StronglyMeasurable f)
    (hf_cvx : ConvexOn ℝ (Ici 0) f) (hf_cont_at : ContinuousWithinAt f (Ici 0) 0)
    (hf_int : Integrable (fun p ↦ f ((μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ η) p).toReal) (ν ⊗ₘ η))
    (hκη : μ ⊗ₘ κ ≪ μ ⊗ₘ η) :
    Integrable (fun a ↦ f (μ.rnDeriv ν a).toReal) ν := by
  have hf_cont : ContinuousOn f (Ici 0) := hf_cvx.continuousOn_Ici hf_cont_at
  obtain ⟨c, c', h⟩ : ∃ c c', ∀ x, 0 ≤ x → c * x + c' ≤ f x :=
    hf_cvx.exists_affine_le_real isClosed_Ici hf_cont.lowerSemicontinuousOn
  refine integrable_of_le_of_le (f := fun a ↦ f (μ.rnDeriv ν a).toReal)
    (g₁ := fun x ↦ c * (μ.rnDeriv ν x).toReal + c')
    (g₂ := fun x ↦ ∫ b, f ((μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ η) (x, b)).toReal ∂(η x))
    ?_ ?_ ?_ (by fun_prop) ?_
  · exact StronglyMeasurable.aestronglyMeasurable (by fun_prop)
  · exact ae_of_all _ fun x ↦ h _ ENNReal.toReal_nonneg
  · exact hf_cvx.apply_rnDeriv_ae_le_integral hf hf_cont_at hf_int hκη
  · exact hf_int.integral_compProd

end Integrable

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b129e89a411f030194a5730fe605619a74d9887` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
