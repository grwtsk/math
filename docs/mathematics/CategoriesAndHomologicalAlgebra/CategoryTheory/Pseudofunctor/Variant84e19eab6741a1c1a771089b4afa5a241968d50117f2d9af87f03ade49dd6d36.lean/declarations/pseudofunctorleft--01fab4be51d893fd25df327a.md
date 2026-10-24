# pseudofunctorLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43a97208c17179b586f33538635a8bf9a1691763ac68dc85b6004384f8c08dc8",
  "kind": "def",
  "lexical_name": "pseudofunctorLeft",
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
  "slug": "pseudofunctorleft--01fab4be51d893fd25df327a",
  "source": {
    "blob": "a3fa4d9f5f9e30f9b53fc943f3149ae96e1b2bd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 181,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant84e19eab6741a1c1a771089b4afa5a241968d50117f2d9af87f03ade49dd6d36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01fab4be51d893fd25df327a60981b4b1252b0d26541e2bb6e93ec4ecd625f02",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant84e19eab6741a1c1a771089b4afa5a241968d50117f2d9af87f03ade49dd6d36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43a97208c17179b586f33538635a8bf9a1691763ac68dc85b6004384f8c08dc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pseudofunctorLeft (D : Type u₂) [Category.{v₂} D] :
    Pseudofunctor Cat.{v₁, u₁} Cat.{max v₁ v₂, max u₁ u₂} where
  obj C := ↧(C ⋆ D)
  map F := (mapPair F.toFunctor (𝟭 D)).toCatHom
  map₂ := (mapWhiskerRight ·.toNatTrans _ |>.toCatHom₂)
  mapId D := Cat.Hom.isoMk <| mapPairId
  mapComp _ _ := Cat.Hom.isoMk <| mapCompLeft D _ _
  map₂_whisker_left := by intros; exact congr($(mapWhiskerRight_whiskerLeft D _ _).toCatHom₂)
  map₂_whisker_right := by intros; exact congr($(mapWhiskerRight_whiskerRight D _ _).toCatHom₂)
  map₂_associator := by intros; exact congr($(mapWhiskerRight_associator_hom D _ _ _).toCatHom₂)
  map₂_left_unitor := by intros; exact congr($(mapWhiskerRight_leftUnitor_hom D _).toCatHom₂)
  map₂_right_unitor := by intros; exact congr($(mapWhiskerRight_rightUnitor_hom D _).toCatHom₂)

end CategoryTheory.Join
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant84e19eab6741a1c1a771089b4afa5a241968d50117f2d9af87f03ade49dd6d36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant84e19eab6741a1c1a771089b4afa5a241968d50117f2d9af87f03ade49dd6d36.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3fa4d9f5f9e30f9b53fc943f3149ae96e1b2bd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
