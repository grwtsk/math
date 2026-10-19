module

public meta import Surface.Core.Classification
public import Mathlib.Algebra.Group.Basic
public import Mathlib.Topology.MetricSpace.Basic

/-!
# Generic analytic squares

These structures describe mathematical diagrams and their exact, metric, or
additive-obstruction laws.  They contain no scheduler or model authority and
do not turn numerical bounds into exact commutation.
-/

public section

namespace Surface.Core

universe u₁ u₂ u₃ u₄

/-- Four maps forming the boundary of a square.  No commutation law is assumed. -/
@[surface_interface]
structure DiagramSquare
    (A : Type u₁) (B : Type u₂) (A' : Type u₃) (B' : Type u₄) where
  top : A → B
  left : A → A'
  right : B → B'
  bottom : A' → B'

namespace DiagramSquare

variable {A : Type u₁} {B : Type u₂} {A' : Type u₃} {B' : Type u₄}

/-- The path across the top and then down the right side. -/
@[expose]
def topRight (square : DiagramSquare A B A' B') (x : A) : B' :=
  square.right (square.top x)

/-- The path down the left and then across the bottom. -/
@[expose]
def leftBottom (square : DiagramSquare A B A' B') (x : A) : B' :=
  square.bottom (square.left x)

end DiagramSquare

/-- A square whose two composites agree exactly. -/
@[surface_interface]
structure ExactSquare
    (A : Type u₁) (B : Type u₂) (A' : Type u₃) (B' : Type u₄)
    extends DiagramSquare A B A' B' where
  commutes : ∀ x, toDiagramSquare.topRight x = toDiagramSquare.leftBottom x

namespace ExactSquare

variable {A : Type u₁} {B : Type u₂} {A' : Type u₃} {B' : Type u₄}

@[surface_novel, surface_published]
theorem paths_equal (square : ExactSquare A B A' B') (x : A) :
    square.toDiagramSquare.topRight x =
      square.toDiagramSquare.leftBottom x :=
  square.commutes x

end ExactSquare

/-- A square with a uniform, explicitly retained bound on path discrepancy. -/
@[surface_interface]
structure MetricBoundedSquare
    (A : Type u₁) (B : Type u₂) (A' : Type u₃) (B' : Type u₄)
    [PseudoMetricSpace B'] extends DiagramSquare A B A' B' where
  bound : ℝ
  bound_nonnegative : 0 ≤ bound
  commutationBound :
    ∀ x, dist (toDiagramSquare.topRight x) (toDiagramSquare.leftBottom x) ≤ bound

namespace MetricBoundedSquare

variable {A : Type u₁} {B : Type u₂} {A' : Type u₃} {B' : Type u₄}
  [PseudoMetricSpace B']

@[surface_novel, surface_published]
theorem bound_nonneg (square : MetricBoundedSquare A B A' B') :
    0 ≤ square.bound :=
  square.bound_nonnegative

@[surface_novel, surface_published]
theorem paths_dist_le (square : MetricBoundedSquare A B A' B') (x : A) :
    dist (square.toDiagramSquare.topRight x)
        (square.toDiagramSquare.leftBottom x) ≤ square.bound :=
  square.commutationBound x

/-- A zero numerical bound yields zero path distance.  Exact equality is not
claimed for a pseudometric space. -/
@[surface_novel, surface_published]
theorem paths_dist_eq_zero_of_bound_eq_zero
    (square : MetricBoundedSquare A B A' B')
    (hbound : square.bound = 0) (x : A) :
    dist (square.toDiagramSquare.topRight x)
        (square.toDiagramSquare.leftBottom x) = 0 := by
  apply le_antisymm
  · simpa [hbound] using square.commutationBound x
  · exact dist_nonneg

end MetricBoundedSquare

/-- A square together with the additive difference between its two paths. -/
@[surface_interface]
structure AdditiveObstructionSquare
    (A : Type u₁) (B : Type u₂) (A' : Type u₃) (B' : Type u₄)
    [AddGroup B'] extends DiagramSquare A B A' B' where
  obstruction : A → B'
  obstruction_eq_pathDifference :
    ∀ x, obstruction x =
      toDiagramSquare.topRight x - toDiagramSquare.leftBottom x

namespace AdditiveObstructionSquare

variable {A : Type u₁} {B : Type u₂} {A' : Type u₃} {B' : Type u₄}
  [AddGroup B']

@[surface_novel, surface_published]
theorem obstruction_eq_zero_iff_paths_equal
    (square : AdditiveObstructionSquare A B A' B') (x : A) :
    square.obstruction x = 0 ↔
      square.toDiagramSquare.topRight x =
        square.toDiagramSquare.leftBottom x := by
  rw [square.obstruction_eq_pathDifference]
  exact sub_eq_zero

end AdditiveObstructionSquare

end Surface.Core
