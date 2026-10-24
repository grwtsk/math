# Pseudofunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e8b8756272f1aa3f41f12cc191c0edeb1e82af034eecfeb8680a1e72d6eedb1",
  "kind": "structure",
  "lexical_name": "Pseudofunctor",
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
  "slug": "pseudofunctor--b0dd9be568da1e6f74bd0858",
  "source": {
    "blob": "286407b5dc4fe748e97b5ffc1c2b12985e1eda9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantd5ef476a4cbde70668b9be30cf9d8c09dd4478b17a9625abe2b9a12210e8fe1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0dd9be568da1e6f74bd0858093ad96d0be9b3ff91df417638313d6408a1eca0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantd5ef476a4cbde70668b9be30cf9d8c09dd4478b17a9625abe2b9a12210e8fe1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e8b8756272f1aa3f41f12cc191c0edeb1e82af034eecfeb8680a1e72d6eedb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Pseudofunctor (B : Type u₁) [Bicategory.{w₁, v₁} B] (C : Type u₂)
    [Bicategory.{w₂, v₂} C] extends PrelaxFunctor B C where
  mapId (a : B) : map (𝟙 a) ≅ 𝟙 (obj a)
  mapComp {a b c : B} (f : a ⟶ b) (g : b ⟶ c) : map (f ≫ g) ≅ map f ≫ map g
  map₂_whisker_left :
    ∀ {a b c : B} (f : a ⟶ b) {g h : b ⟶ c} (η : g ⟶ h),
      map₂ (f ◁ η) = (mapComp f g).hom ≫ map f ◁ map₂ η ≫ (mapComp f h).inv := by
    cat_disch
  map₂_whisker_right :
    ∀ {a b c : B} {f g : a ⟶ b} (η : f ⟶ g) (h : b ⟶ c),
      map₂ (η ▷ h) = (mapComp f h).hom ≫ map₂ η ▷ map h ≫ (mapComp g h).inv := by
    cat_disch
  map₂_associator :
    ∀ {a b c d : B} (f : a ⟶ b) (g : b ⟶ c) (h : c ⟶ d),
      map₂ (α_ f g h).hom = (mapComp (f ≫ g) h).hom ≫ (mapComp f g).hom ▷ map h ≫
      (α_ (map f) (map g) (map h)).hom ≫ map f ◁ (mapComp g h).inv ≫
      (mapComp f (g ≫ h)).inv := by
    cat_disch
  map₂_left_unitor :
    ∀ {a b : B} (f : a ⟶ b),
      map₂ (λ_ f).hom = (mapComp (𝟙 a) f).hom ≫ (mapId a).hom ▷ map f ≫ (λ_ (map f)).hom := by
    cat_disch
  map₂_right_unitor :
    ∀ {a b : B} (f : a ⟶ b),
      map₂ (ρ_ f).hom = (mapComp f (𝟙 b)).hom ≫ map f ◁ (mapId b).hom ≫ (ρ_ (map f)).hom := by
    cat_disch

/-- Notation for a pseudofunctor between bicategories. -/
-- Given similar precedence as ⥤ (26).
scoped[CategoryTheory.Bicategory] infixr:26 " ⥤ᵖ " => Pseudofunctor -- type as \func\^p

initialize_simps_projections Pseudofunctor (+toPrelaxFunctor, -obj, -map, -map₂)

namespace Pseudofunctor

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
attribute [simp, to_app (attr := reassoc)]
  map₂_whisker_left map₂_whisker_right map₂_associator map₂_left_unitor map₂_right_unitor

section

open Iso

/-- The underlying prelax functor. -/
add_decl_doc Pseudofunctor.toPrelaxFunctor


attribute [nolint docBlame] CategoryTheory.Pseudofunctor.mapId
  CategoryTheory.Pseudofunctor.mapComp
  CategoryTheory.Pseudofunctor.map₂_whisker_left
  CategoryTheory.Pseudofunctor.map₂_whisker_right
  CategoryTheory.Pseudofunctor.map₂_associator
  CategoryTheory.Pseudofunctor.map₂_left_unitor
  CategoryTheory.Pseudofunctor.map₂_right_unitor

variable (F : B ⥤ᵖ C)

/-- The oplax functor associated with a pseudofunctor. -/
@[implicit_reducible, simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantd5ef476a4cbde70668b9be30cf9d8c09dd4478b17a9625abe2b9a12210e8fe1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantd5ef476a4cbde70668b9be30cf9d8c09dd4478b17a9625abe2b9a12210e8fe1b.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `286407b5dc4fe748e97b5ffc1c2b12985e1eda9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
