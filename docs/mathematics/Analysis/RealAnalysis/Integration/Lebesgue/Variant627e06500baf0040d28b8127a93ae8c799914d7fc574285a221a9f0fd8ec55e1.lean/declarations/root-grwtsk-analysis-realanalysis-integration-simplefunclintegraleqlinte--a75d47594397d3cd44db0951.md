# _root_.GRWTSK.Analysis.RealAnalysis.Integration.SimpleFuncLintegralEqLintegral.Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.MeasurableEmbedding.lintegral_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85269daa-d565-affc-e454-2691bbb6e781",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.Integration.SimpleFuncLintegralEqLintegral.Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.MeasurableEmbedding.lintegral_map",
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
  "slug": "root-grwtsk-analysis-realanalysis-integration-simplefunclintegraleqlinte--a75d47594397d3cd44db0951",
  "source": {
    "blob": "36852aae1b786e2c3955ba9e963b7eae7ca6e3f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1330,
    "line": 1315,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a75d47594397d3cd44db0951eb6d31051708b57c84c2dc7c5bf63dc3868a8c06",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85269daa-d565-affc-e454-2691bbb6e781`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1315–1330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.SimpleFuncLintegralEqLintegral.Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.MeasurableEmbedding.lintegral_map [MeasurableSpace β] {g : α → β}
    (hg : MeasurableEmbedding g) (f : β → ℝ≥0∞) : ∫⁻ a, f a ∂map g μ = ∫⁻ a, f (g a) ∂μ := by
  rw [lintegral, lintegral]
  refine' le_antisymm (iSup₂_le fun f₀ hf₀ => _) (iSup₂_le fun f₀ hf₀ => _)
  · rw [SimpleFunc.lintegral_map _ hg.measurable]
    have : (f₀.comp g hg.measurable : α → ℝ≥0∞) ≤ f ∘ g := fun x => hf₀ (g x)
    exact le_iSup_of_le (comp f₀ g hg.measurable) (by exact le_iSup (α := ℝ≥0∞) _ this)
  · rw [← f₀.extend_comp_eq hg (const _ 0), ← SimpleFunc.lintegral_map, ←
      SimpleFunc.lintegral_eq_lintegral, ← lintegral]
    refine' lintegral_mono_ae (hg.ae_map_iff.2 <| eventually_of_forall fun x => _)
    exact (extend_apply _ _ _ _).trans_le (hf₀ _)
#align measurable_embedding.lintegral_map MeasurableEmbedding.lintegral_map

/-- The `lintegral` transforms appropriately under a measurable equivalence `g : α ≃ᵐ β`.
(Compare `lintegral_map`, which applies to a wider class of functions `g : α → β`, but requires
measurability of the function being integrated.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean#L1315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36852aae1b786e2c3955ba9e963b7eae7ca6e3f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
