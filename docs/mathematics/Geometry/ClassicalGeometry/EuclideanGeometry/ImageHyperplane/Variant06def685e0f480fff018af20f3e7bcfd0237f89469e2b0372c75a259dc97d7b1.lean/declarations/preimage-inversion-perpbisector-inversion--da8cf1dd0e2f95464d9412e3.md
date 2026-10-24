# preimage_inversion_perpBisector_inversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd018a7a039bf28166c76c801093999f7e849600",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7bb388d5-a937-7185-cc90-b5602f833623",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24940990-26b5-ca1c-bab9-09eb7db8eaed",
  "kind": "theorem",
  "lexical_name": "preimage_inversion_perpBisector_inversion",
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
  "slug": "preimage-inversion-perpbisector-inversion--da8cf1dd0e2f95464d9412e3",
  "source": {
    "blob": "fd018a7a039bf28166c76c801093999f7e849600",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 53,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da8cf1dd0e2f95464d9412e379d1a3eaeae8356860c54dd002e4d840ec6a87c0",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24940990-26b5-ca1c-bab9-09eb7db8eaed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_inversion_perpBisector_inversion (hR : R ≠ 0) (hy : y ≠ c) :
    inversion c R ⁻¹' perpBisector c (inversion c R y) = sphere y (dist y c) \ {c} :=
  Set.ext fun _ ↦ inversion_mem_perpBisector_inversion_iff' hR hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ImageHyperplane/Variant06def685e0f480fff018af20f3e7bcfd0237f89469e2b0372c75a259dc97d7b1.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd018a7a039bf28166c76c801093999f7e849600` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
