# comap_comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0305e9c566226c854db64b906c5a13a8e7673dff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42542894-4121-290a-067d-e3e6c936f68e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cffb30ae-6c7b-4571-6a54-a5227d4c1207",
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
  "slug": "comap-comap--91cba84d4653dd8359d596b7",
  "source": {
    "blob": "0305e9c566226c854db64b906c5a13a8e7673dff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 144,
    "path": "GRWTSK/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91cba84d4653dd8359d596b7916e18aff1cf40991d76c5c7fa9a1e770a263934",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cffb30ae-6c7b-4571-6a54-a5227d4c1207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–152.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Comap/Variant802bb4840cfa2bfd4023194d080aaaa3758d318de561970b584663f044dd99c5.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0305e9c566226c854db64b906c5a13a8e7673dff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
