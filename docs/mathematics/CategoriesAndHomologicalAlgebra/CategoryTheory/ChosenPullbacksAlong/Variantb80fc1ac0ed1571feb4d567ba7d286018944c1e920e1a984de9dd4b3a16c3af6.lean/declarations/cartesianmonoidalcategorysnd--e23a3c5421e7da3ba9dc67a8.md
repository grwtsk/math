# cartesianMonoidalCategorySnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f52745b592f32e19312cb47730c4e9ee5bcbeabcf0d2dd4216df82df0fbe6e8",
  "kind": "def",
  "lexical_name": "cartesianMonoidalCategorySnd",
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
  "slug": "cartesianmonoidalcategorysnd--e23a3c5421e7da3ba9dc67a8",
  "source": {
    "blob": "96ef2d048ee4ffb7539a7ff63298136f847448c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 169,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChosenPullbacksAlong/Variantb80fc1ac0ed1571feb4d567ba7d286018944c1e920e1a984de9dd4b3a16c3af6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e23a3c5421e7da3ba9dc67a8fdbed91a5894b34a795a01cf7fca2472489012de",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChosenPullbacksAlong/Variantb80fc1ac0ed1571feb4d567ba7d286018944c1e920e1a984de9dd4b3a16c3af6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f52745b592f32e19312cb47730c4e9ee5bcbeabcf0d2dd4216df82df0fbe6e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cartesianMonoidalCategorySnd [CartesianMonoidalCategory C] (X Y : C) :
    ChosenPullbacksAlong (snd X Y : X ⊗ Y ⟶ Y) where
  pullback.obj Z := Over.mk (X ◁ Z.hom)
  pullback.map g := Over.homMk (X ◁ g.left)
  mapPullbackAdj.unit.app T := Over.homMk (lift (T.hom ≫ fst _ _) (𝟙 _))
  mapPullbackAdj.counit.app U := Over.homMk (snd _ _)

section PullbackFromChosenPullbacksAlongs

variable {Y Z X : C} (f : Y ⟶ X) (g : Z ⟶ X) [ChosenPullbacksAlong g]

/-- The underlying object of the chosen pullback along `g` of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChosenPullbacksAlong/Variantb80fc1ac0ed1571feb4d567ba7d286018944c1e920e1a984de9dd4b3a16c3af6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChosenPullbacksAlong/Variantb80fc1ac0ed1571feb4d567ba7d286018944c1e920e1a984de9dd4b3a16c3af6.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96ef2d048ee4ffb7539a7ff63298136f847448c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
