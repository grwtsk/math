# colimitCompWhiskeringRightIsoColimitComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0de7005d3b1f236b1ffb291f98d3e633bc62079cb7ba5125e94dcc91d97e109",
  "kind": "def",
  "lexical_name": "colimitCompWhiskeringRightIsoColimitComp",
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
  "slug": "colimitcompwhiskeringrightisocolimitcomp--96b2ef556361cbca730f5dab",
  "source": {
    "blob": "a7d0e1961c8b7e876644cc235b1d138e9bb1bfde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 184,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant184633153d11e8c42597b8d45a7bb24d21e8bd21c9d87910d9c08644da3caf6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96b2ef556361cbca730f5dab8cda0be22a2855c868bea28fc0ab706cfc849d21",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant184633153d11e8c42597b8d45a7bb24d21e8bd21c9d87910d9c08644da3caf6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0de7005d3b1f236b1ffb291f98d3e633bc62079cb7ba5125e94dcc91d97e109`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitCompWhiskeringRightIsoColimitComp {C : Type*} [Category* C] {D : Type*}
    [Category* D] {E : Type*} [Category* E] {J : Type*} [Category* J]
    [HasColimitsOfShape J D] (F : D ⥤ E) [PreservesColimitsOfShape J F] (G : J ⥤ C ⥤ D) :
    colimit (G ⋙ (whiskeringRight _ _ _).obj F) ≅ colimit G ⋙ F :=
  (preservesColimitIso _ _).symm

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant184633153d11e8c42597b8d45a7bb24d21e8bd21c9d87910d9c08644da3caf6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant184633153d11e8c42597b8d45a7bb24d21e8bd21c9d87910d9c08644da3caf6a.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7d0e1961c8b7e876644cc235b1d138e9bb1bfde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
