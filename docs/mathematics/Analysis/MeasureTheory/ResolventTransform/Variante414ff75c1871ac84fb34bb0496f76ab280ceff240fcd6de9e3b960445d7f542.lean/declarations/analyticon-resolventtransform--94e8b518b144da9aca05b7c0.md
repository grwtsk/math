# analyticOn_resolventTransform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e8e11f851cf4bed80676deb947d653a9f109814",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57c4d877-4856-7fb6-1b78-14826add2e1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5cb6b82f-98d6-2537-72de-a8c950407647",
  "kind": "theorem",
  "lexical_name": "analyticOn_resolventTransform",
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
  "slug": "analyticon-resolventtransform--94e8b518b144da9aca05b7c0",
  "source": {
    "blob": "9e8e11f851cf4bed80676deb947d653a9f109814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 178,
    "path": "GRWTSK/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94e8b518b144da9aca05b7c00bf5525a8f5a5a3bc58f961e260ad6f5f3781cf3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cb6b82f-98d6-2537-72de-a8c950407647`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analyticOn_resolventTransform [NormedAlgebra 𝕜 ℂ] {μ : Measure 𝕜} [IsFiniteMeasure μ] :
    AnalyticOn ℂ (resolventTransform μ) (algebraMap 𝕜 ℂ '' μ.support)ᶜ := by
  rw [analyticOn_iff_differentiableOn]
  · intro z hz
    exact (hasDerivAt_resolventTransform z hz).differentiableAt.differentiableWithinAt
  apply isOpen_compl_iff.mpr
  refine (Topology.IsClosedEmbedding.isClosed_iff_image_isClosed ?_).mp isClosed_support
  exact (algebraMap_isometry 𝕜 ℂ).isClosedEmbedding

end Deriv

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e8e11f851cf4bed80676deb947d653a9f109814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
