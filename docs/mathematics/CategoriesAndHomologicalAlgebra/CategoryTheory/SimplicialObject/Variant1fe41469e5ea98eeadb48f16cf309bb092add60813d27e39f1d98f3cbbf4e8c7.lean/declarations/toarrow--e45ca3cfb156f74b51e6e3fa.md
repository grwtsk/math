# toArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:599f50a681e09884dd284d9b46ea1eb958e9432994cb203bfa5ea29e811754d7",
  "kind": "def",
  "lexical_name": "toArrow",
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
  "slug": "toarrow--e45ca3cfb156f74b51e6e3fa",
  "source": {
    "blob": "5367e26619221b256e43e6de80ff455d04b44c3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 323,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialObject/Variant1fe41469e5ea98eeadb48f16cf309bb092add60813d27e39f1d98f3cbbf4e8c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e45ca3cfb156f74b51e6e3fafc0af168e899d5c035ff15569296012f0a79684a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialObject/Variant1fe41469e5ea98eeadb48f16cf309bb092add60813d27e39f1d98f3cbbf4e8c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:599f50a681e09884dd284d9b46ea1eb958e9432994cb203bfa5ea29e811754d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toArrow : Augmented C ⥤ Arrow C where
  obj X :=
    { left := drop.obj X _[0]
      right := point.obj X
      hom := X.hom.app _ }
  map η :=
    { left := (drop.map η).app _
      right := point.map η
      w := by
        dsimp
        rw [← NatTrans.comp_app]
        erw [η.w]
        rfl }
#align category_theory.simplicial_object.augmented.to_arrow CategoryTheory.SimplicialObject.Augmented.toArrow

/-- The compatibility of a morphism with the augmentation, on 0-simplices -/
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialObject/Variant1fe41469e5ea98eeadb48f16cf309bb092add60813d27e39f1d98f3cbbf4e8c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialObject/Variant1fe41469e5ea98eeadb48f16cf309bb092add60813d27e39f1d98f3cbbf4e8c7.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5367e26619221b256e43e6de80ff455d04b44c3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
