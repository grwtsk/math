# whiskeringObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2209a89f60916a68527c8e09d9ccdd253a14ef3d9903f1aa91f99982068d8de6",
  "kind": "def",
  "lexical_name": "whiskeringObj",
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
  "slug": "whiskeringobj--e246b8af8ef1f3bf9cc68c01",
  "source": {
    "blob": "29069176967e09346e094802957946da71839976",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 358,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialObject/Variantdb3d30c68c3e62bca8976539f654adb4d87cb942e22a1cd68568f9afaa555546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e246b8af8ef1f3bf9cc68c01668bcb980291756e52dd99c3ad2fcb0aa6065208",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialObject/Variantdb3d30c68c3e62bca8976539f654adb4d87cb942e22a1cd68568f9afaa555546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2209a89f60916a68527c8e09d9ccdd253a14ef3d9903f1aa91f99982068d8de6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def whiskeringObj (D : Type*) [Category D] (F : C ⥤ D) : Augmented C ⥤ Augmented D where
  obj X :=
    { left := ((whiskering _ _).obj F).obj (drop.obj X)
      right := F.obj (point.obj X)
      hom := whiskerRight X.hom F ≫ (Functor.constComp _ _ _).hom }
  map η :=
    { left := whiskerRight η.left _
      right := F.map η.right
      w := by
        ext
        dsimp [whiskerRight]
        simp only [Category.comp_id, ← F.map_comp, ← NatTrans.comp_app]
        erw [η.w]
        rfl }
#align category_theory.simplicial_object.augmented.whiskering_obj CategoryTheory.SimplicialObject.Augmented.whiskeringObj

/-- Functor composition induces a functor on augmented simplicial objects. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialObject/Variantdb3d30c68c3e62bca8976539f654adb4d87cb942e22a1cd68568f9afaa555546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialObject/Variantdb3d30c68c3e62bca8976539f654adb4d87cb942e22a1cd68568f9afaa555546.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29069176967e09346e094802957946da71839976` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
