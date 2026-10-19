import GRWTSK.Topology.PortFiber.Certified

namespace GRWTSK.Topology.Algebra.PortFiber

open GRWTSK.Topology

universe u v w

variable (P : GRWTSK.Topology.PortFiber.{u, v, w})
variable [∀ A : P.Obj, Semiring (P.Fiber A)]

/-- The exact fiber map of a port is represented by one bundled ring homomorphism. -/
structure RingCertificate {A B : P.Obj} (p : P.Port A B) where
  hom : P.Fiber A →+* P.Fiber B
  map_eq : ∀ x, hom x = P.map p x

namespace RingCertificate

/-- Identity ports carry the identity ring homomorphism. -/
def identity (A : P.Obj) : RingCertificate P (P.identity A) where
  hom := RingHom.id (P.Fiber A)
  map_eq := by
    intro x
    simpa using (P.map_identity A x).symm

/-- Exact ring certificates compose through the exact middle fiber. -/
def comp {A B C : P.Obj} {p : P.Port A B} {q : P.Port B C}
    (hp : RingCertificate P p) (hq : RingCertificate P q) :
    RingCertificate P (P.comp p q) where
  hom := hq.hom.comp hp.hom
  map_eq := by
    intro x
    calc
      (hq.hom.comp hp.hom) x = hq.hom (hp.hom x) := rfl
      _ = hq.hom (P.map p x) := congrArg (fun y => hq.hom y) (hp.map_eq x)
      _ = P.map q (P.map p x) := hq.map_eq _
      _ = P.map (P.comp p q) x := (P.map_comp p q x).symm

end RingCertificate

variable [∀ A : P.Obj, TopologicalSpace (P.Fiber A)]

/-- One exact port map is simultaneously a ring homomorphism and continuous.

The continuity field is about `P.map p`, while `ring.map_eq` proves this is the same function as
its bundled ring homomorphism. -/
structure TopologicalRingCertificate {A B : P.Obj} (p : P.Port A B) where
  ring : RingCertificate P p
  continuous : Continuous (P.map p)

namespace TopologicalRingCertificate

/-- Identity ports are continuous ring ports. -/
def identity (A : P.Obj) : TopologicalRingCertificate P (P.identity A) where
  ring := RingCertificate.identity P A
  continuous := by
    have hmap : P.map (P.identity A) = id := by
      funext x
      exact P.map_identity A x
    rw [hmap]
    exact continuous_id

/-- Topological-ring ports compose while preserving both laws on the same map. -/
def comp {A B C : P.Obj} {p : P.Port A B} {q : P.Port B C}
    (hp : TopologicalRingCertificate P p)
    (hq : TopologicalRingCertificate P q) :
    TopologicalRingCertificate P (P.comp p q) where
  ring := RingCertificate.comp P hp.ring hq.ring
  continuous := by
    have hmap : P.map (P.comp p q) = P.map q ∘ P.map p := by
      funext x
      exact P.map_comp p q x
    rw [hmap]
    exact hq.continuous.comp hp.continuous

end TopologicalRingCertificate

namespace Fixtures

/-- Function-port system on one complex fiber. -/
def complexFunctionFiber : GRWTSK.Topology.PortFiber :=
  GRWTSK.Topology.PortFiber.ofFunctions PUnit (fun _ => ℂ)

/-- Identity on the complex fiber is a continuous ring port. -/
def complexIdentityCertificate :
    TopologicalRingCertificate complexFunctionFiber
      (complexFunctionFiber.identity PUnit.unit) :=
  TopologicalRingCertificate.identity complexFunctionFiber PUnit.unit

/-- Composition is exercised without weakening either certificate. -/
def complexDoubleIdentityCertificate :
    TopologicalRingCertificate complexFunctionFiber
      (complexFunctionFiber.comp
        (complexFunctionFiber.identity PUnit.unit)
        (complexFunctionFiber.identity PUnit.unit)) :=
  TopologicalRingCertificate.comp complexFunctionFiber
    complexIdentityCertificate complexIdentityCertificate

end Fixtures

end GRWTSK.Topology.Algebra.PortFiber
