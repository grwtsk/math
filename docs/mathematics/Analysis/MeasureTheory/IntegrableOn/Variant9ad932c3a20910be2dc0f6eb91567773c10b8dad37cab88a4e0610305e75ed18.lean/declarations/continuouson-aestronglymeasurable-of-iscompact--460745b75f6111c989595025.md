# ContinuousOn.aestronglyMeasurable_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc92241abbd838b1164a87639a7f1189bf3ff1e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 624,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9ad932c3a20910be2dc0f6eb91567773c10b8dad37cab88a4e0610305e75ed18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b827043-740e-0c13-30cf-91de7556992c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0b904ce-f3c0-5d35-91f6-24e7a41dd122",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.aestronglyMeasurable_of_isCompact",
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
  "slug": "continuouson-aestronglymeasurable-of-iscompact--460745b75f6111c989595025",
  "source": {
    "blob": "fc92241abbd838b1164a87639a7f1189bf3ff1e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 634,
    "line": 624,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant9ad932c3a20910be2dc0f6eb91567773c10b8dad37cab88a4e0610305e75ed18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:460745b75f6111c98959502590fb42ab86f5d6a396901bd4cd42436f4864c4f4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegrableOn/Variant9ad932c3a20910be2dc0f6eb91567773c10b8dad37cab88a4e0610305e75ed18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0b904ce-f3c0-5d35-91f6-24e7a41dd122`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 624–634.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.aestronglyMeasurable_of_isCompact [TopologicalSpace α] [OpensMeasurableSpace α]
    [TopologicalSpace β] [PseudoMetrizableSpace β] {f : α → β} {s : Set α} {μ : Measure α}
    (hf : ContinuousOn f s) (hs : IsCompact s) (h's : MeasurableSet s) :
    AEStronglyMeasurable f (μ.restrict s) := by
  letI := pseudoMetrizableSpacePseudoMetric β
  borelize β
  rw [aestronglyMeasurable_iff_aemeasurable_separable]
  refine ⟨hf.aemeasurable h's, f '' s, ?_, ?_⟩
  · exact (hs.image_of_continuousOn hf).isSeparable
  · exact mem_of_superset (self_mem_ae_restrict h's) (subset_preimage_image _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegrableOn/Variant9ad932c3a20910be2dc0f6eb91567773c10b8dad37cab88a4e0610305e75ed18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant9ad932c3a20910be2dc0f6eb91567773c10b8dad37cab88a4e0610305e75ed18.lean#L624).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc92241abbd838b1164a87639a7f1189bf3ff1e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
