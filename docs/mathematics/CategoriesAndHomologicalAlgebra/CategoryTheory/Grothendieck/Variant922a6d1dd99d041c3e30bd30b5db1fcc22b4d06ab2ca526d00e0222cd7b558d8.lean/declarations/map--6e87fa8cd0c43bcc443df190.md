# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b843d9eebc8f5f5b6395920ad00adda118c771ddc1a6e3d06f1977ad48db4d5",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--6e87fa8cd0c43bcc443df190",
  "source": {
    "blob": "57765911852f92dbaff209e5c24c855bdbb9e7be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 235,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant922a6d1dd99d041c3e30bd30b5db1fcc22b4d06ab2ca526d00e0222cd7b558d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e87fa8cd0c43bcc443df190e43bddd0c336225bae4bcd72b45a75752e27f374",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant922a6d1dd99d041c3e30bd30b5db1fcc22b4d06ab2ca526d00e0222cd7b558d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b843d9eebc8f5f5b6395920ad00adda118c771ddc1a6e3d06f1977ad48db4d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map (α : F ⟶ G) : Grothendieck F ⥤ Grothendieck G where
  obj X :=
  { base := X.base
    fiber := (α.app X.base).obj X.fiber }
  map {X Y} f :=
  { base := f.base
    fiber := (eqToHom (α.naturality f.base).symm).app X.fiber ≫ (α.app Y.base).map f.fiber }
  map_id X := by simp only [Cat.eqToHom_app, id_fiber, eqToHom_map, eqToHom_trans]; rfl
  map_comp {X Y Z} f g := by
    dsimp
    congr 1
    simp only [comp_fiber f g, ← Category.assoc, Functor.map_comp, eqToHom_map]
    congr 1
    simp only [Cat.eqToHom_app, Cat.comp_obj, eqToHom_trans, eqToHom_map, Category.assoc,
      ← Cat.comp_map]
    rw [Functor.congr_hom (α.naturality g.base).symm f.fiber]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant922a6d1dd99d041c3e30bd30b5db1fcc22b4d06ab2ca526d00e0222cd7b558d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant922a6d1dd99d041c3e30bd30b5db1fcc22b4d06ab2ca526d00e0222cd7b558d8.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57765911852f92dbaff209e5c24c855bdbb9e7be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
