# imageToKernel_epi_of_epi_of_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:754820d4c995e4b6a3426541bc495463aa411e8d3cf87b941810cb80339cc071",
  "kind": "instance",
  "lexical_name": "imageToKernel_epi_of_epi_of_zero",
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
  "slug": "imagetokernel-epi-of-epi-of-zero--af7ebc064c410c2051ae423d",
  "source": {
    "blob": "11f736382376d59facb65fa3bffe963e52ecf18d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af7ebc064c410c2051ae423d7d01f15def6d4ccf3575ee524353ce2c422e86d7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:754820d4c995e4b6a3426541bc495463aa411e8d3cf87b941810cb80339cc071`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance imageToKernel_epi_of_epi_of_zero [HasImages V] [Epi f] :
    Epi (imageToKernel f (0 : B ⟶ C) (by simp)) := by
  simp only [imageToKernel_zero_right]
  haveI := epi_image_of_epi f
  rw [← imageSubobject_arrow]
  refine' @epi_comp _ _ _ _ _ _ (epi_comp _ _) _ _
#align image_to_kernel_epi_of_epi_of_zero imageToKernel_epi_of_epi_of_zero

end

section

variable {A B C : V} (f : A ⟶ B) [HasImage f] (g : B ⟶ C) [HasKernel g]

/-- The homology of a pair of morphisms `f : A ⟶ B` and `g : B ⟶ C` satisfying `f ≫ g = 0`
is the cokernel of the `imageToKernel` morphism for `f` and `g`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11f736382376d59facb65fa3bffe963e52ecf18d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
