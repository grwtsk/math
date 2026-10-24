# imageBasicOpen_image_open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8eed74b203e72864e5f5ba91f1ef741c7e1d27d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c21eaf47-52a8-c3ac-2298-af108f4f52fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c9dc3b3-5228-4498-387b-f124fe6172f6",
  "kind": "theorem",
  "lexical_name": "imageBasicOpen_image_open",
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
  "slug": "imagebasicopen-image-open--a621ad4fa364497393cbbae0",
  "source": {
    "blob": "8eed74b203e72864e5f5ba91f1ef741c7e1d27d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 216,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a621ad4fa364497393cbbae0a446f21a36c6c5f66a934e7bde917c01d691307e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c9dc3b3-5228-4498-387b-f124fe6172f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imageBasicOpen_image_open :
    IsOpen ((coequalizer.π f.1 g.1).base '' (imageBasicOpen f g U s).1) := by
  rw [←(TopCat.homeoOfIso (PreservesCoequalizer.iso (SheafedSpace.forget _) f.1
    g.1)).isOpen_preimage, TopCat.coequalizer_isOpen_iff, ← Set.preimage_comp]
  erw [← coe_comp]
  rw [PreservesCoequalizer.iso_hom, ι_comp_coequalizerComparison]
  dsimp only [SheafedSpace.forget]
  -- Porting note : change `rw` to `erw`
  erw [imageBasicOpen_image_preimage]
  exact (imageBasicOpen f g U s).2
#align algebraic_geometry.LocallyRingedSpace.has_coequalizer.image_basic_open_image_open AlgebraicGeometry.LocallyRingedSpace.HasCoequalizer.imageBasicOpen_image_open

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eed74b203e72864e5f5ba91f1ef741c7e1d27d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
