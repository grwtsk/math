# LawfulDayConvolutionMonoidalCategoryStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8e9bd71248ef456be78d07f5fd64fa6b1a2fc8e471b8022844bdbb41d285857",
  "kind": "class",
  "lexical_name": "LawfulDayConvolutionMonoidalCategoryStruct",
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
  "slug": "lawfuldayconvolutionmonoidalcategorystruct--d7c201121b10140e1b30420d",
  "source": {
    "blob": "072e9465234fa69e7f9296926ff65678c6fc17a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 809,
    "line": 732,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7c201121b10140e1b30420df9573c3347d5c7040c312a6b0af219a467280489",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8e9bd71248ef456be78d07f5fd64fa6b1a2fc8e471b8022844bdbb41d285857`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 732–809.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LawfulDayConvolutionMonoidalCategoryStruct
    (C : Type u₁) [Category.{v₁} C] (V : Type u₂) [Category.{v₂} V]
    [MonoidalCategory C] [MonoidalCategory V]
    (D : Type u₃) [Category.{v₃} D] [MonoidalCategoryStruct D] where
  /-- a functor that interprets element of `D` as functors `C ⥤ V` -/
  ι (C V D) : D ⥤ C ⥤ V
  /-- a natural transformation `ι.obj d ⊠ ι.obj d' ⟶ tensor C ⋙ ι.obj (d ⊗ d')` -/
  convolutionExtensionUnit (C) (V) (d d' : D) :
    ι.obj d ⊠ ι.obj d' ⟶ tensor C ⋙ ι.obj (d ⊗ d')
  /-- `convolutionUnitUnit` exhibits `ι.obj (d ⊗ d')` as a left Ken extension of
  `ι.obj d ⊠ ι.obj d'` along `tensor C`. -/
  isPointwiseLeftKanExtensionConvolutionExtensionUnit (d d' : D) :
    (Functor.LeftExtension.mk _ <|
      convolutionExtensionUnit d d').IsPointwiseLeftKanExtension
  /-- a map `𝟙_ V ⟶ (ι.obj <| 𝟙_ D).obj (𝟙_ C)`, that we think of as defining a
  natural transformation
  `fromPUnit.{0} (𝟙_ V) ⟶ Functor.fromPUnit.{0} (𝟙_ C) ⋙ (ι.obj <| 𝟙_ D)`. -/
  unitUnit (C) (V) (D) : 𝟙_ V ⟶ (ι.obj <| 𝟙_ D).obj (𝟙_ C)
  /-- the natural transformation induced by `unitUnit` exhibits
  `(ι.obj <| 𝟙_ D).obj (𝟙_ C)` as a left Kan extension of `fromPUnit.{0} (𝟙_ V)` as a
  along `fromPUnit.{0} (𝟙_ C)`. -/
  isPointwiseLeftKanExtensionUnitUnit (C) (V) (D) :
    Functor.LeftExtension.mk _
      ({ app _ := unitUnit } : Functor.fromPUnit.{0} (𝟙_ V) ⟶
        Functor.fromPUnit.{0} (𝟙_ C) ⋙ (ι.obj <| 𝟙_ D)) |>.IsPointwiseLeftKanExtension
  /-- The field `ι` interprets an element of `D` as a functor `C ⥤ V`. -/
  faithful_ι : ι.Faithful := by infer_instance
  convolutionExtensionUnit_comp_ι_map_tensorHom_app (C) (V) {d₁ d₂ d₁' d₂' : D}
    (f₁ : d₁ ⟶ d₁') (f₂ : d₂ ⟶ d₂') (x y : C) :
    (convolutionExtensionUnit d₁ d₂).app (x, y) ≫
      (ι.map (f₁ ⊗ₘ f₂)).app (x ⊗ y) =
    ((ι.map f₁).app x ⊗ₘ (ι.map f₂).app y) ≫
      (convolutionExtensionUnit d₁' d₂').app (x, y)
  convolutionExtensionUnit_comp_ι_map_whiskerLeft_app (V)
    (d₁ : D) {d₂ d₂' : D}
    (f₂ : d₂ ⟶ d₂') (x y : C) :
    (convolutionExtensionUnit d₁ d₂).app (x, y) ≫
      (ι.map (d₁ ◁ f₂)).app (x ⊗ y) =
    ((ι.obj d₁).obj x ◁ (ι.map f₂).app y) ≫
      (convolutionExtensionUnit d₁ d₂').app (x, y)
  convolutionExtensionUnit_comp_ι_map_whiskerRight_app (C) (V)
    {d₁ d₁' : D} (f₁ : d₁ ⟶ d₁') (d₂ : D) (x y : C) :
    (convolutionExtensionUnit d₁ d₂).app (x, y) ≫
      (ι.map (f₁ ▷ d₂)).app (x ⊗ y) =
    ((ι.map f₁).app x ▷ (ι.obj d₂).obj y) ≫
      (convolutionExtensionUnit d₁' d₂).app (x, y)
  associator_hom_unit_unit (V) (d d' d'' : D) (x y z : C) :
    (convolutionExtensionUnit d d').app (x, y) ▷ (ι.obj d'').obj z ≫
      (convolutionExtensionUnit (d ⊗ d') d'').app (x ⊗ y, z) ≫
      (ι.map (α_ d d' d'').hom).app ((x ⊗ y) ⊗ z) =
    (α_ _ _ _).hom ≫
      ((ι.obj d).obj x ◁ (convolutionExtensionUnit d' d'').app (y, z)) ≫
      (convolutionExtensionUnit d (d' ⊗ d'')).app (x, y ⊗ z) ≫
      (ι.obj (d ⊗ d' ⊗ d'')).map (α_ _ _ _).inv
  leftUnitor_hom_unit_app (V) (d : D) (y : C) :
    unitUnit ▷ (ι.obj d).obj y ≫
      (convolutionExtensionUnit (𝟙_ D) d).app
        (𝟙_ C, y) ≫
      (ι.map (λ_ d).hom).app (𝟙_ C ⊗ y) =
    (λ_ ((ι.obj d).obj y)).hom ≫ (ι.obj d).map (λ_ y).inv
  rightUnitor_hom_unit_app (V) (d : D) (y : C) :
    (ι.obj d).obj y ◁ unitUnit ≫
      (convolutionExtensionUnit d (𝟙_ D)).app (y, 𝟙_ C) ≫
      (ι.map (ρ_ d).hom).app (y ⊗ 𝟙_ C) =
    (ρ_ _).hom ≫ (ι.obj d).map (ρ_ y).inv

namespace LawfulDayConvolutionMonoidalCategoryStruct

attribute [instance] faithful_ι

variable (D : Type u₃) [Category.{v₃} D] [MonoidalCategoryStruct D]
  [LawfulDayConvolutionMonoidalCategoryStruct C V D]

open scoped DayConvolution

/-- In a `LawfulDayConvolutionMonoidalCategoryStruct`, `ι.obj (d ⊗ d')` is a
Day convolution of `(ι C V).obj d` and `(ι C V).d'`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean#L732).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `072e9465234fa69e7f9296926ff65678c6fc17a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
