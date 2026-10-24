import GRWTSK.Geometry.AlgebraicGeometry.AffineSpecPort
import GRWTSK.Topology.Algebra.PortFiberRing
import Mathlib.AlgebraicGeometry.AffineScheme

namespace GRWTSK.Geometry.AlgebraicGeometry.AffineStructureSheafPort

open CategoryTheory
open GRWTSK.Topology
open scoped AlgebraicGeometry

universe u

/-- Covariant global-section transport induced by the contravariant affine `Spec` functor.

A port `A ⟶ B` is an ordinary commutative-ring morphism. Its fiber map is the map on global
sections induced by `Spec.map p : Spec B ⟶ Spec A`, hence has the original algebraic direction
`Γ(Spec A) ⟶ Γ(Spec B)`. -/
def globalSectionsSystem : GRWTSK.Topology.PortFiber where
  Obj := CommRingCat.{u}
  Fiber A := Γ(_root_.AlgebraicGeometry.Spec A, ⊤)
  Port A B := A ⟶ B
  identity A := 𝟙 A
  comp p q := p ≫ q
  map p := (_root_.AlgebraicGeometry.Spec.map p).appTop
  map_identity := by
    intro A x
    change (_root_.AlgebraicGeometry.Spec.map (𝟙 A)).appTop x = x
    simp
  map_comp := by
    intro A B C p q x
    change (_root_.AlgebraicGeometry.Spec.map (p ≫ q)).appTop x =
      (_root_.AlgebraicGeometry.Spec.map q).appTop
        ((_root_.AlgebraicGeometry.Spec.map p).appTop x)
    simp

/-- The global-section fiber map is itself an exact bundled ring homomorphism. -/
def ringCertificate {A B : CommRingCat.{u}}
    (p : globalSectionsSystem.Port A B) :
    GRWTSK.Topology.Algebra.PortFiber.RingCertificate globalSectionsSystem p :=
  GRWTSK.Topology.Algebra.PortFiber.RingCertificate.ofHom globalSectionsSystem
    (_root_.AlgebraicGeometry.Spec.map p).appTop.hom (fun _ => rfl)

/-- Ring certification composes along exact affine global-section ports. -/
def ringProperty :
    GRWTSK.Topology.PortFiber.ComposableProperty globalSectionsSystem :=
  GRWTSK.Topology.Algebra.PortFiber.RingCertificate.composableProperty
    globalSectionsSystem

/-- The map on sections over one selected open set. -/
def sectionMap {A B : CommRingCat.{u}} (p : A ⟶ B)
    (U : (_root_.AlgebraicGeometry.Spec A).Opens) :=
  (_root_.AlgebraicGeometry.Spec.map p).app U

/-- The selected section map is exactly Mathlib's structure-sheaf comap for the same ring map. -/
theorem sectionMap_eq_structureSheafComap {A B : CommRingCat.{u}}
    (p : A ⟶ B) (U : (_root_.AlgebraicGeometry.Spec A).Opens) :
    sectionMap p U =
      CommRingCat.ofHom
        (_root_.AlgebraicGeometry.StructureSheaf.comap p.hom U
          (_root_.AlgebraicGeometry.Spec.map p ⁻¹ᵁ U) le_rfl) := by
  rfl

/-- The local-ring map on stalks at one exact point. -/
def stalkMap {A B : CommRingCat.{u}} (p : A ⟶ B)
    (x : _root_.AlgebraicGeometry.Spec B) :=
  (_root_.AlgebraicGeometry.Spec.map p).stalkMap x

/-- Every affine `Spec.map` stalk map is a local ring homomorphism. -/
theorem stalkMap_isLocal {A B : CommRingCat.{u}} (p : A ⟶ B)
    (x : _root_.AlgebraicGeometry.Spec B) :
    IsLocalHom (stalkMap p x).hom := by
  change IsLocalHom ((_root_.AlgebraicGeometry.Spec.map p).stalkMap x).hom
  infer_instance

/-- Recover the original ring morphism, up to the canonical global-section isomorphisms, from
its affine scheme map. -/
noncomputable def globalSectionsArrowIso {A B : CommRingCat.{u}} (p : A ⟶ B) :
    Arrow.mk p ≅ Arrow.mk ((_root_.AlgebraicGeometry.Spec.map p).appTop) :=
  _root_.AlgebraicGeometry.arrowIsoΓSpecOfIsAffine p

/-- Proposition-level wrapper for simultaneous theorem portfolios. -/
theorem globalSections_recover_original {A B : CommRingCat.{u}} (p : A ⟶ B) :
    Nonempty
      (Arrow.mk p ≅ Arrow.mk ((_root_.AlgebraicGeometry.Spec.map p).appTop)) :=
  ⟨globalSectionsArrowIso p⟩

namespace Fixtures

open GRWTSK.Geometry.AlgebraicGeometry.AffineSpecPort.Fixtures

/-- Algebraic direction of the arithmetic tower on global sections. -/
def integerToRational : globalSectionsSystem.Port integers rationals :=
  CommRingCat.ofHom (algebraMap ℤ ℚ)

/-- Algebraic direction of the arithmetic tower on global sections. -/
def rationalToComplex : globalSectionsSystem.Port rationals complex :=
  CommRingCat.ofHom (algebraMap ℚ ℂ)

/-- The global-section path follows `ℤ ⟶ ℚ ⟶ ℂ`, opposite to the associated affine-Spec path. -/
def arithmeticTowerPath :
    GRWTSK.Topology.PortFiber.CertifiedPath globalSectionsSystem ringProperty
      integers complex :=
  .cons integerToRational (ringCertificate integerToRational)
    (.cons rationalToComplex (ringCertificate rationalToComplex)
      (.nil complex))

/-- The complete arithmetic global-section path remains an exact ring homomorphism. -/
theorem arithmeticTower_ring :
    GRWTSK.Topology.Algebra.PortFiber.RingCertificate
      globalSectionsSystem arithmeticTowerPath.composite :=
  arithmeticTowerPath.certified

/-- The complete arithmetic ring map is recovered from its affine scheme map on global sections. -/
theorem arithmeticTower_recovers_original :
    Nonempty
      (Arrow.mk arithmeticTowerPath.composite ≅
        Arrow.mk
          ((_root_.AlgebraicGeometry.Spec.map arithmeticTowerPath.composite).appTop)) :=
  globalSections_recover_original arithmeticTowerPath.composite

end Fixtures

end GRWTSK.Geometry.AlgebraicGeometry.AffineStructureSheafPort
