# _root_.GRWTSK.Analysis.MeasureTheory.MeasurableMeasureProdMkLeftFinite.Variant79e489065eb8e9ace242ec08b00882c3964840d2d1b443e23f5dc2dcb313cc6a.MeasureTheory.NullMeasurableSet.right_of_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ec8096c-d6bd-cd5f-c496-72c4c70f79c4",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.MeasurableMeasureProdMkLeftFinite.Variant79e489065eb8e9ace242ec08b00882c3964840d2d1b443e23f5dc2dcb313cc6a.MeasureTheory.NullMeasurableSet.right_of_prod",
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
  "slug": "root-grwtsk-analysis-measuretheory-measurablemeasureprodmkleftfinite-var--0c4eebeffc3460045534824d",
  "source": {
    "blob": "40e0faec880ca5ec0dc3cca09bef3e14d7b48234",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 448,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variantb9876717908e8aab9b80f0d641f5717a32d8fe5a16d3215096cd4fd4cd64b105.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c4eebeffc3460045534824daf12ba0d1ece60a41f1da02f83cc6aad2c6198af",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variantb9876717908e8aab9b80f0d641f5717a32d8fe5a16d3215096cd4fd4cd64b105.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ec8096c-d6bd-cd5f-c496-72c4c70f79c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.MeasureTheory.MeasurableMeasureProdMkLeftFinite.Variant79e489065eb8e9ace242ec08b00882c3964840d2d1b443e23f5dc2dcb313cc6a.MeasureTheory.NullMeasurableSet.right_of_prod {s : Set α} {t : Set β}
    (h : NullMeasurableSet (s ×ˢ t) (μ.prod ν)) (hs : μ s ≠ 0) : NullMeasurableSet t ν := by
  rcases h with ⟨u, hum, hu⟩
  obtain ⟨x, hxs, hx⟩ : ∃ x ∈ s, (Prod.mk x ⁻¹' (s ×ˢ t)) =ᵐ[ν] (Prod.mk x ⁻¹' u) :=
    ((frequently_ae_iff.2 hs).and_eventually (ae_ae_eq_curry_of_prod hu)).exists
  refine ⟨Prod.mk x ⁻¹' u, measurable_prodMk_left hum, ?_⟩
  rwa [mk_preimage_prod_right hxs] at hx

/-- If `Prod.snd ⁻¹' t` is a null measurable set and `μ ≠ 0`, then `t` is a null measurable set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variantb9876717908e8aab9b80f0d641f5717a32d8fe5a16d3215096cd4fd4cd64b105.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variantb9876717908e8aab9b80f0d641f5717a32d8fe5a16d3215096cd4fd4cd64b105.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40e0faec880ca5ec0dc3cca09bef3e14d7b48234` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
