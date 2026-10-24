# CategoryLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d258e1750ab6e7c096a30cb401d40adfbde14cca300643e390ab32169b5ad99d",
  "kind": "structure",
  "lexical_name": "CategoryLike",
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
  "slug": "categorylike--175c016ffc4efd6f167f68a4",
  "source": {
    "blob": "cacd72d4cfd9bf2aa312563ec0010c0395709673",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 29,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/MinimalCategoryCore/Variant50811f1519859628/CategoryData.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:175c016ffc4efd6f167f68a4b8a748bf334291727680d6e424232ff8a37de552",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/MinimalCategoryCore/Variant50811f1519859628/CategoryData.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d258e1750ab6e7c096a30cb401d40adfbde14cca300643e390ab32169b5ad99d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CategoryLike where
  Obj : Type uObj
  Hom : Obj → Obj → Type uHom
  id : (X : Obj) → Hom X X
  comp : {X Y Z : Obj} → Hom X Y → Hom Y Z → Hom X Z
  id_comp :
    ∀ {X Y : Obj} (f : Hom X Y),
      comp (id X) f = f
  comp_id :
    ∀ {X Y : Obj} (f : Hom X Y),
      comp f (id Y) = f
  assoc :
    ∀ {W X Y Z : Obj}
      (f : Hom W X) (g : Hom X Y) (h : Hom Y Z),
      comp (comp f g) h = comp f (comp g h)

end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.MinimalCategoryCore.Variant50811f1519859628
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/MinimalCategoryCore/Variant50811f1519859628/CategoryData.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/MinimalCategoryCore/Variant50811f1519859628/CategoryData.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cacd72d4cfd9bf2aa312563ec0010c0395709673` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
