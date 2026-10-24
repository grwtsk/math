# ContinuousOn.aestronglyMeasurable_of_isSeparable

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
      "line": 595,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9ad932c3a20910be2dc0f6eb91567773c10b8dad37cab88a4e0610305e75ed18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61870b34-12f2-a1ab-7d03-859183f83d3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29b2ce60-a068-edc3-9c7c-9863d1c5fac4",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.aestronglyMeasurable_of_isSeparable",
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
  "slug": "continuouson-aestronglymeasurable-of-isseparable--fc547eefec58a1647c8f98fa",
  "source": {
    "blob": "fc92241abbd838b1164a87639a7f1189bf3ff1e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 595,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant9ad932c3a20910be2dc0f6eb91567773c10b8dad37cab88a4e0610305e75ed18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc547eefec58a1647c8f98fabfbffc83e5a55245aafa26939e5c1330b238eb01",
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

Occurrence: `result:29b2ce60-a068-edc3-9c7c-9863d1c5fac4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 595–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.aestronglyMeasurable_of_isSeparable [TopologicalSpace α]
    [PseudoMetrizableSpace α] [OpensMeasurableSpace α] [TopologicalSpace β]
    [PseudoMetrizableSpace β] {f : α → β} {s : Set α} {μ : Measure α} (hf : ContinuousOn f s)
    (hs : MeasurableSet s) (h's : TopologicalSpace.IsSeparable s) :
    AEStronglyMeasurable f (μ.restrict s) := by
  letI := pseudoMetrizableSpacePseudoMetric α
  borelize β
  rw [aestronglyMeasurable_iff_aemeasurable_separable]
  refine ⟨hf.aemeasurable hs, f '' s, hf.isSeparable_image h's, ?_⟩
  exact mem_of_superset (self_mem_ae_restrict hs) (subset_preimage_image _ _)

/-- A function which is continuous on a set `s` is almost everywhere strongly measurable with
respect to `μ.restrict s` when either the source space or the target space is second-countable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegrableOn/Variant9ad932c3a20910be2dc0f6eb91567773c10b8dad37cab88a4e0610305e75ed18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant9ad932c3a20910be2dc0f6eb91567773c10b8dad37cab88a4e0610305e75ed18.lean#L595).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc92241abbd838b1164a87639a7f1189bf3ff1e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
