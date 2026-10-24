# _root_.GRWTSK.Analysis.RealAnalysis.Integration.LintegralMap.Variantbca83b3214448d0a22a424a1eac30d31fed4cb740d41beb55ecd93d67b45a129.MeasurableEmbedding.lintegral_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4074c00f-4c25-9ef8-c1cf-8019608a7ab9",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.Integration.LintegralMap.Variantbca83b3214448d0a22a424a1eac30d31fed4cb740d41beb55ecd93d67b45a129.MeasurableEmbedding.lintegral_map",
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
  "slug": "root-grwtsk-analysis-realanalysis-integration-lintegralmap-variantbca83b--c20abb9790f66be7ff0c9deb",
  "source": {
    "blob": "17ae0e5b1f8bf57f6922f956b374f8cfab56a96d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Map/Variant58e058ae6aaf7b767cef5223a30bcdc8a5639118472cf90da3d03ae4d7bc56a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c20abb9790f66be7ff0c9deb609225c976476c9f14ac7b2ff6a033bca7a7d6e7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Map/Variant58e058ae6aaf7b767cef5223a30bcdc8a5639118472cf90da3d03ae4d7bc56a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4074c00f-4c25-9ef8-c1cf-8019608a7ab9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.LintegralMap.Variantbca83b3214448d0a22a424a1eac30d31fed4cb740d41beb55ecd93d67b45a129.MeasurableEmbedding.lintegral_map {g : α → β}
    (hg : MeasurableEmbedding g) (f : β → ℝ≥0∞) : ∫⁻ a, f a ∂map g μ = ∫⁻ a, f (g a) ∂μ := by
  rw [lintegral, lintegral]
  refine le_antisymm (iSup₂_le fun f₀ hf₀ => ?_) (iSup₂_le fun f₀ hf₀ => ?_)
  · rw [SimpleFunc.lintegral_map _ hg.measurable]
    have : (f₀.comp g hg.measurable : α → ℝ≥0∞) ≤ f ∘ g := fun x => hf₀ (g x)
    exact le_iSup_of_le (comp f₀ g hg.measurable) (by grw [← le_iSup _ this])
  · rw [← f₀.extend_comp_eq hg (const _ 0), ← SimpleFunc.lintegral_map, ←
      SimpleFunc.lintegral_eq_lintegral, ← lintegral]
    refine lintegral_mono_ae (hg.ae_map_iff.2 <| Eventually.of_forall fun x => ?_)
    exact (extend_apply _ _ _ _).trans_le (hf₀ _)

/-- The `lintegral` transforms appropriately under a measurable equivalence `g : α ≃ᵐ β`.
(Compare `lintegral_map`, which applies to a wider class of functions `g : α → β`, but requires
measurability of the function being integrated.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Map/Variant58e058ae6aaf7b767cef5223a30bcdc8a5639118472cf90da3d03ae4d7bc56a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Map/Variant58e058ae6aaf7b767cef5223a30bcdc8a5639118472cf90da3d03ae4d7bc56a5.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17ae0e5b1f8bf57f6922f956b374f8cfab56a96d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
