# MeasurableEmbedding.comap_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8b050b2-8956-0760-dab2-c3c7ada8ee61",
  "kind": "lemma",
  "lexical_name": "MeasurableEmbedding.comap_add",
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
  "slug": "measurableembedding-comap-add--87ebf794a19c768f27a28ee5",
  "source": {
    "blob": "f181997aed3a856293b09a7898036edf1195f738",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 195,
    "path": "GRWTSK/Analysis/MeasureTheory/Comap/Variant4c921bf36675e2bc22bbfb7f582e24cd74f8c50d72fb81119ff08909046200bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87ebf794a19c768f27a28ee5ec5da48eb9da44d0cadc378b71ff3a4900597ea2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Comap/Variant4c921bf36675e2bc22bbfb7f582e24cd74f8c50d72fb81119ff08909046200bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8b050b2-8956-0760-dab2-c3c7ada8ee61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeasurableEmbedding.comap_add {f : α → β} (hf : MeasurableEmbedding f) (μ ν : Measure β) :
    (μ + ν).comap f = μ.comap f + ν.comap f := by
  ext s hs
  simp only [← comapₗ_eq_comap _ hf.injective (fun _ ↦ hf.measurableSet_image.mpr) _ hs,
    map_add, add_apply]

namespace MeasurableEquiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Comap/Variant4c921bf36675e2bc22bbfb7f582e24cd74f8c50d72fb81119ff08909046200bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Comap/Variant4c921bf36675e2bc22bbfb7f582e24cd74f8c50d72fb81119ff08909046200bb.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f181997aed3a856293b09a7898036edf1195f738` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
