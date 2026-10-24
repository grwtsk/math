# _root_.Embedding.comp_stronglyMeasurable_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6638a72f5aeebd139d011282b8a1d40108892cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 702,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37228bc604e8f4eaeace0a119a9ff7830fbcaa1de6f2dc1f19996ccda2c8b5bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33db6ea3-3aa8-59c6-beda-ad31293d6da9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af5664b7-c7a5-9f5d-c82b-5ed23f21d84d",
  "kind": "theorem",
  "lexical_name": "_root_.Embedding.comp_stronglyMeasurable_iff",
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
  "slug": "root-embedding-comp-stronglymeasurable-iff--2bbe4b2b18a22df116714b38",
  "source": {
    "blob": "b6638a72f5aeebd139d011282b8a1d40108892cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 721,
    "line": 702,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant37228bc604e8f4eaeace0a119a9ff7830fbcaa1de6f2dc1f19996ccda2c8b5bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bbe4b2b18a22df116714b38b84b68f5751da820f940a8ab27dd81edeccbff66",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant37228bc604e8f4eaeace0a119a9ff7830fbcaa1de6f2dc1f19996ccda2c8b5bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af5664b7-c7a5-9f5d-c82b-5ed23f21d84d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 702–721.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Embedding.comp_stronglyMeasurable_iff {m : MeasurableSpace α} [TopologicalSpace β]
    [PseudoMetrizableSpace β] [TopologicalSpace γ] [PseudoMetrizableSpace γ] {g : β → γ} {f : α → β}
    (hg : IsEmbedding g) : (StronglyMeasurable fun x => g (f x)) ↔ StronglyMeasurable f := by
  letI := pseudoMetrizableSpacePseudoMetric γ
  borelize β γ
  refine
    ⟨fun H => stronglyMeasurable_iff_measurable_separable.2 ⟨?_, ?_⟩, fun H =>
      hg.continuous.comp_stronglyMeasurable H⟩
  · let G : β → range g := rangeFactorization g
    have hG : IsClosedEmbedding G :=
      { hg.codRestrict _ _ with
        isClosed_range := by
          rw [surjective_onto_range.range_eq]
          exact isClosed_univ }
    have : Measurable (G ∘ f) := Measurable.subtype_mk H.measurable
    exact hG.measurableEmbedding.measurable_comp_iff.1 this
  · have : IsSeparable (g ⁻¹' range (g ∘ f)) := hg.isSeparable_preimage H.isSeparable_range
    rwa [range_comp, hg.injective.preimage_image] at this

/-- A sequential limit of strongly measurable functions is strongly measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant37228bc604e8f4eaeace0a119a9ff7830fbcaa1de6f2dc1f19996ccda2c8b5bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant37228bc604e8f4eaeace0a119a9ff7830fbcaa1de6f2dc1f19996ccda2c8b5bb.lean#L702).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6638a72f5aeebd139d011282b8a1d40108892cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
