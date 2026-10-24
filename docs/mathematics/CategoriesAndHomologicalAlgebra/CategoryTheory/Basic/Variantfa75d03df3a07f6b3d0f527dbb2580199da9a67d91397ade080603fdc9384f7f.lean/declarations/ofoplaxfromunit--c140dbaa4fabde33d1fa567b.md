# ofOplaxFromUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21cf22e404f9801c89ff5d711cde5a5fbc7b4c1fbfef875fb50145cfd9b7b77f",
  "kind": "def",
  "lexical_name": "ofOplaxFromUnit",
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
  "slug": "ofoplaxfromunit--c140dbaa4fabde33d1fa567b",
  "source": {
    "blob": "ad6c4a4c138fe2e78385c19099d60aa379202874",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 89,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c140dbaa4fabde33d1fa567bba89e5e209566004afccf38a005f2b05372fe087",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21cf22e404f9801c89ff5d711cde5a5fbc7b4c1fbfef875fb50145cfd9b7b77f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofOplaxFromUnit (F : LocallyDiscrete (Discrete Unit) ⥤ᵒᵖᴸ B) :
    Comonad (F.map (𝟙 ⟨⟨Unit.unit⟩⟩)) where
  comul := F.map₂ (ρ_ _).inv ≫ F.mapComp _ _
  counit := F.mapId _
  comul_assoc := by
    simp only [tensorObj_def, MonoidalCategory.whiskerLeft_comp, whiskerLeft_def, Category.assoc,
      MonoidalCategory.comp_whiskerRight, whiskerRight_def, associator_def]
    rw [← F.mapComp_naturality_left_assoc, ← F.mapComp_naturality_right_assoc]
    simp only [whiskerLeft_rightUnitor_inv, PrelaxFunctor.map₂_comp, Category.assoc,
      OplaxFunctor.map₂_associator, whiskerRight_id, Iso.hom_inv_id_assoc]
  counit_comul := by
    simp only [tensorUnit_def, tensorObj_def, whiskerRight_def, Category.assoc, leftUnitor_def]
    rw [F.mapComp_id_left, unitors_equal, F.map₂_inv_hom_assoc]
  comul_counit := by
    simp only [tensorUnit_def, tensorObj_def, whiskerLeft_def, rightUnitor_def]
    rw [Category.assoc, F.mapComp_id_right, F.map₂_inv_hom_assoc]

/-- A comonad in `B` defines an oplax functor from the trivial bicategory to `B`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa75d03df3a07f6b3d0f527dbb2580199da9a67d91397ade080603fdc9384f7f.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad6c4a4c138fe2e78385c19099d60aa379202874` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
