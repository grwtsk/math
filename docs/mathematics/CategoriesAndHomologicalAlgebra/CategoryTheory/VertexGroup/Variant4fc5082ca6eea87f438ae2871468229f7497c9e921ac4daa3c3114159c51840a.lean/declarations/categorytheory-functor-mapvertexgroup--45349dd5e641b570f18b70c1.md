# CategoryTheory.Functor.mapVertexGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1c0d97ef1e34d0271b334dc01a945436fa1d586fff0217341f62b365fba80c7",
  "kind": "def",
  "lexical_name": "CategoryTheory.Functor.mapVertexGroup",
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
  "slug": "categorytheory-functor-mapvertexgroup--45349dd5e641b570f18b70c1",
  "source": {
    "blob": "da07c5a211ee4a0db93d4ae6046b76e157c43d24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant4fc5082ca6eea87f438ae2871468229f7497c9e921ac4daa3c3114159c51840a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45349dd5e641b570f18b70c10d6c4a9a44e7d017aad6fc7dd91a10b81bbf1dc6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant4fc5082ca6eea87f438ae2871468229f7497c9e921ac4daa3c3114159c51840a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1c0d97ef1e34d0271b334dc01a945436fa1d586fff0217341f62b365fba80c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CategoryTheory.Functor.mapVertexGroup {D : Type v} [Groupoid D] (φ : C ⥤ D) (c : C) :
    (c ⟶ c) →* (φ.obj c ⟶ φ.obj c) where
  toFun := φ.map
  map_one' := φ.map_id c
  map_mul' := φ.map_comp
#align category_theory.functor.map_vertex_group CategoryTheory.Groupoid.CategoryTheory.Functor.mapVertexGroup

end Groupoid

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant4fc5082ca6eea87f438ae2871468229f7497c9e921ac4daa3c3114159c51840a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant4fc5082ca6eea87f438ae2871468229f7497c9e921ac4daa3c3114159c51840a.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da07c5a211ee4a0db93d4ae6046b76e157c43d24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
