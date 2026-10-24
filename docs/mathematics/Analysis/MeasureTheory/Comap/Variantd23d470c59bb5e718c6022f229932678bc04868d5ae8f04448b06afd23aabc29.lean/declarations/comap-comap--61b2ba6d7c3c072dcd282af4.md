# comap_comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:253495e4-625d-42a1-8c60-f67066b9f225",
  "kind": "lemma",
  "lexical_name": "comap_comap",
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
  "slug": "comap-comap--61b2ba6d7c3c072dcd282af4",
  "source": {
    "blob": "776bd7f9124999044cbc7f8a5a0d4c880be3ff49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 152,
    "path": "GRWTSK/Analysis/MeasureTheory/Comap/Variantd23d470c59bb5e718c6022f229932678bc04868d5ae8f04448b06afd23aabc29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61b2ba6d7c3c072dcd282af4e5f87b9c438c203c5a20a2bfda8d833341ed5e49",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Comap/Variantd23d470c59bb5e718c6022f229932678bc04868d5ae8f04448b06afd23aabc29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:253495e4-625d-42a1-8c60-f67066b9f225`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comap_comap (hf' : ∀ s, MeasurableSet s → MeasurableSet (f '' s)) (hg : Injective g)
    (hg' : ∀ s, MeasurableSet s → MeasurableSet (g '' s)) (μ : Measure γ) :
    comap f (comap g μ) = comap (g ∘ f) μ := by
  by_cases hf : Injective f
  · ext s hs
    rw [comap_apply _ hf hf' _ hs, comap_apply _ hg hg' _ (hf' _ hs),
      comap_apply _ (hg.comp hf) (fun t ht ↦ image_comp g f _ ▸ hg' _ <| hf' _ ht) _ hs, image_comp]
  · rw [comap, dif_neg <| mt And.left hf, comap, dif_neg fun h ↦ hf h.1.of_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Comap/Variantd23d470c59bb5e718c6022f229932678bc04868d5ae8f04448b06afd23aabc29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Comap/Variantd23d470c59bb5e718c6022f229932678bc04868d5ae8f04448b06afd23aabc29.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `776bd7f9124999044cbc7f8a5a0d4c880be3ff49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
