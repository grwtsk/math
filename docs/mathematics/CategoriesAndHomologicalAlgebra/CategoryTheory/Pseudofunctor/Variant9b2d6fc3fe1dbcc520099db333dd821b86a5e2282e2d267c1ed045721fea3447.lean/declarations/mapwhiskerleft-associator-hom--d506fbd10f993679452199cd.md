# mapWhiskerLeft_associator_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17be08a5-2a80-9b31-cf69-1da4689b5c2c",
  "kind": "lemma",
  "lexical_name": "mapWhiskerLeft_associator_hom",
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
  "slug": "mapwhiskerleft-associator-hom--d506fbd10f993679452199cd",
  "source": {
    "blob": "01d0dbc748f7f1d3ba2104fc74fec546d73d2da4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 116,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d506fbd10f993679452199cdb7c9b3de9a6d9a29f92d6f93eb83709aaf5a1e7a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17be08a5-2a80-9b31-cf69-1da4689b5c2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapWhiskerLeft_associator_hom (F : B ⥤ C) (G : C ⥤ D) (H : D ⥤ E) :
    mapWhiskerLeft _ (F.associator G H).hom =
      (mapCompRight A (F ⋙ G) H).hom ≫ whiskerRight (mapCompRight A F G).hom (mapPair (𝟭 A) H) ≫
      ((mapPair (𝟭 A) F).associator (mapPair (𝟭 A) G) (mapPair (𝟭 A) H)).hom ≫
      whiskerLeft (mapPair (𝟭 A) F) (mapCompRight A G H).inv ≫ (mapCompRight A F (G ⋙ H)).inv := by
  apply natTrans_ext <;> ext <;> simp [mapCompRight]

set_option backward.defeqAttrib.useBackward true in
variable (E) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01d0dbc748f7f1d3ba2104fc74fec546d73d2da4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
