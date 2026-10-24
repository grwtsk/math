# projectMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f4affa13c7e8cc7ff7e803512cef9725322257a326ffcf5ac27de1de8169b38",
  "kind": "def",
  "lexical_name": "projectMap",
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
  "slug": "projectmap--98ede5a3cb898cbf7cb76bbe",
  "source": {
    "blob": "a5cf2907343ea0bfd65e5f99eb7a4b7ae53066bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 296,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98ede5a3cb898cbf7cb76bbeea3dca852e11acbdea79fb69675ba7e4debf3e7d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f4affa13c7e8cc7ff7e803512cef9725322257a326ffcf5ac27de1de8169b38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def projectMap (X Y : F C) : (X ⟶ Y) → (projectObj f X ⟶ projectObj f Y) :=
  Quotient.lift (projectMapAux f) <| by
    intro f g h
    induction h with
    | refl => rfl
    | symm _ _ _ hfg' => exact hfg'.symm
    | trans _ _ hfg hgh => exact hfg.trans hgh
    | comp _ _ hf hg => dsimp only [projectMapAux]; rw [hf, hg]
    | tensor _ _ hfg hfg' => dsimp only [projectMapAux]; rw [hfg, hfg']
    | comp_id => dsimp only [projectMapAux]; rw [Category.comp_id]
    | id_comp => dsimp only [projectMapAux]; rw [Category.id_comp]
    | assoc => dsimp only [projectMapAux]; rw [Category.assoc]
    | tensor_id => dsimp only [projectMapAux]; rw [MonoidalCategory.tensor_id]; rfl
    | tensor_comp => dsimp only [projectMapAux]; rw [MonoidalCategory.tensor_comp]
    | α_hom_inv => dsimp only [projectMapAux]; rw [Iso.hom_inv_id]
    | α_inv_hom => dsimp only [projectMapAux]; rw [Iso.inv_hom_id]
    | associator_naturality =>
        dsimp only [projectMapAux]; rw [MonoidalCategory.associator_naturality]
    | ρ_hom_inv => dsimp only [projectMapAux]; rw [Iso.hom_inv_id]
    | ρ_inv_hom => dsimp only [projectMapAux]; rw [Iso.inv_hom_id]
    | ρ_naturality =>
        dsimp only [projectMapAux, projectObj]; rw [MonoidalCategory.rightUnitor_naturality]
    | l_hom_inv => dsimp only [projectMapAux]; rw [Iso.hom_inv_id]
    | l_inv_hom => dsimp only [projectMapAux]; rw [Iso.inv_hom_id]
    | l_naturality =>
        dsimp only [projectMapAux, projectObj]
        exact MonoidalCategory.leftUnitor_naturality _
    | pentagon =>
        dsimp only [projectMapAux]
        exact MonoidalCategory.pentagon _ _ _ _
    | triangle =>
        dsimp only [projectMapAux]
        exact MonoidalCategory.triangle _ _
#align category_theory.free_monoidal_category.project_map CategoryTheory.FreeMonoidalCategory.projectMap

end

/-- If `D` is a monoidal category and we have a function `C → D`, then we have a functor from the
    free monoidal category over `C` to the category `D`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5cf2907343ea0bfd65e5f99eb7a4b7ae53066bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
