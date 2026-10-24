# InducingFunctorData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:daa4e451b92d435f00196d947c03f0f9ca15185cf18666a8168a578bd70d4358",
  "kind": "structure",
  "lexical_name": "InducingFunctorData",
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
  "slug": "inducingfunctordata--3ba647e203673f6a3535a386",
  "source": {
    "blob": "ceb5f4ae062bb31a6cc34a077ed55afed0b7e75e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ba647e203673f6a3535a386fbc2fd5958de5d10b73642f78c26492f86c21379",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:daa4e451b92d435f00196d947c03f0f9ca15185cf18666a8168a578bd70d4358`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InducingFunctorData [MonoidalCategoryStruct D] (F : D ⥤ C) where
  /-- Analogous to `CategoryTheory.LaxMonoidalFunctor.μIso` -/
  μIso : ∀ X Y,
    F.obj X ⊗ F.obj Y ≅ F.obj (X ⊗ Y)
  whiskerLeft_eq : ∀ (X : D) {Y₁ Y₂ : D} (f : Y₁ ⟶ Y₂),
    F.map (X ◁ f) = (μIso _ _).inv ≫ (F.obj X ◁ F.map f) ≫ (μIso _ _).hom := by
    aesop_cat
  whiskerRight_eq : ∀ {X₁ X₂ : D} (f : X₁ ⟶ X₂) (Y : D),
    F.map (f ▷ Y) = (μIso _ _).inv ≫ (F.map f ▷ F.obj Y) ≫ (μIso _ _).hom := by
    aesop_cat
  tensorHom_eq : ∀ {X₁ Y₁ X₂ Y₂ : D} (f : X₁ ⟶ Y₁) (g : X₂ ⟶ Y₂),
    F.map (f ⊗ g) = (μIso _ _).inv ≫ (F.map f ⊗ F.map g) ≫ (μIso _ _).hom := by
    aesop_cat
  /-- Analogous to `CategoryTheory.LaxMonoidalFunctor.εIso` -/
  εIso : 𝟙_ _ ≅ F.obj (𝟙_ _)
  associator_eq : ∀ X Y Z : D,
    F.map (α_ X Y Z).hom =
      (((μIso _ _).symm ≪≫ ((μIso _ _).symm ⊗ .refl _))
        ≪≫ α_ (F.obj X) (F.obj Y) (F.obj Z)
        ≪≫ ((.refl _ ⊗ μIso _ _) ≪≫ μIso _ _)).hom := by
    aesop_cat
  leftUnitor_eq : ∀ X : D,
    F.map (λ_ X).hom =
      (((μIso _ _).symm ≪≫ (εIso.symm ⊗ .refl _)) ≪≫ λ_ (F.obj X)).hom := by
    aesop_cat
  rightUnitor_eq : ∀ X : D,
    F.map (ρ_ X).hom =
      (((μIso _ _).symm ≪≫ (.refl _ ⊗ εIso.symm)) ≪≫ ρ_ (F.obj X)).hom := by
    aesop_cat

/--
Induce the lawfulness of the monoidal structure along an faithful functor of (plain) categories,
where the operations are already defined on the destination type `D`.

The functor `F` must preserve all the data parts of the monoidal structure between the two
categories.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceb5f4ae062bb31a6cc34a077ed55afed0b7e75e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
