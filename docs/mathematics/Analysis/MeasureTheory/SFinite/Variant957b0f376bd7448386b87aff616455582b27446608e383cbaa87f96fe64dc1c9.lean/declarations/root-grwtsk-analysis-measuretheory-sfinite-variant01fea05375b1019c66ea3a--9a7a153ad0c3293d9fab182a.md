# _root_.GRWTSK.Analysis.MeasureTheory.SFinite.Variant01fea05375b1019c66ea3a3fe0e7461ef0effb8954674a52d36050f7447be6f8.MeasurableEmbedding.sigmaFinite_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27051ebf-6ac8-50c5-bdd9-4dde29075baa",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.SFinite.Variant01fea05375b1019c66ea3a3fe0e7461ef0effb8954674a52d36050f7447be6f8.MeasurableEmbedding.sigmaFinite_map",
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
  "slug": "root-grwtsk-analysis-measuretheory-sfinite-variant01fea05375b1019c66ea3a--9a7a153ad0c3293d9fab182a",
  "source": {
    "blob": "da99368a7a1578c2cc1fd7abdef79c9dc185e5f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 685,
    "line": 675,
    "path": "GRWTSK/Analysis/MeasureTheory/SFinite/Variant957b0f376bd7448386b87aff616455582b27446608e383cbaa87f96fe64dc1c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a7a153ad0c3293d9fab182a8b3e614d6d0ac937da0c4361d44b7030a35e80e7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SFinite/Variant957b0f376bd7448386b87aff616455582b27446608e383cbaa87f96fe64dc1c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27051ebf-6ac8-50c5-bdd9-4dde29075baa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 675–685.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.MeasureTheory.SFinite.Variant01fea05375b1019c66ea3a3fe0e7461ef0effb8954674a52d36050f7447be6f8.MeasurableEmbedding.sigmaFinite_map {f : α → β} (hf : MeasurableEmbedding f)
    [SigmaFinite μ] :
    SigmaFinite (μ.map f) := by
  refine ⟨fun n ↦ f '' (spanningSets μ n) ∪ (Set.range f)ᶜ, by simp, fun n ↦ ?_, ?_⟩
  · rw [hf.map_apply, Set.preimage_union]
    simp only [Set.preimage_compl, Set.preimage_range, Set.compl_univ, Set.union_empty,
      Set.preimage_image_eq _ hf.injective]
    exact measure_spanningSets_lt_top μ n
  · rw [← Set.iUnion_union, ← Set.image_iUnion, iUnion_spanningSets,
      Set.image_univ, Set.union_compl_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SFinite/Variant957b0f376bd7448386b87aff616455582b27446608e383cbaa87f96fe64dc1c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SFinite/Variant957b0f376bd7448386b87aff616455582b27446608e383cbaa87f96fe64dc1c9.lean#L675).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da99368a7a1578c2cc1fd7abdef79c9dc185e5f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
