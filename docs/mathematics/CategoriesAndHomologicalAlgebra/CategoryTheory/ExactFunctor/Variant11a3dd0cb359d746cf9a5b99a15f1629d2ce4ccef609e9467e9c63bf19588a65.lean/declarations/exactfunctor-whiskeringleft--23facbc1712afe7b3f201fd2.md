# ExactFunctor.whiskeringLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b8e50839392ab02e90bf1afbd8e60421008611f6715e73baf5d036b1d313f74",
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
  "slug": "exactfunctor-whiskeringleft--23facbc1712afe7b3f201fd2",
  "source": {
    "blob": "ce362a5b87283fc8b627a19c1f01640889b8490f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 285,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant11a3dd0cb359d746cf9a5b99a15f1629d2ce4ccef609e9467e9c63bf19588a65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23facbc1712afe7b3f201fd2cb145f290366c2f230517b0b5537b765fff31f30",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant11a3dd0cb359d746cf9a5b99a15f1629d2ce4ccef609e9467e9c63bf19588a65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b8e50839392ab02e90bf1afbd8e60421008611f6715e73baf5d036b1d313f74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ExactFunctor.whiskeringLeft : (C ⥤ₑ D) ⥤ (D ⥤ₑ E) ⥤ (C ⥤ₑ E) where
  obj F := ObjectProperty.lift _ (forget _ _ ⋙ (Functor.whiskeringLeft C D E).obj F.obj)
    (fun G => ⟨by dsimp; exact comp_preservesFiniteLimits _ _,
      by dsimp; exact comp_preservesFiniteColimits _ _⟩)
  map {F G} η :=
    { app H := ObjectProperty.homMk (((Functor.whiskeringLeft C D E).map η.hom).app H.obj) }

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- Whiskering an exact functor by an exact functor yields an exact functor. -/
@[simps! obj_obj_obj obj_map map_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant11a3dd0cb359d746cf9a5b99a15f1629d2ce4ccef609e9467e9c63bf19588a65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant11a3dd0cb359d746cf9a5b99a15f1629d2ce4ccef609e9467e9c63bf19588a65.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce362a5b87283fc8b627a19c1f01640889b8490f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
