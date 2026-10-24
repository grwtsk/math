import GRWTSK.Topology.PortFiber.MultiCertificate
import GRWTSK.Topology.Algebra.PortFiberRing

namespace GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction

open GRWTSK.Topology

/-- A selected complex domain. -/
structure Domain where
  carrier : Set ℂ

/-- Complex-valued sections on a selected domain. -/
abbrev Section (A : Domain) := A.carrier → ℂ

/-- A restriction port from `A` to a subdomain `B`. -/
structure Port (A B : Domain) where
  subset : B.carrier ⊆ A.carrier

namespace Port

/-- Identity restriction. -/
def identity (A : Domain) : Port A A where
  subset := fun _ h => h

/-- Composition of restrictions through the exact middle domain. -/
def comp {A B C : Domain} (p : Port A B) (q : Port B C) : Port A C where
  subset := fun _ h => p.subset (q.subset h)

end Port

/-- Restrict one section along an exact domain inclusion. -/
def restrict {A B : Domain} (p : Port A B) (f : Section A) : Section B :=
  fun z => f ⟨z.1, p.subset z.2⟩

/-- Domains and section restrictions as a dependent port-fiber system. -/
def system : GRWTSK.Topology.PortFiber where
  Obj := Domain
  Fiber := Section
  Port := Port
  identity := Port.identity
  comp := Port.comp
  map p := restrict p
  map_identity := by
    intro A f
    funext z
    exact congrArg f (Subtype.ext rfl)
  map_comp := by
    intro A B C p q f
    funext z
    exact congrArg f (Subtype.ext rfl)

/-- A section is the restriction of an ambient function holomorphic on its selected domain. -/
def ExtendsHolomorphically (A : Domain) (f : Section A) : Prop :=
  ∃ F : ℂ → ℂ,
    DifferentiableOn ℂ F A.carrier ∧
      ∀ z : A.carrier, F z = f z

/-- A restriction port preserves holomorphic extendability. -/
structure HolomorphicRestrictionCertificate
    {A B : Domain} (p : Port A B) : Prop where
  preserves :
    ∀ f : Section A,
      ExtendsHolomorphically A f →
        ExtendsHolomorphically B (system.map p f)

namespace HolomorphicRestrictionCertificate

/-- Every exact restriction preserves holomorphic extendability. -/
def canonical {A B : Domain} (p : Port A B) :
    HolomorphicRestrictionCertificate p where
  preserves := by
    intro f hf
    rcases hf with ⟨F, hF, hEq⟩
    refine ⟨F, hF.mono p.subset, ?_⟩
    intro z
    change F (z : ℂ) = f ⟨z.1, p.subset z.2⟩
    exact hEq ⟨z.1, p.subset z.2⟩

/-- Identity restriction preserves holomorphic extendability. -/
def identity (A : Domain) :
    HolomorphicRestrictionCertificate (Port.identity A) :=
  canonical (Port.identity A)

/-- Composed restrictions retain holomorphic extendability. -/
def comp {A B C : Domain} {p : Port A B} {q : Port B C}
    (_hp : HolomorphicRestrictionCertificate p)
    (_hq : HolomorphicRestrictionCertificate q) :
    HolomorphicRestrictionCertificate (Port.comp p q) :=
  canonical (Port.comp p q)

/-- Holomorphic restriction preservation as a composable port law. -/
def composableProperty :
    GRWTSK.Topology.PortFiber.ComposableProperty system where
  Holds := fun p => HolomorphicRestrictionCertificate p
  identity := identity
  comp := fun hp hq => comp hp hq

end HolomorphicRestrictionCertificate

/-- Restriction as an exact pointwise ring homomorphism. -/
def restrictionRingHom {A B : Domain} (p : Port A B) :
    Section A →+* Section B where
  toFun := restrict p
  map_one' := by
    funext z
    rfl
  map_mul' := by
    intro f g
    funext z
    rfl
  map_zero' := by
    funext z
    rfl
  map_add' := by
    intro f g
    funext z
    rfl

/-- Ring-homomorphism certificate for the exact restriction map. -/
def ringCertificate {A B : Domain} (p : Port A B) :
    GRWTSK.Topology.Algebra.PortFiber.RingCertificate system p :=
  GRWTSK.Topology.Algebra.PortFiber.RingCertificate.ofHom system
    (restrictionRingHom p) (fun _ => rfl)

/-- Restriction of function spaces is continuous for the product topologies. -/
theorem restrict_continuous {A B : Domain} (p : Port A B) :
    Continuous (system.map p) := by
  apply continuous_pi
  intro z
  exact continuous_apply (⟨z.1, p.subset z.2⟩ : A.carrier)

/-- One restriction map is simultaneously a ring homomorphism and continuous. -/
def topologicalRingCertificate {A B : Domain} (p : Port A B) :
    GRWTSK.Topology.Algebra.PortFiber.TopologicalRingCertificate system p where
  ring := ringCertificate p
  continuous := restrict_continuous p

/-- The two noncoercible certificate classes selected for this restriction system. -/
inductive LawIndex
  | holomorphicRestriction
  | topologicalRing
  deriving DecidableEq, Repr

/-- Exact law selected at each certificate index. -/
def law : LawIndex →
    GRWTSK.Topology.PortFiber.ComposableProperty system
  | .holomorphicRestriction =>
      HolomorphicRestrictionCertificate.composableProperty
  | .topologicalRing =>
      GRWTSK.Topology.Algebra.PortFiber.TopologicalRingCertificate.composableProperty system

/-- Simultaneous holomorphic-restriction and topological-ring law. -/
def simultaneousProperty :
    GRWTSK.Topology.PortFiber.ComposableProperty system :=
  GRWTSK.Topology.PortFiber.ComposableProperty.all law

/-- Every restriction port carries both selected certificates. -/
def simultaneousCertificate {A B : Domain} (p : Port A B) :
    simultaneousProperty.Holds p := by
  intro i
  cases i with
  | holomorphicRestriction =>
      exact HolomorphicRestrictionCertificate.canonical p
  | topologicalRing =>
      exact topologicalRingCertificate p

namespace Fixtures

/-- Whole complex plane. -/
def whole : Domain := ⟨Set.univ⟩

/-- Closed upper half-plane. -/
def upper : Domain := ⟨{z : ℂ | 0 ≤ z.im}⟩

/-- Real axis as a complex subset. -/
def realAxis : Domain := ⟨{z : ℂ | z.im = 0}⟩

/-- Restrict from the whole plane to the upper half-plane. -/
def wholeToUpper : Port whole upper where
  subset := fun z _ => Set.mem_univ z

/-- Restrict from the upper half-plane to the real axis. -/
def upperToReal : Port upper realAxis where
  subset := by
    intro z hz
    simpa [hz]

/-- A two-stage path simultaneously certified for holomorphic restriction and topological rings. -/
def restrictionPath :
    GRWTSK.Topology.PortFiber.CertifiedPath system simultaneousProperty
      whole realAxis :=
  .cons wholeToUpper (simultaneousCertificate wholeToUpper)
    (.cons upperToReal (simultaneousCertificate upperToReal)
      (.nil realAxis))

/-- The path composite preserves holomorphic extendability. -/
theorem restrictionPath_holomorphic :
    HolomorphicRestrictionCertificate restrictionPath.composite :=
  restrictionPath.certified .holomorphicRestriction

/-- The same path composite is an exact continuous ring homomorphism. -/
theorem restrictionPath_topologicalRing :
    GRWTSK.Topology.Algebra.PortFiber.TopologicalRingCertificate
      system restrictionPath.composite :=
  restrictionPath.certified .topologicalRing

end Fixtures

end GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
