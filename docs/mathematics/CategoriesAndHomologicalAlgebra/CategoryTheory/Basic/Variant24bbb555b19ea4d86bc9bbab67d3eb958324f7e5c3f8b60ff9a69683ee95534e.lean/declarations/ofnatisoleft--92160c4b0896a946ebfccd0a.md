# ofNatIsoLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8cb96572335edd86d523a3ef581f1db6b47316e3e8a9e56f02220829dc0f620f",
  "kind": "def",
  "lexical_name": "ofNatIsoLeft",
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
  "slug": "ofnatisoleft--92160c4b0896a946ebfccd0a",
  "source": {
    "blob": "6bf07d806588471a5794fd565c6768734a4efe48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 503,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant24bbb555b19ea4d86bc9bbab67d3eb958324f7e5c3f8b60ff9a69683ee95534e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92160c4b0896a946ebfccd0a7b5b01728d622fdea493970483ea5a4d11313082",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant24bbb555b19ea4d86bc9bbab67d3eb958324f7e5c3f8b60ff9a69683ee95534e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8cb96572335edd86d523a3ef581f1db6b47316e3e8a9e56f02220829dc0f620f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofNatIsoLeft {F G : C ⥤ D} {H : D ⥤ C} (adj : F ⊣ H) (iso : F ≅ G) : G ⊣ H where
  unit := adj.unit ≫ Functor.whiskerRight iso.hom _
  counit := Functor.whiskerLeft _ iso.inv ≫ adj.counit
  left_triangle_components X := by
    simp only [Functor.id_obj, Functor.comp_obj, NatTrans.comp_app, Functor.whiskerRight_app,
      Functor.map_comp, Functor.whiskerLeft_app, Category.assoc, NatTrans.naturality_assoc]
    simp [← Functor.comp_map]
  right_triangle_components := by simp [← Functor.map_comp]

@[to_dual none]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant24bbb555b19ea4d86bc9bbab67d3eb958324f7e5c3f8b60ff9a69683ee95534e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant24bbb555b19ea4d86bc9bbab67d3eb958324f7e5c3f8b60ff9a69683ee95534e.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bf07d806588471a5794fd565c6768734a4efe48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
