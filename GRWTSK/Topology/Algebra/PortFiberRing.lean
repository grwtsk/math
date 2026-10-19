import GRWTSK.Topology.PortFiber.Certified

namespace GRWTSK.Topology.Algebra.PortFiber

open GRWTSK.Topology

universe u v w

variable (P : GRWTSK.Topology.PortFiber.{u, v, w})
variable [∀ A : P.Obj, Semiring (P.Fiber A)]

/-- Propositional ring laws for the exact selected fiber map.

The bundled homomorphism is reconstructed from this fixed map and these proofs. Keeping the
certificate in `Prop` makes it a valid `ComposableProperty` without extracting data from a proof. -/
structure RingCertificate {A B : P.Obj} (p : P.Port A B) : Prop where
  map_zero : P.map p 0 = 0
  map_one : P.map p 1 = 1
  map_add : ∀ x y, P.map p (x + y) = P.map p x + P.map p y
  map_mul : ∀ x y, P.map p (x * y) = P.map p x * P.map p y

namespace RingCertificate

/-- The canonical bundled homomorphism uses the already selected port function. -/
def hom {A B : P.Obj} {p : P.Port A B} (h : RingCertificate P p) :
    P.Fiber A →+* P.Fiber B where
  toFun := P.map p
  map_zero' := h.map_zero
  map_one' := h.map_one
  map_add' := h.map_add
  map_mul' := h.map_mul

/-- Compatibility accessor: the bundled homomorphism has exactly the port's map. -/
@[simp]
theorem map_eq {A B : P.Obj} {p : P.Port A B} (h : RingCertificate P p)
    (x : P.Fiber A) : h.hom x = P.map p x :=
  rfl

/-- Import a bundled homomorphism only with pointwise equality to the selected port map. -/
def ofHom {A B : P.Obj} {p : P.Port A B}
    (f : P.Fiber A →+* P.Fiber B) (hf : ∀ x, f x = P.map p x) :
    RingCertificate P p where
  map_zero := by simpa only [hf] using f.map_zero
  map_one := by simpa only [hf] using f.map_one
  map_add := by
    intro x y
    simpa only [hf] using f.map_add x y
  map_mul := by
    intro x y
    simpa only [hf] using f.map_mul x y

/-- Reconstruction retains the exact supplied ring homomorphism. -/
theorem hom_ofHom {A B : P.Obj} {p : P.Port A B}
    (f : P.Fiber A →+* P.Fiber B) (hf : ∀ x, f x = P.map p x) :
    (ofHom P f hf).hom = f := by
  ext x
  exact (hf x).symm

/-- Identity ports carry the identity ring homomorphism. -/
def identity (A : P.Obj) : RingCertificate P (P.identity A) :=
  ofHom P (RingHom.id (P.Fiber A)) (fun x => (P.map_identity A x).symm)

/-- Exact ring certificates compose through the exact middle fiber. -/
def comp {A B C : P.Obj} {p : P.Port A B} {q : P.Port B C}
    (hp : RingCertificate P p) (hq : RingCertificate P q) :
    RingCertificate P (P.comp p q) :=
  ofHom P (hq.hom.comp hp.hom) (fun x => (P.map_comp p q x).symm)

/-- Ring-homomorphism certification as a composable port proposition. -/
def composableProperty : GRWTSK.Topology.PortFiber.ComposableProperty P where
  Holds := fun p => RingCertificate P p
  identity := RingCertificate.identity P
  comp := fun hp hq => RingCertificate.comp P hp hq

end RingCertificate

variable [∀ A : P.Obj, TopologicalSpace (P.Fiber A)]

/-- One exact port map satisfies the ring laws and is continuous.

Both fields are propositions. `ring.hom` reconstructs the bundled homomorphism with exactly
`P.map p` as its function; its continuity cannot concern a different function. -/
structure TopologicalRingCertificate {A B : P.Obj} (p : P.Port A B) : Prop where
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

/-- Topological-ring certification as a composable port proposition. -/
def composableProperty : GRWTSK.Topology.PortFiber.ComposableProperty P where
  Holds := fun p => TopologicalRingCertificate P p
  identity := TopologicalRingCertificate.identity P
  comp := fun hp hq => TopologicalRingCertificate.comp P hp hq

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

/-- Two identity atoms as a certified topological-ring path. -/
def complexIdentityPath :
    GRWTSK.Topology.PortFiber.CertifiedPath complexFunctionFiber
      (TopologicalRingCertificate.composableProperty complexFunctionFiber)
      PUnit.unit PUnit.unit :=
  .cons (complexFunctionFiber.identity PUnit.unit) complexIdentityCertificate
    (.cons (complexFunctionFiber.identity PUnit.unit) complexIdentityCertificate
      (.nil PUnit.unit))

/-- The composite of the whole path retains one exact topological-ring certificate. -/
theorem complexIdentityPath_certified :
    TopologicalRingCertificate complexFunctionFiber complexIdentityPath.composite :=
  complexIdentityPath.certified

end Fixtures

end GRWTSK.Topology.Algebra.PortFiber
