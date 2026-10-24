import GRWTSK.Geometry.AlgebraicGeometry.AnalyticAffineTopology
import GRWTSK.Analysis.ComplexAnalysis.HolomorphicOpenCoverGluing

/-!
# Descent of analytic-affine coordinate-ring maps

Two maps from the same exact source ring into local holomorphic-section rings glue to one global
ring map when they agree on the overlap of a binary open cover. The ring laws follow from local
ring laws and separatedness, not from a new global-map premise. No arithmetic or elliptic source
map is invented by this construction.
-/

namespace GRWTSK.Geometry.AlgebraicGeometry.AnalyticAffineBridge

open CategoryTheory
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing

universe u

noncomputable section

namespace Bridge

/-- Equality of the actual coordinate-ring maps determines equality of bridges. -/
theorem ext_coordinateRing {R : CommRingCat.{u}} {A : Domain}
    {C E : Bridge R A} (h : C.coordinateRing = E.coordinateRing) : C = E := by
  cases C
  cases E
  cases h
  rfl

end Bridge

namespace Descent

/-- Overlap compatibility for maps from one exact common source ring. -/
def Compatible {R : CommRingCat.{u}} (D : BinaryDomainCover)
    (left : Bridge R D.U) (right : Bridge R D.V) : Prop :=
  (GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.restrictionRingHom D.uToOverlap).comp
      left.coordinateRing =
    (GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.restrictionRingHom D.vToOverlap).comp
      right.coordinateRing

/-- Exact ring-map equality yields matching sections for each source element. -/
theorem compatible_apply {R : CommRingCat.{u}} {D : BinaryDomainCover}
    {left : Bridge R D.U} {right : Bridge R D.V}
    (h : Compatible D left right) (r : R) :
    D.holomorphicPortCover.MatchingPair (left.coordinateRing r) (right.coordinateRing r) :=
  congrArg (fun f : R →+* HolomorphicSection D.overlap => f r) h

/-- The descended coordinate-ring homomorphism. Each ring law is checked after both restrictions,
then recovered globally by the exact cover's separatedness theorem. -/
def glueRingHom {R : CommRingCat.{u}} (D : BinaryDomainCover) (hOpen : D.IsOpenCover)
    (left : Bridge R D.U) (right : Bridge R D.V) (h : Compatible D left right) :
    R →+* HolomorphicSection D.X where
  toFun r := D.holomorphicGlue hOpen
    (left.coordinateRing r) (right.coordinateRing r) (compatible_apply h r)
  map_one' := by
    apply D.holomorphic_ext
    · simp only [BinaryDomainCover.restrict_holomorphicGlue_left, map_one]
    · simp only [BinaryDomainCover.restrict_holomorphicGlue_right, map_one]
  map_mul' := by
    intro a b
    apply D.holomorphic_ext
    · simp only [BinaryDomainCover.restrict_holomorphicGlue_left, map_mul]
    · simp only [BinaryDomainCover.restrict_holomorphicGlue_right, map_mul]
  map_zero' := by
    apply D.holomorphic_ext
    · simp only [BinaryDomainCover.restrict_holomorphicGlue_left, map_zero]
    · simp only [BinaryDomainCover.restrict_holomorphicGlue_right, map_zero]
  map_add' := by
    intro a b
    apply D.holomorphic_ext
    · simp only [BinaryDomainCover.restrict_holomorphicGlue_left, map_add]
    · simp only [BinaryDomainCover.restrict_holomorphicGlue_right, map_add]

/-- A global bridge constructed from the matching local coordinate maps. -/
def glue {R : CommRingCat.{u}} (D : BinaryDomainCover) (hOpen : D.IsOpenCover)
    (left : Bridge R D.U) (right : Bridge R D.V) (h : Compatible D left right) :
    Bridge R D.X where
  coordinateRing := glueRingHom D hOpen left right h

@[simp]
theorem glue_left {R : CommRingCat.{u}} (D : BinaryDomainCover) (hOpen : D.IsOpenCover)
    (left : Bridge R D.U) (right : Bridge R D.V) (h : Compatible D left right) :
    (glue D hOpen left right h).restrict D.xToU = left := by
  apply Bridge.ext_coordinateRing
  apply RingHom.ext
  intro r
  exact D.restrict_holomorphicGlue_left hOpen
    (left.coordinateRing r) (right.coordinateRing r) (compatible_apply h r)

@[simp]
theorem glue_right {R : CommRingCat.{u}} (D : BinaryDomainCover) (hOpen : D.IsOpenCover)
    (left : Bridge R D.U) (right : Bridge R D.V) (h : Compatible D left right) :
    (glue D hOpen left right h).restrict D.xToV = right := by
  apply Bridge.ext_coordinateRing
  apply RingHom.ext
  intro r
  exact D.restrict_holomorphicGlue_right hOpen
    (left.coordinateRing r) (right.coordinateRing r) (compatible_apply h r)

/-- Global bridge uniqueness is equality of source-ring maps, not just equality of point images. -/
theorem glue_unique {R : CommRingCat.{u}} (D : BinaryDomainCover) (hOpen : D.IsOpenCover)
    (left : Bridge R D.U) (right : Bridge R D.V) (h : Compatible D left right)
    (candidate : Bridge R D.X)
    (hLeft : candidate.restrict D.xToU = left)
    (hRight : candidate.restrict D.xToV = right) :
    candidate = glue D hOpen left right h := by
  apply Bridge.ext_coordinateRing
  apply RingHom.ext
  intro r
  apply D.holomorphic_ext
  · exact congrArg (fun C : Bridge R D.U => C.coordinateRing r)
      (hLeft.trans (glue_left D hOpen left right h).symm)
  · exact congrArg (fun C : Bridge R D.V => C.coordinateRing r)
      (hRight.trans (glue_right D hOpen left right h).symm)

/-- Matching local source-ring maps have exactly one global analytic-affine realization. -/
theorem existsUnique_glue {R : CommRingCat.{u}} (D : BinaryDomainCover)
    (hOpen : D.IsOpenCover) (left : Bridge R D.U) (right : Bridge R D.V)
    (h : Compatible D left right) :
    ∃! C : Bridge R D.X, C.restrict D.xToU = left ∧ C.restrict D.xToV = right := by
  refine ⟨glue D hOpen left right h,
    ⟨glue_left D hOpen left right h, glue_right D hOpen left right h⟩, ?_⟩
  intro C hC
  exact glue_unique D hOpen left right h C hC.1 hC.2

/-- The induced global spectrum map is continuous by the previously proved evaluation theorem. -/
theorem glue_pointMap_continuous {R : CommRingCat.{u}}
    (D : BinaryDomainCover) (hOpen : D.IsOpenCover)
    (left : Bridge R D.U) (right : Bridge R D.V) (h : Compatible D left right) :
    Continuous (glue D hOpen left right h).pointMap :=
  (glue D hOpen left right h).pointMap_continuous

/-- The global point map agrees exactly with the left local point map. -/
theorem glue_pointMap_left {R : CommRingCat.{u}}
    (D : BinaryDomainCover) (hOpen : D.IsOpenCover)
    (left : Bridge R D.U) (right : Bridge R D.V) (h : Compatible D left right)
    (z : D.U.carrier) :
    (glue D hOpen left right h).pointMap ⟨z.1, D.u_subset z.2⟩ = left.pointMap z := by
  calc
    (glue D hOpen left right h).pointMap ⟨z.1, D.u_subset z.2⟩ =
        ((glue D hOpen left right h).restrict D.xToU).pointMap z :=
      ((glue D hOpen left right h).pointMap_restrict D.xToU z).symm
    _ = left.pointMap z := congrArg (fun C : Bridge R D.U => C.pointMap z)
      (glue_left D hOpen left right h)

/-- The global point map agrees exactly with the right local point map. -/
theorem glue_pointMap_right {R : CommRingCat.{u}}
    (D : BinaryDomainCover) (hOpen : D.IsOpenCover)
    (left : Bridge R D.U) (right : Bridge R D.V) (h : Compatible D left right)
    (z : D.V.carrier) :
    (glue D hOpen left right h).pointMap ⟨z.1, D.v_subset z.2⟩ = right.pointMap z := by
  calc
    (glue D hOpen left right h).pointMap ⟨z.1, D.v_subset z.2⟩ =
        ((glue D hOpen left right h).restrict D.xToV).pointMap z :=
      ((glue D hOpen left right h).pointMap_restrict D.xToV z).symm
    _ = right.pointMap z := congrArg (fun C : Bridge R D.V => C.pointMap z)
      (glue_right D hOpen left right h)

/-- Polynomial coordinate maps satisfy the exact overlap equation on every binary cover. -/
theorem polynomial_compatible (D : BinaryDomainCover) :
    Compatible D (PolynomialModel.bridge D.U) (PolynomialModel.bridge D.V) :=
  (PolynomialModel.restriction_coordinateRingMap D.uToOverlap).trans
    (PolynomialModel.restriction_coordinateRingMap D.vToOverlap).symm

/-- Descent of the constructed local polynomial models recovers the original global model. -/
theorem glue_polynomial_model (D : BinaryDomainCover) (hOpen : D.IsOpenCover) :
    glue D hOpen (PolynomialModel.bridge D.U) (PolynomialModel.bridge D.V)
        (polynomial_compatible D) = PolynomialModel.bridge D.X := by
  symm
  apply glue_unique
  · apply Bridge.ext_coordinateRing
    exact PolynomialModel.restriction_coordinateRingMap D.xToU
  · apply Bridge.ext_coordinateRing
    exact PolynomialModel.restriction_coordinateRingMap D.xToV

/-- Complete positive fixture on two proper overlapping opens of the complex plane. -/
theorem puncturedPlane_polynomial_descent :
    let D := BinaryDomainCover.OpenCoverFixtures.puncturedPlaneCover
    glue D BinaryDomainCover.OpenCoverFixtures.puncturedPlane_isOpen
      (PolynomialModel.bridge D.U) (PolynomialModel.bridge D.V)
      (polynomial_compatible D) = PolynomialModel.bridge D.X :=
  glue_polynomial_model _ _

end Descent
end
end GRWTSK.Geometry.AlgebraicGeometry.AnalyticAffineBridge
