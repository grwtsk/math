# map_map_of_aemeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c01ae1e-ce4f-00a4-9d10-e9251cc6ed82",
  "kind": "theorem",
  "lexical_name": "map_map_of_aemeasurable",
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
  "slug": "map-map-of-aemeasurable--cc895c48e6c4790238159bd5",
  "source": {
    "blob": "1bd9078966ea26ed7d4b73384be91920ac758312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 182,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc895c48e6c4790238159bd5ea2f0ac206cfaf4d0f760e5c0b5822ec4d7ca108",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c01ae1e-ce4f-00a4-9d10-e9251cc6ed82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_map_of_aemeasurable {g : β → γ} {f : α → β} (hg : AEMeasurable g (Measure.map f μ))
    (hf : AEMeasurable f μ) : (μ.map f).map g = μ.map (g ∘ f) := by
  ext1 s hs
  let g' := hg.mk g
  have A : map g (map f μ) = map g' (map f μ) := by
    apply MeasureTheory.Measure.map_congr
    exact hg.ae_eq_mk
  have B : map (g ∘ f) μ = map (g' ∘ f) μ := by
    apply MeasureTheory.Measure.map_congr
    exact ae_of_ae_map hf hg.ae_eq_mk
  simp only [A, B, hs, hg.measurable_mk.aemeasurable.comp_aemeasurable hf, hg.measurable_mk,
    hg.measurable_mk hs, hf, map_apply, map_apply_of_aemeasurable]
  rfl
#align ae_measurable.map_map_of_ae_measurable AEMeasurable.map_map_of_aemeasurable

@[measurability]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bd9078966ea26ed7d4b73384be91920ac758312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
