import DAF.Fabric.Core

/-!
# Strict boundaries of fabric cells

A boundary profile ranges over every simplex operator whose source dimension
is strictly smaller than the cell dimension.  Its coherence field compares
iterated restriction with restriction along the composite operator.  This is
strict presentation-level data; no generic fiber, cofiber, or homotopy defect
is asserted.
-/

open CategoryTheory

namespace DAF.Fabric

universe u

/-- A simplex operator selecting a strictly lower-dimensional boundary cell. -/
structure ProperBoundaryOperator (m n : Nat) where
  operator : SimplexOperator m n
  lowerDimension : m < n

namespace ProperBoundaryOperator

/-- Composition of proper boundary operators remains proper. -/
def comp {l m n : Nat}
    (θ : ProperBoundaryOperator m n)
    (ψ : ProperBoundaryOperator l m) :
    ProperBoundaryOperator l n where
  operator := ψ.operator ≫ θ.operator
  lowerDimension := lt_trans ψ.lowerDimension θ.lowerDimension

end ProperBoundaryOperator

/-- The complete strict boundary contracts of one cell. -/
structure BoundaryProfile
    (F : Fabric)
    {n : Nat}
    (x : F.Cell n) where
  boundaryContract :
    ∀ {m : Nat} (θ : ProperBoundaryOperator m n),
      Presentation.Hom
        (F.cellPresentation x)
        (F.cellPresentation (F.shape.restrict θ.operator x))
  agreesWithFabric :
    ∀ {m : Nat} (θ : ProperBoundaryOperator m n),
      boundaryContract θ = F.contract θ.operator x
  coherent :
    ∀ {l m : Nat}
      (θ : ProperBoundaryOperator m n)
      (ψ : ProperBoundaryOperator l m),
      HEq
        ((F.contract ψ.operator (F.shape.restrict θ.operator x)).comp
          (boundaryContract θ))
        (boundaryContract (θ.comp ψ))

/-- A candidate replacement presentation equipped with all strict boundary maps. -/
structure BoundaryReplacement
    (F : Fabric)
    {n : Nat}
    (x : F.Cell n) where
  replacement : Presentation
  replacementContract :
    ∀ {m : Nat} (θ : ProperBoundaryOperator m n),
      Presentation.Hom
        replacement
        (F.cellPresentation (F.shape.restrict θ.operator x))
  coherent :
    ∀ {l m : Nat}
      (θ : ProperBoundaryOperator m n)
      (ψ : ProperBoundaryOperator l m),
      HEq
        ((F.contract ψ.operator (F.shape.restrict θ.operator x)).comp
          (replacementContract θ))
        (replacementContract (θ.comp ψ))

end DAF.Fabric
