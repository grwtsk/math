# map_conv_continuousLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9257db543426a423daf5317297ead6cdc4c1dbcd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f916f1f8-d05b-4450-1700-e9cb6117fe0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e1393a4-cadb-4c6e-7b04-d5dc4d4c4e15",
  "kind": "lemma",
  "lexical_name": "map_conv_continuousLinearMap",
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
  "slug": "map-conv-continuouslinearmap--7aed81e1f26e43f88ac4453e",
  "source": {
    "blob": "9257db543426a423daf5317297ead6cdc4c1dbcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 146,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7aed81e1f26e43f88ac4453ed4c39f9417a9e5717ced230e5b0dabbfb00ab544",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e1393a4-cadb-4c6e-7b04-d5dc4d4c4e15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_conv_continuousLinearMap {E F : Type*} [AddCommMonoid E] [AddCommMonoid F]
    [Module ℝ E] [Module ℝ F] [TopologicalSpace E] [TopologicalSpace F]
    {mE : MeasurableSpace E} [MeasurableAdd₂ E] {mF : MeasurableSpace F} [MeasurableAdd₂ F]
    [OpensMeasurableSpace E] [BorelSpace F]
    {μ ν : Measure E} [SFinite μ] [SFinite ν]
    (L : E →L[ℝ] F) :
    (μ ∗ ν).map L = (μ.map L).conv (ν.map L) := by
  suffices (μ ∗ ν).map (L : E →+ F) = (μ.map (L : E →+ F)).conv (ν.map (L : E →+ F)) by simpa
  rw [map_conv_addMonoidHom]
  rw [AddMonoidHom.coe_coe]
  fun_prop

end Measure

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variantb855bce455f0b498d8c19bc73286e9f3921ab01bdabdafab53ccacf540a3a693.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9257db543426a423daf5317297ead6cdc4c1dbcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
