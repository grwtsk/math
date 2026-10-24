# associativityIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09b9f0001c96ea3752c62b114384fb23d68b478f8e366093bef1050ede371f32",
  "kind": "def",
  "lexical_name": "associativityIso",
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
  "slug": "associativityiso--b7612154f9c040ffe754ac3d",
  "source": {
    "blob": "07f6eb399c3cb5eb6a473a46356053a5eb47838d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 381,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HoFunctorMonoidal/Variant95a9007fa57ba844c5af50f55775bd99ee80d379f7dfefa23de26562bef8be61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7612154f9c040ffe754ac3d9bd7af4252388c63673ec1ca78d88e78c3256274",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HoFunctorMonoidal/Variant95a9007fa57ba844c5af50f55775bd99ee80d379f7dfefa23de26562bef8be61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09b9f0001c96ea3752c62b114384fb23d68b478f8e366093bef1050ede371f32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def associativityIso :
    (inverse X Y).prod (𝟭 _) ⋙ inverse (X ⊗ Y) Z ⋙ mapHomotopyCategory (α_ _ _ _).hom ≅
      (prod.associativity _ _ _).functor ⋙ Functor.prod (𝟭 _) (inverse Y Z) ⋙
        inverse X (Y ⊗ Z) :=
  (Functor.leftUnitor _).symm ≪≫ isoWhiskerRight (Equivalence.unitIso _) _ ≪≫
    associator _ _ _ ≪≫
    isoWhiskerLeft (prod.associativity _ _ _).functor (associativity'Iso X Y Z)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
variable {X Y Z} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HoFunctorMonoidal/Variant95a9007fa57ba844c5af50f55775bd99ee80d379f7dfefa23de26562bef8be61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HoFunctorMonoidal/Variant95a9007fa57ba844c5af50f55775bd99ee80d379f7dfefa23de26562bef8be61.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07f6eb399c3cb5eb6a473a46356053a5eb47838d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
