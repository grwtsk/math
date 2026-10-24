# _root_.Topology.IsEmbedding.aestronglyMeasurable_comp_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa574fc0eb4c103f9c7273f5d83aec718c28500e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 599,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aaf51753-ba64-f4f5-9bfe-6df7cea8f434",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7cb5e1c-2541-9bfe-83e3-a89b6defe3ea",
  "kind": "theorem",
  "lexical_name": "_root_.Topology.IsEmbedding.aestronglyMeasurable_comp_iff",
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
  "slug": "root-topology-isembedding-aestronglymeasurable-comp-iff--dff6668a7add7993f22ac179",
  "source": {
    "blob": "aa574fc0eb4c103f9c7273f5d83aec718c28500e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 620,
    "line": 599,
    "path": "GRWTSK/Analysis/MeasureTheory/AEStronglyMeasurable/Variant7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dff6668a7add7993f22ac179357619bad9a1365cddf68d9d9485cb3395c31302",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEStronglyMeasurable/Variant7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7cb5e1c-2541-9bfe-83e3-a89b6defe3ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 599–620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Topology.IsEmbedding.aestronglyMeasurable_comp_iff [PseudoMetrizableSpace β]
    [PseudoMetrizableSpace γ] {g : β → γ} {f : α → β} (hg : IsEmbedding g) :
    AEStronglyMeasurable (fun x => g (f x)) μ ↔ AEStronglyMeasurable f μ := by
  letI := pseudoMetrizableSpacePseudoMetric γ
  borelize β γ
  refine
    ⟨fun H => aestronglyMeasurable_iff_aemeasurable_separable.2 ⟨?_, ?_⟩, fun H =>
      hg.continuous.comp_aestronglyMeasurable H⟩
  · let G : β → range g := rangeFactorization g
    have hG : IsClosedEmbedding G :=
      { hg.codRestrict _ _ with
        isClosed_range := by rw [surjective_onto_range.range_eq]; exact isClosed_univ }
    have : AEMeasurable (G ∘ f) μ := AEMeasurable.subtype_mk H.aemeasurable
    exact hG.measurableEmbedding.aemeasurable_comp_iff.1 this
  · rcases (aestronglyMeasurable_iff_aemeasurable_separable.1 H).2 with ⟨t, ht, h't⟩
    exact ⟨g ⁻¹' t, hg.isSeparable_preimage ht, h't⟩

@[deprecated (since := "2024-10-26")]
alias _root_.Embedding.aestronglyMeasurable_comp_iff := IsEmbedding.aestronglyMeasurable_comp_iff

/-- An almost everywhere sequential limit of almost everywhere strongly measurable functions is
almost everywhere strongly measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEStronglyMeasurable/Variant7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEStronglyMeasurable/Variant7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean#L599).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa574fc0eb4c103f9c7273f5d83aec718c28500e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
