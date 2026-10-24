# Complete source: GRWTSK.Topology.Algebra.PrimeSpectrumPort

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48049847be325f603c92bf7feead13eeff55b6ff` · SHA-256 `2f498291f89d88d37d62451650ad5329ac87018ba8116709d8ca325cb232bf15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Topology.PortFiber.Certified
import Mathlib.RingTheory.Spectrum.Prime.Topology

namespace GRWTSK.Topology.Algebra.PrimeSpectrumPort

open GRWTSK.Topology

universe u

/-- A commutative ring packaged as a port-fiber object. -/
structure CommRingObject where
  Carrier : Type u
  instCommRing : CommRing Carrier

attribute [instance] CommRingObject.instCommRing

/-- Ring homomorphisms act contravariantly on prime spectra.

A port `A ⟶ B` is a ring homomorphism `B.Carrier →+* A.Carrier`, so its induced fiber map
has the covariant topological direction `Spec A → Spec B`. -/
def system : GRWTSK.Topology.PortFiber where
  Obj := CommRingObject
  Fiber A := PrimeSpectrum A.Carrier
  Port A B := B.Carrier →+* A.Carrier
  identity A := RingHom.id A.Carrier
  comp p q := p.comp q
  map p := PrimeSpectrum.comap p
  map_identity := by
    intro A x
    rfl
  map_comp := by
    intro A B C p q x
    rfl

/-- The exact fiber map is the prime-ideal comap induced by the reverse-direction ring map. -/
@[simp]
theorem map_apply {A B : CommRingObject}
    (p : system.Port A B) (x : PrimeSpectrum A.Carrier) :
    system.map p x = PrimeSpectrum.comap p x :=
  rfl

/-- The exact composite ring port is composition in the reverse algebraic direction. -/
@[simp]
theorem comp_eq {A B C : CommRingObject}
    (p : system.Port A B) (q : system.Port B C) :
    system.comp p q = p.comp q :=
  rfl

/-- Every ring port induces a continuous map of prime spectra. -/
def continuousCertificate {A B : CommRingObject}
    (p : system.Port A B) :
    GRWTSK.Topology.PortFiber.ContinuousCertificate system p where
  continuous := PrimeSpectrum.continuous_comap p

/-- Continuity of prime-spectrum maps is composable along exact ring ports. -/
def continuousProperty :
    GRWTSK.Topology.PortFiber.ComposableProperty system :=
  GRWTSK.Topology.PortFiber.ContinuousCertificate.composableProperty system

/-- The induced continuous map of a composite is the composite of the induced maps. -/
theorem map_comp_apply {A B C : CommRingObject}
    (p : system.Port A B) (q : system.Port B C)
    (x : PrimeSpectrum A.Carrier) :
    system.map (system.comp p q) x = system.map q (system.map p x) :=
  rfl

namespace Fixtures

/-- Integer, rational, and complex ring objects. -/
def integers : CommRingObject := ⟨ℤ, inferInstance⟩
def rationals : CommRingObject := ⟨ℚ, inferInstance⟩
def complex : CommRingObject := ⟨ℂ, inferInstance⟩

/-- The algebra map `ℚ → ℂ`, regarded as the topological port `Spec ℂ → Spec ℚ`. -/
def complexToRational : system.Port complex rationals :=
  algebraMap ℚ ℂ

/-- The algebra map `ℤ → ℚ`, regarded as the topological port `Spec ℚ → Spec ℤ`. -/
def rationalToInteger : system.Port rationals integers :=
  algebraMap ℤ ℚ

/-- Contravariant arithmetic tower as a continuously certified prime-spectrum path. -/
def arithmeticTowerPath :
    GRWTSK.Topology.PortFiber.CertifiedPath system continuousProperty
      complex integers :=
  .cons complexToRational (continuousCertificate complexToRational)
    (.cons rationalToInteger (continuousCertificate rationalToInteger)
      (.nil integers))

/-- The complete arithmetic tower induces one continuous map `Spec ℂ → Spec ℤ`. -/
theorem arithmeticTower_continuous :
    GRWTSK.Topology.PortFiber.ContinuousCertificate
      system arithmeticTowerPath.composite :=
  arithmeticTowerPath.certified

/-- The composite port is the exact ring homomorphism `ℤ → ℂ`. -/
theorem arithmeticTower_composite :
    arithmeticTowerPath.composite =
      (algebraMap ℚ ℂ).comp (algebraMap ℤ ℚ) := by
  ext x
  rfl

/-- The topological map follows the reverse order of the algebraic maps. -/
theorem arithmeticTower_map (x : PrimeSpectrum ℂ) :
    system.map arithmeticTowerPath.composite x =
      PrimeSpectrum.comap (algebraMap ℤ ℚ)
        (PrimeSpectrum.comap (algebraMap ℚ ℂ) x) := by
  calc
    system.map arithmeticTowerPath.composite x = arithmeticTowerPath.eval x :=
      arithmeticTowerPath.map_composite x
    _ = PrimeSpectrum.comap (algebraMap ℤ ℚ)
        (PrimeSpectrum.comap (algebraMap ℚ ℂ) x) := rfl

end Fixtures

end GRWTSK.Topology.Algebra.PrimeSpectrumPort
```
