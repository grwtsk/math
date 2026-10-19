import Mathlib.AlgebraicTopology.SimplicialObject.Basic
import Mathlib.AlgebraicTopology.SimplexCategory.Truncated

/-!
# Simplicial fabric shapes

A `Shape` is Mathlib's genuine simplicial object in `Type`: a functor from the
opposite simplex category.  The wrappers in this module expose arbitrary
restriction, face, and degeneracy operations while deriving their laws from
the functor laws.

A shape is not automatically a geometric space, and a simplicial diagram is
not automatically a homotopy-correct resolution.  `TruncatedShape` remains a
separate bounded functor and is never silently promoted to an unbounded shape.
-/

open CategoryTheory
open Opposite

universe u

namespace DAF.Fabric

/-- A simplicial set used as the incidence shape of a fabric. -/
abbrev Shape := CategoryTheory.SimplicialObject (Type u)

/-- A simplex operator from dimension `m` to dimension `n`. -/
abbrev SimplexOperator (m n : Nat) :=
  SimplexCategory.mk m ⟶ SimplexCategory.mk n

namespace Shape

/-- The type of `n`-cells of a simplicial shape. -/
abbrev Cell (S : Shape) (n : Nat) : Type u :=
  S.obj (op (SimplexCategory.mk n))

/-- Contravariant restriction of a cell along an arbitrary simplex operator. -/
def restrict (S : Shape) {m n : Nat}
    (θ : SimplexOperator m n) (x : S.Cell n) : S.Cell m :=
  S.map θ.op x

/-- Restrict an `(n+1)`-cell along the `i`-th face operator. -/
def face (S : Shape) {n : Nat}
    (i : Fin (n + 2)) (x : S.Cell (n + 1)) : S.Cell n :=
  S.restrict (SimplexCategory.δ i) x

/-- Expand an `n`-cell along the `i`-th degeneracy operator. -/
def degeneracy (S : Shape) {n : Nat}
    (i : Fin (n + 1)) (x : S.Cell n) : S.Cell (n + 1) :=
  S.restrict (SimplexCategory.σ i) x

@[simp]
theorem restrict_id (S : Shape) {n : Nat} (x : S.Cell n) :
    S.restrict (𝟙 (SimplexCategory.mk n)) x = x := by
  simpa [restrict] using
    congrFun (S.map_id (op (SimplexCategory.mk n))) x

theorem restrict_comp (S : Shape) {l m n : Nat}
    (ψ : SimplexOperator l m) (θ : SimplexOperator m n)
    (x : S.Cell n) :
    S.restrict (ψ ≫ θ) x = S.restrict ψ (S.restrict θ x) := by
  simpa [restrict] using congrFun (S.map_comp θ.op ψ.op).symm x

/-- A simplicial map commutes pointwise with arbitrary restriction. -/
theorem restrict_naturality {S T : Shape} (f : S ⟶ T)
    {m n : Nat} (θ : SimplexOperator m n) (x : S.Cell n) :
    T.restrict θ (f.app _ x) = f.app _ (S.restrict θ x) := by
  simpa [restrict] using
    (congrArg (fun k ↦ k x) (f.naturality θ.op)).symm

/--
Pointwise composition of simplicial maps.  This wrapper makes application of
the composite definitionally reduce to nested function application, which is
useful for dependent cell-indexed families.
-/
abbrev compMap {S T U : Shape} (g : T ⟶ U) (f : S ⟶ T) : S ⟶ U :=
  f ≫ g

@[simp]
theorem compMap_app_apply {S T U : Shape} (g : T ⟶ U) (f : S ⟶ T)
    (X : SimplexCategoryᵒᵖ) (x : S.obj X) :
    (compMap g f).app X x = g.app X (f.app X x) :=
  by simp [compMap]

@[simp]
theorem face_eq_map (S : Shape) {n : Nat}
    (i : Fin (n + 2)) (x : S.Cell (n + 1)) :
    S.face i x = S.map (SimplexCategory.δ i).op x :=
  rfl

@[simp]
theorem degeneracy_eq_map (S : Shape) {n : Nat}
    (i : Fin (n + 1)) (x : S.Cell n) :
    S.degeneracy i x = S.map (SimplexCategory.σ i).op x :=
  rfl

end Shape

/-- A shape together with finite cell types in every degree. -/
structure FiniteShape where
  toShape : Shape
  finiteCells : ∀ n, Fintype (toShape.Cell n)

/-- A genuinely truncated simplicial shape of the pinned Mathlib depth. -/
structure TruncatedShape (depth : Nat) where
  diagram : CategoryTheory.SimplicialObject.Truncated (Type u) depth

namespace TruncatedShape

/-- Cells of a truncated shape, requiring an explicit in-range proof. -/
def Cell (S : TruncatedShape depth) (n : Nat) (hn : n ≤ depth) : Type u :=
  S.diagram.obj
    (op ⟨SimplexCategory.mk n, by simpa using hn⟩)

end TruncatedShape

end DAF.Fabric
