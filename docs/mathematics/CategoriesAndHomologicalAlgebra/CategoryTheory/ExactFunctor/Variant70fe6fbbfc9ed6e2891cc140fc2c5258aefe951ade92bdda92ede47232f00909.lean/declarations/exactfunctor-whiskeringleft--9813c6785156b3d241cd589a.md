# ExactFunctor.whiskeringLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:548d9b45b23b68700a02e3be8062397399ba169158e1700bae098c61110902c4",
  "kind": "def",
  "lexical_name": "ExactFunctor.whiskeringLeft",
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
  "slug": "exactfunctor-whiskeringleft--9813c6785156b3d241cd589a",
  "source": {
    "blob": "23cc699076f4e07e4720a6c48310162e006b0c12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 275,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant70fe6fbbfc9ed6e2891cc140fc2c5258aefe951ade92bdda92ede47232f00909.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9813c6785156b3d241cd589a4fa7c8acc073ec9a5e0951ed493f209a1f8935e5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant70fe6fbbfc9ed6e2891cc140fc2c5258aefe951ade92bdda92ede47232f00909.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:548d9b45b23b68700a02e3be8062397399ba169158e1700bae098c61110902c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ExactFunctor.whiskeringLeft : (C ⥤ₑ D) ⥤ (D ⥤ₑ E) ⥤ (C ⥤ₑ E) where
  obj F := ObjectProperty.lift _ (forget _ _ ⋙ (CategoryTheory.whiskeringLeft C D E).obj F.obj)
    (fun G => ⟨by dsimp; exact comp_preservesFiniteLimits _ _,
      by dsimp; exact comp_preservesFiniteColimits _ _⟩)
  map {F G} η :=
    { app := fun H => ((CategoryTheory.whiskeringLeft C D E).map η).app H.obj
      naturality := fun _ _ f => ((CategoryTheory.whiskeringLeft C D E).map η).naturality f }
  map_id X := by
    rw [ObjectProperty.FullSubcategory.id_def]
    aesop_cat
  map_comp f g := by
    rw [ObjectProperty.FullSubcategory.comp_def]
    aesop_cat

/-- Whiskering an exact functor by an exact functor yields an exact functor. -/
@[simps! obj_obj obj_map map_app_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant70fe6fbbfc9ed6e2891cc140fc2c5258aefe951ade92bdda92ede47232f00909.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant70fe6fbbfc9ed6e2891cc140fc2c5258aefe951ade92bdda92ede47232f00909.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23cc699076f4e07e4720a6c48310162e006b0c12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
