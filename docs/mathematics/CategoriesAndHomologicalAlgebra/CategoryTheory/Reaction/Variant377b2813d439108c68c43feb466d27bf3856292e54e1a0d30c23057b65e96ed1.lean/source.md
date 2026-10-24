# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Reaction.Variant377b2813d439108c68c43feb466d27bf3856292e54e1a0d30c23057b65e96ed1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40b66cddef7b0808bb9dcbb8b71bf8b59ada7d2a` · SHA-256 `377b2813d439108c68c43feb466d27bf3856292e54e1a0d30c23057b65e96ed1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Fabric.Core

/-!
# Natural reactions between fabrics

A `Reaction` is a natural transformation of simplicial shapes together with a
presentation morphism at every cell and a commuting contract square.  It is
therefore not an arbitrary collection of cell mutations.  A `ReactionIso`
requires inverse reactions as complete structures; bijectivity of state maps
alone does not invert inputs, resolutions, dependent observations, invariants,
or simplicial naturality.

Conjugacy, equivalence, or reaction data in this module provides no avalanche,
cryptographic, or security guarantee.
-/

open CategoryTheory

universe u

namespace DAF.Fabric

/-- A coherent natural reaction between two presented fabrics. -/
structure Reaction (F G : Fabric) where
  shapeMap : F.shape ⟶ G.shape
  /-- A raw cell function retained explicitly for dependent presentation indexing. -/
  mapCell : ∀ {n}, F.Cell n → G.Cell n
  /-- The raw cell function is exactly the function underlying the simplicial map. -/
  mapCell_eq :
    ∀ {n} (x : F.Cell n),
      mapCell x = shapeMap.app _ x
  /-- Pointwise simplicial naturality of the raw cell function. -/
  mapCell_natural :
    ∀ {m n} (θ : SimplexOperator m n) (x : F.Cell n),
      G.shape.restrict θ (mapCell x) =
        mapCell (F.shape.restrict θ x)
  cellMap :
    ∀ {n} (x : F.Cell n),
      Presentation.Hom
        (F.cellPresentation x)
        (G.cellPresentation (mapCell x))
  contract_natural :
    ∀ {m n} (θ : SimplexOperator m n) (x : F.Cell n),
      cellMap x ≫
          G.contract θ (mapCell x) ≫
            eqToHom
              (congrArg (G.presentation m)
                (mapCell_natural θ x)) =
        F.contract θ x ≫
          cellMap (F.shape.restrict θ x)

namespace Reaction

/-- The target-cell equality induced by simplicial naturality. -/
theorem targetCellEq {F G : Fabric} (η : Reaction F G)
    {m n : Nat} (θ : SimplexOperator m n) (x : F.Cell n) :
    G.shape.restrict θ (η.shapeMap.app _ x) =
      η.shapeMap.app _ (F.shape.restrict θ x) :=
  Shape.restrict_naturality η.shapeMap θ x

/-- The presentation equality induced by simplicial naturality. -/
theorem targetPresentationEq {F G : Fabric} (η : Reaction F G)
    {m n : Nat} (θ : SimplexOperator m n) (x : F.Cell n) :
    G.cellPresentation (G.shape.restrict θ (η.shapeMap.app _ x)) =
      G.cellPresentation (η.shapeMap.app _ (F.shape.restrict θ x)) :=
  congrArg (G.presentation m) (η.targetCellEq θ x)

/-- The cell map with its target transported to the literal `shapeMap.app` cell. -/
def cellMapAtShape {F G : Fabric} (η : Reaction F G)
    {n : Nat} (x : F.Cell n) :
    Presentation.Hom
      (F.cellPresentation x)
      (G.cellPresentation (η.shapeMap.app _ x)) :=
  (η.cellMap x).castTarget
    (congrArg (G.presentation n) (η.mapCell_eq x))

/-- The identity reaction. -/
def id (F : Fabric) : Reaction F F where
  shapeMap := 𝟙 F.shape
  mapCell := fun x ↦ x
  mapCell_eq := by intros; rfl
  mapCell_natural := by intros; rfl
  cellMap := fun _ ↦ Presentation.Hom.id _
  contract_natural := by
    intro m n θ x
    apply Presentation.Hom.ext <;> rfl

/-- Composition, written as `μ` after `η`. -/
def comp {F G H : Fabric} (μ : Reaction G H) (η : Reaction F G) :
    Reaction F H where
  shapeMap := Shape.compMap μ.shapeMap η.shapeMap
  mapCell := fun x ↦ μ.mapCell (η.mapCell x)
  mapCell_eq := by
    intro n x
    rw [μ.mapCell_eq, η.mapCell_eq]
    exact (Shape.compMap_app_apply μ.shapeMap η.shapeMap _ x).symm
  mapCell_natural := by
    intro m n θ x
    exact (μ.mapCell_natural θ (η.mapCell x)).trans
      (congrArg μ.mapCell (η.mapCell_natural θ x))
  cellMap := fun x ↦
    Presentation.Hom.comp (μ.cellMap (η.mapCell x)) (η.cellMap x)
  contract_natural := by
    intro m n θ x
    let hη := η.mapCell_natural θ x
    let hμ := μ.mapCell_natural θ (η.mapCell x)
    let hμη := congrArg μ.mapCell hη
    have hq :
        congrArg (H.presentation m) hμη =
          congrArg
            (fun y : G.Cell m ↦ H.presentation m (μ.mapCell y)) hη := by
      apply Subsingleton.elim
    have hp :
        congrArg (H.presentation m)
            ((μ.mapCell_natural θ (η.mapCell x)).trans
              (congrArg μ.mapCell (η.mapCell_natural θ x))) =
          (congrArg (H.presentation m) hμ).trans
            (congrArg (H.presentation m) hμη) := by
      apply Subsingleton.elim
    rw [hp, ← eqToHom_trans]
    change
      (η.cellMap x ≫ μ.cellMap (η.mapCell x)) ≫
          H.contract θ (μ.mapCell (η.mapCell x)) ≫
            eqToHom (congrArg (H.presentation m) hμ) ≫
              eqToHom (congrArg (H.presentation m) hμη) =
        F.contract θ x ≫
          (η.cellMap (F.shape.restrict θ x) ≫
            μ.cellMap (η.mapCell (F.shape.restrict θ x)))
    simp only [Category.assoc]
    rw [← Category.assoc
      (H.contract θ (μ.mapCell (η.mapCell x)))
      (eqToHom (congrArg (H.presentation m) hμ))
      (eqToHom (congrArg (H.presentation m) hμη))]
    rw [← Category.assoc
      (μ.cellMap (η.mapCell x))
      (H.contract θ (μ.mapCell (η.mapCell x)) ≫
        eqToHom (congrArg (H.presentation m) hμ))
      (eqToHom (congrArg (H.presentation m) hμη))]
    rw [μ.contract_natural]
    simp only [Category.assoc]
    rw [hq]
    rw [eqToHom_naturality
      (f := fun y : G.Cell m ↦ G.presentation m y)
      (g := fun y : G.Cell m ↦ H.presentation m (μ.mapCell y))
      (fun y : G.Cell m ↦ μ.cellMap y) hη]
    rw [← Category.assoc
      (G.contract θ (η.mapCell x))
      (eqToHom (congrArg (G.presentation m) hη))
      (μ.cellMap (η.mapCell (F.shape.restrict θ x)))]
    rw [← Category.assoc
      (η.cellMap x)
      (G.contract θ (η.mapCell x) ≫
        eqToHom (congrArg (G.presentation m) hη))
      (μ.cellMap (η.mapCell (F.shape.restrict θ x)))]
    rw [η.contract_natural]
    simp only [Category.assoc]

/-- Extensionality for reactions, including the dependent cell morphisms. -/
@[ext (iff := false)]
theorem ext {F G : Fabric} {η μ : Reaction F G}
    (hShape : η.shapeMap = μ.shapeMap)
    (hCell : @Reaction.mapCell F G η = @Reaction.mapCell F G μ)
    (hPresentation : HEq
      (@Reaction.cellMap F G η) (@Reaction.cellMap F G μ)) :
    η = μ := by
  cases η
  cases μ
  cases hShape
  cases hCell
  cases hPresentation
  rfl

@[simp]
theorem id_cellMap (F : Fabric) {n : Nat} (x : F.Cell n) :
    (id F).cellMap x = Presentation.Hom.id (F.cellPresentation x) :=
  rfl

@[simp]
theorem comp_cellMap {F G H : Fabric}
    (μ : Reaction G H) (η : Reaction F G)
    {n : Nat} (x : F.Cell n) :
    (comp μ η).cellMap x =
      Presentation.Hom.comp (μ.cellMap (η.mapCell x)) (η.cellMap x) :=
  rfl

@[simp]
theorem id_comp {F G : Fabric} (η : Reaction F G) :
    comp (id G) η = η := by
  apply ext
  · exact Category.comp_id η.shapeMap
  · rfl
  · exact heq_of_eq (by
      funext n x
      exact Presentation.Hom.id_comp (η.cellMap x))

@[simp]
theorem comp_id {F G : Fabric} (η : Reaction F G) :
    comp η (id F) = η := by
  apply ext
  · exact Category.id_comp η.shapeMap
  · rfl
  · exact heq_of_eq (by
      funext n x
      exact Presentation.Hom.comp_id (η.cellMap x))

theorem comp_assoc {F G H K : Fabric}
    (ν : Reaction H K) (μ : Reaction G H) (η : Reaction F G) :
    comp (comp ν μ) η = comp ν (comp μ η) := by
  apply ext
  · exact (Category.assoc η.shapeMap μ.shapeMap ν.shapeMap).symm
  · rfl
  · exact heq_of_eq (by
      funext n x
      exact Presentation.Hom.comp_assoc
        (ν.cellMap (μ.mapCell (η.mapCell x)))
        (μ.cellMap (η.mapCell x))
        (η.cellMap x))

end Reaction

/-- Fabrics regarded as a category with reactions as morphisms. -/
abbrev FabricCategory := Fabric

instance : Category FabricCategory where
  Hom := Reaction
  id := Reaction.id
  comp η μ := Reaction.comp μ η
  id_comp := Reaction.id_comp
  comp_id := Reaction.comp_id
  assoc := by
    intro F G H K η μ ν
    exact (Reaction.comp_assoc ν μ η).symm

/-- An equivalence of fabrics by inverse complete reactions. -/
structure ReactionIso (F G : Fabric) where
  hom : Reaction F G
  inv : Reaction G F
  hom_inv : Reaction.comp inv hom = Reaction.id F
  inv_hom : Reaction.comp hom inv = Reaction.id G

namespace ReactionIso

/-- Regard inverse reactions as an isomorphism in the fabric category. -/
def toIso {F G : Fabric} (e : ReactionIso F G) : F ≅ G where
  hom := e.hom
  inv := e.inv
  hom_inv_id := e.hom_inv
  inv_hom_id := e.inv_hom

end ReactionIso

end DAF.Fabric
```
