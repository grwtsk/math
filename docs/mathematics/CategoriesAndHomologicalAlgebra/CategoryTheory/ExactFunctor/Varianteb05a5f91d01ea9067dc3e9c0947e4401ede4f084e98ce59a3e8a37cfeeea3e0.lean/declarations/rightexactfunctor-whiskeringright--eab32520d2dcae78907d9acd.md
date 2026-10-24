# RightExactFunctor.whiskeringRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8df93448053cf31a8f8af8237a2191382e0893ce0dc31924f0df174fd24e11d",
  "kind": "def",
  "lexical_name": "RightExactFunctor.whiskeringRight",
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
  "slug": "rightexactfunctor-whiskeringright--eab32520d2dcae78907d9acd",
  "source": {
    "blob": "b316dabb13769733e1a72858bf60e984d4cac992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 267,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Varianteb05a5f91d01ea9067dc3e9c0947e4401ede4f084e98ce59a3e8a37cfeeea3e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eab32520d2dcae78907d9acd9669c4cfde905bf162d52b88f3a3cd3f49b10685",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Varianteb05a5f91d01ea9067dc3e9c0947e4401ede4f084e98ce59a3e8a37cfeeea3e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c8df93448053cf31a8f8af8237a2191382e0893ce0dc31924f0df174fd24e11d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RightExactFunctor.whiskeringRight : (D ⥤ᵣ E) ⥤ (C ⥤ᵣ D) ⥤ (C ⥤ᵣ E) where
  obj F := ObjectProperty.lift _ (forget _ _ ⋙ (Functor.whiskeringRight C D E).obj F.obj)
    (fun G => by dsimp; exact comp_preservesFiniteColimits _ _)
  map {F G} η :=
    { app H := ObjectProperty.homMk (((Functor.whiskeringRight C D E).map η.hom).app H.obj) }

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- Whiskering an exact functor by an exact functor yields an exact functor. -/
@[simps! obj_obj_obj obj_map map_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Varianteb05a5f91d01ea9067dc3e9c0947e4401ede4f084e98ce59a3e8a37cfeeea3e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Varianteb05a5f91d01ea9067dc3e9c0947e4401ede4f084e98ce59a3e8a37cfeeea3e0.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b316dabb13769733e1a72858bf60e984d4cac992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
