# Complete source: GRWTSK.AlgebraicGeometry.AffineSpecPort

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a393f915645a676998354d2d946b8b32c9f084c` · SHA-256 `0eba628a3f314227ca6db9410e6b34c305e1d0f34cad9f9e7f9e8a1e57874a0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Topology.PortFiber.Certified
import Mathlib.AlgebraicGeometry.Scheme

namespace GRWTSK.AlgebraicGeometry.AffineSpecPort

open CategoryTheory
open GRWTSK.Topology

universe u

/-- Commutative rings with reverse-direction ring morphisms form an affine-scheme port system.

A port `A ⟶ B` is a morphism `B ⟶ A` in `CommRingCat`. Mathlib's contravariant `Spec.map`
then gives the scheme morphism and point map from `Spec A` to `Spec B`. -/
def system : GRWTSK.Topology.PortFiber where
  Obj := CommRingCat.{u}
  Fiber A := _root_.AlgebraicGeometry.Spec A
  Port A B := B ⟶ A
  identity A := 𝟙 A
  comp p q := q ≫ p
  map p := _root_.AlgebraicGeometry.Spec.map p
  map_identity := by
    intro A x
    rfl
  map_comp := by
    intro A B C p q x
    rfl

/-- The actual Mathlib affine-scheme morphism carried by one ring port. -/
def schemeMap {A B : CommRingCat.{u}} (p : system.Port A B) :
    _root_.AlgebraicGeometry.Spec A ⟶ _root_.AlgebraicGeometry.Spec B :=
  _root_.AlgebraicGeometry.Spec.map p

/-- The underlying point map is exactly prime-ideal comap. -/
@[simp]
theorem map_apply {A B : CommRingCat.{u}}
    (p : system.Port A B) (x : _root_.AlgebraicGeometry.Spec A) :
    system.map p x = PrimeSpectrum.comap p.hom x :=
  rfl

/-- The selected scheme morphism has the same exact point map as the port-fiber system. -/
@[simp]
theorem schemeMap_apply {A B : CommRingCat.{u}}
    (p : system.Port A B) (x : _root_.AlgebraicGeometry.Spec A) :
    schemeMap p x = system.map p x :=
  rfl

/-- Identity ring ports induce identity affine-scheme morphisms. -/
@[simp]
theorem schemeMap_identity (A : CommRingCat.{u}) :
    schemeMap (𝟙 A) = 𝟙 (_root_.AlgebraicGeometry.Spec A) := by
  simpa [schemeMap] using (_root_.AlgebraicGeometry.Spec.map_id A)

/-- Composition retains the contravariant order at the scheme-morphism level. -/
@[simp]
theorem schemeMap_comp {A B C : CommRingCat.{u}}
    (p : system.Port A B) (q : system.Port B C) :
    schemeMap (system.comp p q) = schemeMap p ≫ schemeMap q := by
  simpa [schemeMap, system] using (_root_.AlgebraicGeometry.Spec.map_comp q p)

/-- Every affine-scheme port has a continuous underlying point map. -/
def continuousCertificate {A B : CommRingCat.{u}}
    (p : system.Port A B) :
    GRWTSK.Topology.PortFiber.ContinuousCertificate system p where
  continuous := (schemeMap p).continuous

/-- Continuity of affine-scheme point maps is composable along exact ring ports. -/
def continuousProperty :
    GRWTSK.Topology.PortFiber.ComposableProperty system :=
  GRWTSK.Topology.PortFiber.ContinuousCertificate.composableProperty system

namespace Fixtures

/-- Integer, rational, and complex affine-scheme objects. -/
def integers : CommRingCat := CommRingCat.of ℤ
def rationals : CommRingCat := CommRingCat.of ℚ
def complex : CommRingCat := CommRingCat.of ℂ

/-- The algebra map `ℚ → ℂ`, hence the affine-scheme port `Spec ℂ → Spec ℚ`. -/
def complexToRational : system.Port complex rationals :=
  CommRingCat.ofHom (algebraMap ℚ ℂ)

/-- The algebra map `ℤ → ℚ`, hence the affine-scheme port `Spec ℚ → Spec ℤ`. -/
def rationalToInteger : system.Port rationals integers :=
  CommRingCat.ofHom (algebraMap ℤ ℚ)

/-- Exact affine-scheme path induced contravariantly by `ℤ → ℚ → ℂ`. -/
def arithmeticTowerPath :
    GRWTSK.Topology.PortFiber.CertifiedPath system continuousProperty
      complex integers :=
  .cons complexToRational (continuousCertificate complexToRational)
    (.cons rationalToInteger (continuousCertificate rationalToInteger)
      (.nil integers))

/-- The complete path has one actual affine-scheme morphism. -/
def arithmeticTowerSchemeMap :
    _root_.AlgebraicGeometry.Spec complex ⟶
      _root_.AlgebraicGeometry.Spec integers :=
  schemeMap arithmeticTowerPath.composite

/-- The complete affine-scheme path has a continuous underlying point map. -/
theorem arithmeticTower_continuous :
    GRWTSK.Topology.PortFiber.ContinuousCertificate
      system arithmeticTowerPath.composite :=
  arithmeticTowerPath.certified

/-- The underlying point map follows the reverse order of the algebra maps. -/
theorem arithmeticTower_map
    (x : _root_.AlgebraicGeometry.Spec complex) :
    arithmeticTowerSchemeMap x =
      PrimeSpectrum.comap (algebraMap ℤ ℚ)
        (PrimeSpectrum.comap (algebraMap ℚ ℂ) x) := by
  calc
    arithmeticTowerSchemeMap x = system.map arithmeticTowerPath.composite x := rfl
    _ = arithmeticTowerPath.eval x := arithmeticTowerPath.map_composite x
    _ = PrimeSpectrum.comap (algebraMap ℤ ℚ)
        (PrimeSpectrum.comap (algebraMap ℚ ℂ) x) := rfl

end Fixtures

end GRWTSK.AlgebraicGeometry.AffineSpecPort
```
