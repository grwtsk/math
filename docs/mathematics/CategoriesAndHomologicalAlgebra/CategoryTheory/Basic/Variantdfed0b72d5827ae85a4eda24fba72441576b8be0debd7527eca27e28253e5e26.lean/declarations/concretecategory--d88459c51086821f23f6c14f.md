# ConcreteCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53e8fe8e2ee8b1db9cd1b88322020be9c32d68ea22a896099ebdd06bf70fe843",
  "kind": "class",
  "lexical_name": "ConcreteCategory",
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
  "slug": "concretecategory--d88459c51086821f23f6c14f",
  "source": {
    "blob": "d3ed98208fef14caf83f199a211498248f395208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 256,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdfed0b72d5827ae85a4eda24fba72441576b8be0debd7527eca27e28253e5e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d88459c51086821f23f6c14f01f58fed7f8a64fe2e1fe4f736831fa372926e87",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdfed0b72d5827ae85a4eda24fba72441576b8be0debd7527eca27e28253e5e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53e8fe8e2ee8b1db9cd1b88322020be9c32d68ea22a896099ebdd06bf70fe843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ConcreteCategory (C : Type u) [Category.{v} C]
    (FC : outParam <| C → C → Type*) {CC : outParam <| C → Type w}
    [outParam <| ∀ X Y, FunLike (FC X Y) (CC X) (CC Y)] where
  /-- Convert a morphism of `C` to a bundled function. -/
  (hom : ∀ {X Y}, (X ⟶ Y) → FC X Y)
  /-- Convert a bundled function to a morphism of `C`. -/
  (ofHom : ∀ {X Y}, FC X Y → (X ⟶ Y))
  (hom_ofHom : ∀ {X Y} (f : FC X Y), hom (ofHom f) = f := by aesop_cat)
  (ofHom_hom : ∀ {X Y} (f : X ⟶ Y), ofHom (hom f) = f := by aesop_cat)
  (id_apply : ∀ {X} (x : CC X), hom (𝟙 X) x = x := by aesop_cat)
  (comp_apply : ∀ {X Y Z} (f : X ⟶ Y) (g : Y ⟶ Z) (x : CC X),
    hom (f ≫ g) x = hom g (hom f x) := by aesop_cat)

export ConcreteCategory (id_apply comp_apply)

variable {C : Type u} [Category.{v} C] {FC : C → C → Type*} {CC : C → Type w}
variable [∀ X Y, FunLike (FC X Y) (CC X) (CC Y)]
variable [ConcreteCategory C FC]

/-- `ToType X` converts the object `X` of the concrete category `C` to a type.

This is an `abbrev` so that instances on `X` (e.g. `Ring`) do not need to be redeclared.
-/
@[nolint unusedArguments] -- Need the instance to trigger unification that finds `CC`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdfed0b72d5827ae85a4eda24fba72441576b8be0debd7527eca27e28253e5e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdfed0b72d5827ae85a4eda24fba72441576b8be0debd7527eca27e28253e5e26.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3ed98208fef14caf83f199a211498248f395208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
