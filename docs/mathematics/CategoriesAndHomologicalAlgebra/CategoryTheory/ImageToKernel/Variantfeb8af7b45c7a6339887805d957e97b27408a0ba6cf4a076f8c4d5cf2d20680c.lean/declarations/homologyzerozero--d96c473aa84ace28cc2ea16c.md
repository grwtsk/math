# homologyZeroZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ef65de37264fa8eed8e617dbabe2bb10bebab5a6ee215973bfb4e9a7927ce8f",
  "kind": "def",
  "lexical_name": "homologyZeroZero",
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
  "slug": "homologyzerozero--d96c473aa84ace28cc2ea16c",
  "source": {
    "blob": "11f736382376d59facb65fa3bffe963e52ecf18d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 244,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d96c473aa84ace28cc2ea16cb5bf1a87935fbd8ca57399bf708f8ec864cf4af7",
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

Occurrence: `declaration:9ef65de37264fa8eed8e617dbabe2bb10bebab5a6ee215973bfb4e9a7927ce8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homologyZeroZero [HasZeroObject V] [HasImage (0 : A ⟶ B)]
    [HasCokernel (imageToKernel (0 : A ⟶ B) (0 : B ⟶ C) zero_comp)] :
    homology (0 : A ⟶ B) (0 : B ⟶ C) zero_comp ≅ B where
  hom := homology.desc (0 : A ⟶ B) (0 : B ⟶ C) zero_comp (kernelSubobject 0).arrow (by simp)
  inv := inv (kernelSubobject 0).arrow ≫ homology.π _ _ _
#align homology_zero_zero homologyZeroZero

end

section

variable {f g} (w : f ≫ g = 0) {A' B' C' : V} {f' : A' ⟶ B'} [HasImage f'] {g' : B' ⟶ C'}
  [HasKernel g'] (w' : f' ≫ g' = 0) (α : Arrow.mk f ⟶ Arrow.mk f') [HasImageMap α]
  (β : Arrow.mk g ⟶ Arrow.mk g') {A₁ B₁ C₁ : V} {f₁ : A₁ ⟶ B₁} [HasImage f₁] {g₁ : B₁ ⟶ C₁}
  [HasKernel g₁] (w₁ : f₁ ≫ g₁ = 0) {A₂ B₂ C₂ : V} {f₂ : A₂ ⟶ B₂} [HasImage f₂] {g₂ : B₂ ⟶ C₂}
  [HasKernel g₂] (w₂ : f₂ ≫ g₂ = 0) {A₃ B₃ C₃ : V} {f₃ : A₃ ⟶ B₃} [HasImage f₃] {g₃ : B₃ ⟶ C₃}
  [HasKernel g₃] (w₃ : f₃ ≫ g₃ = 0) (α₁ : Arrow.mk f₁ ⟶ Arrow.mk f₂) [HasImageMap α₁]
  (β₁ : Arrow.mk g₁ ⟶ Arrow.mk g₂) (α₂ : Arrow.mk f₂ ⟶ Arrow.mk f₃) [HasImageMap α₂]
  (β₂ : Arrow.mk g₂ ⟶ Arrow.mk g₃)

/-- Given compatible commutative squares between
a pair `f g` and a pair `f' g'` satisfying `f ≫ g = 0` and `f' ≫ g' = 0`,
the `imageToKernel` morphisms intertwine the induced map on kernels and the induced map on images.
-/
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11f736382376d59facb65fa3bffe963e52ecf18d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
