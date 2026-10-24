# EnrichedCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed59592d4dd5adb46e3c42e579feefdc7e5d6bb29deb465163fc437277df246a",
  "kind": "class",
  "lexical_name": "EnrichedCategory",
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
  "slug": "enrichedcategory--032506f5011d327c6a9ee352",
  "source": {
    "blob": "31baaded183b94ad8c02cbc061cf419455b032ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:032506f5011d327c6a9ee352e4992867b547ddfc290307e703650407616ba569",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed59592d4dd5adb46e3c42e579feefdc7e5d6bb29deb465163fc437277df246a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class EnrichedCategory (C : Type u₁) where
  /-- `X ⟶[V] Y` is the `V` object of morphisms from `X` to `Y`. -/
  Hom : C → C → V
  /-- The identity morphism of this category -/
  id (X : C) : 𝟙_ V ⟶ Hom X X
  /-- Composition of two morphisms in this category -/
  comp (X Y Z : C) : Hom X Y ⊗ Hom Y Z ⟶ Hom X Z
  id_comp (X Y : C) : (λ_ (Hom X Y)).inv ≫ id X ▷ _ ≫ comp X X Y = 𝟙 _ := by cat_disch
  comp_id (X Y : C) : (ρ_ (Hom X Y)).inv ≫ _ ◁ id Y ≫ comp X Y Y = 𝟙 _ := by cat_disch
  assoc (W X Y Z : C) : (α_ _ _ _).inv ≫ comp W X Y ▷ _ ≫ comp W Y Z =
    _ ◁ comp X Y Z ≫ comp W X Z := by cat_disch

@[inherit_doc EnrichedCategory.Hom] notation3 X " ⟶[" V "] " Y:10 => (EnrichedCategory.Hom X Y : V)

variable {C : Type u₁} [EnrichedCategory V C]

/-- The `𝟙_ V`-shaped generalized element giving the identity in a `V`-enriched category.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0213b8fae2210924bfc868763eee3c1a549f7de84e4c4c1a637f92fcf893d1b8.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31baaded183b94ad8c02cbc061cf419455b032ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
