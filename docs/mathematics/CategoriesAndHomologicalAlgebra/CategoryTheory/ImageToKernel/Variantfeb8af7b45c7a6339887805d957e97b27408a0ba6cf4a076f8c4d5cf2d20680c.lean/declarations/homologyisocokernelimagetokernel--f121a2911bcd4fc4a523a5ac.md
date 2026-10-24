# homologyIsoCokernelImageToKernel'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89ac302847396f3d0b6ed6166a60cf70f2398e4bd2dcae4e6a2d4470e8ca3883",
  "kind": "def",
  "lexical_name": "homologyIsoCokernelImageToKernel'",
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
  "slug": "homologyisocokernelimagetokernel--f121a2911bcd4fc4a523a5ac",
  "source": {
    "blob": "11f736382376d59facb65fa3bffe963e52ecf18d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 440,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f121a2911bcd4fc4a523a5ac2856f403dddd02d8187004a3b41563792eec9dcb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89ac302847396f3d0b6ed6166a60cf70f2398e4bd2dcae4e6a2d4470e8ca3883`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homologyIsoCokernelImageToKernel' (w : f ≫ g = 0) :
    homology f g w ≅ cokernel (imageToKernel' f g w) where
  hom := cokernel.map _ _ (imageSubobjectIso f).hom (kernelSubobjectIso g).hom
      (by simp only [imageSubobjectIso_imageToKernel'])
  inv := cokernel.map _ _ (imageSubobjectIso f).inv (kernelSubobjectIso g).inv
      (by simp only [imageToKernel'_kernelSubobjectIso])
  hom_inv_id := by
    -- Just calling `ext` here uses the higher priority `homology.ext`,
    -- which precomposes with `homology.π`.
    -- As we are trying to work in terms of `cokernel`, it is better to use `coequalizer.hom_ext`.
    apply coequalizer.hom_ext
    simp only [Iso.hom_inv_id_assoc, cokernel.π_desc, cokernel.π_desc_assoc, Category.assoc,
      coequalizer_as_cokernel]
    exact (Category.comp_id _).symm
  inv_hom_id := by
    ext
    simp only [Iso.inv_hom_id_assoc, cokernel.π_desc, Category.comp_id, cokernel.π_desc_assoc,
      Category.assoc]
#align homology_iso_cokernel_image_to_kernel' homologyIsoCokernelImageToKernel'

variable [HasEqualizers V]

/-- `homology f g w` can be computed as the cokernel of `kernel.lift g f w`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11f736382376d59facb65fa3bffe963e52ecf18d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
