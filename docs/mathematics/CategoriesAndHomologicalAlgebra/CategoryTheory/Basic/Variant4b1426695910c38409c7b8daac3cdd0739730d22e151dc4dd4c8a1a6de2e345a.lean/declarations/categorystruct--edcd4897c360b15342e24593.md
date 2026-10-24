# CategoryStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db8b6518bab3c16cc9f2eb6e36602ef018dfd4c2ce9a0aa7428ce60161f4a6bb",
  "kind": "class",
  "lexical_name": "CategoryStruct",
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
  "slug": "categorystruct--edcd4897c360b15342e24593",
  "source": {
    "blob": "39c8281afdb7c752229044f8134ce20c505c59f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 93,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edcd4897c360b15342e245938666f97ba782fde0807cdb3ed5ee3f6dca078c72",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db8b6518bab3c16cc9f2eb6e36602ef018dfd4c2ce9a0aa7428ce60161f4a6bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class CategoryStruct (obj : Type u) : Type max u (v + 1) extends Quiver.{v + 1} obj where
  /-- The identity morphism on an object. -/
  id : ∀ X : obj, Hom X X
  /-- Composition of morphisms in a category, written `f ≫ g`. -/
  comp : ∀ {X Y Z : obj}, (X ⟶ Y) → (Y ⟶ Z) → (X ⟶ Z)

initialize_simps_projections CategoryStruct (-toQuiver_Hom)

/-- Notation for the identity morphism in a category. -/
scoped notation "𝟙" => CategoryStruct.id  -- type as \b1

/-- Notation for composition of morphisms in a category. -/
scoped infixr:80 " ≫ " => CategoryStruct.comp -- type as \gg

/-- Close the main goal with `sorry` if its type contains `sorry`, and fail otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b1426695910c38409c7b8daac3cdd0739730d22e151dc4dd4c8a1a6de2e345a.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39c8281afdb7c752229044f8134ce20c505c59f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
