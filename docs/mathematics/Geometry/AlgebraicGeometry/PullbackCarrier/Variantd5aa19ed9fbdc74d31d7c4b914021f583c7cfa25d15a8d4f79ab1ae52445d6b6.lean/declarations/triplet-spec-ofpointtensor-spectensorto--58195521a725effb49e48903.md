# Triplet.Spec_ofPointTensor_SpecTensorTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5fd49d784d6617cd0f916ec886ef77fff4919f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:645e2f7f-6f6b-c908-21cd-4013276eef67",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9bdda853-c2b6-52b1-5b07-d0f56c4dd1ff",
  "kind": "lemma",
  "lexical_name": "Triplet.Spec_ofPointTensor_SpecTensorTo",
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
  "slug": "triplet-spec-ofpointtensor-spectensorto--58195521a725effb49e48903",
  "source": {
    "blob": "e5fd49d784d6617cd0f916ec886ef77fff4919f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 224,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58195521a725effb49e489031db96ec7b0ad41fff605870af2b07c8dd2146381",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bdda853-c2b6-52b1-5b07-d0f56c4dd1ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Triplet.Spec_ofPointTensor_SpecTensorTo (T : Triplet f g) (p : Spec T.tensor) :
    Spec.map (Hom.residueFieldMap T.SpecTensorTo p) ≫
      Spec.map (ofPointTensor (T.SpecTensorTo.base p)) ≫
      Spec.map (tensorCongr (T.ofPoint_SpecTensorTo p).symm).hom =
    (Spec T.tensor).fromSpecResidueField p := by
  apply T.Spec_map_tensor_isPullback.hom_ext
  · rw [← cancel_mono <| X.fromSpecResidueField T.x]
    simp_rw [Category.assoc, ← T.specTensorTo_fst, tensorCongr_SpecTensorTo_assoc]
    rw [← Hom.Spec_map_residueFieldMap_fromSpecResidueField_assoc, ofPointTensor_SpecTensorTo_assoc]
  · rw [← cancel_mono <| Y.fromSpecResidueField T.y]
    simp_rw [Category.assoc, ← T.specTensorTo_snd, tensorCongr_SpecTensorTo_assoc]
    rw [← Hom.Spec_map_residueFieldMap_fromSpecResidueField_assoc, ofPointTensor_SpecTensorTo_assoc]

/-- A helper lemma to work with `AlgebraicGeometry.Scheme.Pullback.carrierEquiv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5fd49d784d6617cd0f916ec886ef77fff4919f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
