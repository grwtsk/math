# _root_.MeasurableEmbedding.lintegral_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10de8856a750888634152dddf232848a299061d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bca83b3214448d0a22a424a1eac30d31fed4cb740d41beb55ecd93d67b45a129.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:361c1eb3-eba8-47ae-7545-a82e0cc3c17a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04e3dfcd-a656-09fe-3fa5-cdbb72a8a8cf",
  "kind": "theorem",
  "lexical_name": "_root_.MeasurableEmbedding.lintegral_map",
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
  "slug": "root-measurableembedding-lintegral-map--7d10ef6e717f087d8a15ac60",
  "source": {
    "blob": "10de8856a750888634152dddf232848a299061d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Map/Variantbca83b3214448d0a22a424a1eac30d31fed4cb740d41beb55ecd93d67b45a129.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d10ef6e717f087d8a15ac607c5d562f6e63b8a7c919c8131b9224fe76b99403",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Map/Variantbca83b3214448d0a22a424a1eac30d31fed4cb740d41beb55ecd93d67b45a129.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04e3dfcd-a656-09fe-3fa5-cdbb72a8a8cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.MeasurableEmbedding.lintegral_map {g : α → β}
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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Map/Variantbca83b3214448d0a22a424a1eac30d31fed4cb740d41beb55ecd93d67b45a129.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Map/Variantbca83b3214448d0a22a424a1eac30d31fed4cb740d41beb55ecd93d67b45a129.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10de8856a750888634152dddf232848a299061d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
