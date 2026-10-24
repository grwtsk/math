# Complete source: GRWTSK.AlgebraicGeometry.AnalyticAffineIndexedGluing

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4aef0b562eb1aa9c275a37fe764fc58eaac28810` · SHA-256 `19e324340e7f11647a17c26e1da9470b8b033fe334e9f69f7db1119b3bc3329d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.AlgebraicGeometry.AnalyticAffineGluing
import GRWTSK.Analysis.Complex.HolomorphicIndexedCoverGluing

/-!
# Indexed descent of analytic-affine coordinate-ring maps

A family of maps from one exact source ring descends when its actual restricted homomorphisms
agree on every overlap of an indexed open cover. Source-ring equality, local suppliers, and
openness remain inputs; a global map and its ring laws are constructed, not assumed.
-/

namespace GRWTSK.AlgebraicGeometry.AnalyticAffineBridge.IndexedDescent

open CategoryTheory
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection restrictionRingHom)

universe u v w

noncomputable section

variable {ι : Type v} {R : CommRingCat.{u}}

/-- Pairwise equality of restricted maps from the same exact source ring. -/
def Compatible (D : IndexedDomainCover ι) (localMaps : ∀ i, Bridge R (D.U i)) : Prop :=
  ∀ i j,
    (restrictionRingHom (D.leftToOverlap i j)).comp (localMaps i).coordinateRing =
      (restrictionRingHom (D.rightToOverlap i j)).comp (localMaps j).coordinateRing

/-- Coordinate-ring compatibility yields matching sections for every source element. -/
theorem compatible_apply (D : IndexedDomainCover ι) (localMaps : ∀ i, Bridge R (D.U i))
    (h : Compatible D localMaps) (r : R) :
    D.Matching (fun i => (localMaps i).coordinateRing r) := by
  intro i j
  exact congrArg (fun f : R →+* HolomorphicSection (D.overlap i j) => f r) (h i j)

/-- Construct the global ring homomorphism and derive all four ring laws by separatedness. -/
def glueRingHom (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (localMaps : ∀ i, Bridge R (D.U i)) (h : Compatible D localMaps) :
    R →+* HolomorphicSection D.X where
  toFun r := D.glue hOpen (fun i => (localMaps i).coordinateRing r)
    (compatible_apply D localMaps h r)
  map_one' := by
    apply D.holomorphic_ext
    intro i
    simp only [IndexedDomainCover.restrict_glue, map_one]
  map_mul' := by
    intro a b
    apply D.holomorphic_ext
    intro i
    simp only [IndexedDomainCover.restrict_glue, map_mul]
  map_zero' := by
    apply D.holomorphic_ext
    intro i
    simp only [IndexedDomainCover.restrict_glue, map_zero]
  map_add' := by
    intro a b
    apply D.holomorphic_ext
    intro i
    simp only [IndexedDomainCover.restrict_glue, map_add]

/-- The descended bridge retains the same common source ring. -/
def glue (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (localMaps : ∀ i, Bridge R (D.U i)) (h : Compatible D localMaps) : Bridge R D.X :=
  ⟨glueRingHom D hOpen localMaps h⟩

@[simp]
theorem restrict_glue (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (localMaps : ∀ i, Bridge R (D.U i)) (h : Compatible D localMaps) (i : ι) :
    (glue D hOpen localMaps h).restrict (D.xTo i) = localMaps i := by
  apply Bridge.ext_coordinateRing
  apply RingHom.ext
  intro r
  exact D.restrict_glue hOpen (fun j => (localMaps j).coordinateRing r)
    (compatible_apply D localMaps h r) i

/-- Uniqueness is equality of actual coordinate-ring maps, not equality of spectrum images. -/
theorem glue_unique (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (localMaps : ∀ i, Bridge R (D.U i)) (h : Compatible D localMaps)
    (candidate : Bridge R D.X) (hc : ∀ i, candidate.restrict (D.xTo i) = localMaps i) :
    candidate = glue D hOpen localMaps h := by
  apply Bridge.ext_coordinateRing
  apply RingHom.ext
  intro r
  apply D.holomorphic_ext
  intro i
  exact congrArg (fun C : Bridge R (D.U i) => C.coordinateRing r)
    ((hc i).trans (restrict_glue D hOpen localMaps h i).symm)

/-- A compatible indexed family has exactly one global coordinate-ring realization. -/
theorem existsUnique_glue (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (localMaps : ∀ i, Bridge R (D.U i)) (h : Compatible D localMaps) :
    ∃! C : Bridge R D.X, ∀ i, C.restrict (D.xTo i) = localMaps i := by
  refine ⟨glue D hOpen localMaps h, restrict_glue D hOpen localMaps h, ?_⟩
  intro C hC
  exact glue_unique D hOpen localMaps h C hC

/-- The induced spectrum-point map is continuous for this same descended bridge. -/
theorem glue_pointMap_continuous (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (localMaps : ∀ i, Bridge R (D.U i)) (h : Compatible D localMaps) :
    Continuous (glue D hOpen localMaps h).pointMap :=
  (glue D hOpen localMaps h).pointMap_continuous

/-- The global point map agrees with every local map at the exact included point. -/
theorem glue_pointMap_member (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (localMaps : ∀ i, Bridge R (D.U i)) (h : Compatible D localMaps)
    (i : ι) (z : (D.U i).carrier) :
    (glue D hOpen localMaps h).pointMap ⟨z.1, D.subset i z.2⟩ =
      (localMaps i).pointMap z := by
  calc
    (glue D hOpen localMaps h).pointMap ⟨z.1, D.subset i z.2⟩ =
        ((glue D hOpen localMaps h).restrict (D.xTo i)).pointMap z :=
      ((glue D hOpen localMaps h).pointMap_restrict (D.xTo i) z).symm
    _ = (localMaps i).pointMap z :=
      congrArg (fun C : Bridge R (D.U i) => C.pointMap z)
        (restrict_glue D hOpen localMaps h i)

/-- Exact source-ring precomposition retains every overlap equation. -/
theorem compatible_precomp (D : IndexedDomainCover ι)
    (localMaps : ∀ i, Bridge R (D.U i)) (h : Compatible D localMaps)
    {S : CommRingCat.{u}} (f : S ⟶ R) :
    Compatible D (fun i => (localMaps i).precomp f) := by
  intro i j
  apply RingHom.ext
  intro r
  exact congrArg (fun g : R →+* HolomorphicSection (D.overlap i j) => g (f.hom r))
    (h i j)

/-- Indexed descent commutes with exact source-ring precomposition. -/
theorem glue_precomp (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (localMaps : ∀ i, Bridge R (D.U i)) (h : Compatible D localMaps)
    {S : CommRingCat.{u}} (f : S ⟶ R) :
    (glue D hOpen localMaps h).precomp f =
      glue D hOpen (fun i => (localMaps i).precomp f)
        (compatible_precomp D localMaps h f) := by
  apply glue_unique
  intro i
  rw [Bridge.restrict_precomp, restrict_glue]

/-- Polynomial coordinate-ring maps agree on every exact indexed overlap. -/
theorem polynomial_compatible (D : IndexedDomainCover ι) :
    Compatible D (fun i => PolynomialModel.bridge (D.U i)) := by
  intro i j
  exact (PolynomialModel.restriction_coordinateRingMap (D.leftToOverlap i j)).trans
    (PolynomialModel.restriction_coordinateRingMap (D.rightToOverlap i j)).symm

/-- Descent of the local polynomial maps recovers the original global polynomial bridge. -/
theorem glue_polynomial_model (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover) :
    glue D hOpen (fun i => PolynomialModel.bridge (D.U i)) (polynomial_compatible D) =
      PolynomialModel.bridge D.X := by
  symm
  apply glue_unique
  intro i
  apply Bridge.ext_coordinateRing
  exact PolynomialModel.restriction_coordinateRingMap (D.xTo i)

/-- Complete polynomial descent on a genuinely infinite family of proper open domains. -/
theorem allPunctures_polynomial_descent :
    let D := IndexedDomainCover.Fixtures.allPunctures
    glue D IndexedDomainCover.Fixtures.allPunctures_isOpen
      (fun i => PolynomialModel.bridge (D.U i)) (polynomial_compatible D) =
        PolynomialModel.bridge D.X :=
  glue_polynomial_model _ _

end
end GRWTSK.AlgebraicGeometry.AnalyticAffineBridge.IndexedDescent
```
