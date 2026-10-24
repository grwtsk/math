import GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction

namespace GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing

open GRWTSK.Topology
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction

/-- Complex-valued sections that extend to an ambient function holomorphic on the selected domain
form an exact subring of the full function ring. -/
def holomorphicSubring (A : Domain) : Subring (Section A) where
  carrier := ExtendsHolomorphically A
  zero_mem' := by
    refine ⟨fun _ : ℂ => 0, (differentiable_const (0 : ℂ)).differentiableOn, ?_⟩
    intro z
    rfl
  one_mem' := by
    refine ⟨fun _ : ℂ => 1, (differentiable_const (1 : ℂ)).differentiableOn, ?_⟩
    intro z
    rfl
  add_mem' := by
    intro f g hf hg
    rcases hf with ⟨F, hF, hF_eq⟩
    rcases hg with ⟨G, hG, hG_eq⟩
    refine ⟨F + G, hF.add hG, ?_⟩
    intro z
    simpa using congrArg₂ (fun a b : ℂ => a + b) (hF_eq z) (hG_eq z)
  neg_mem' := by
    intro f hf
    rcases hf with ⟨F, hF, hF_eq⟩
    refine ⟨-F, hF.neg, ?_⟩
    intro z
    simpa using congrArg (fun a : ℂ => -a) (hF_eq z)
  mul_mem' := by
    intro f g hf hg
    rcases hf with ⟨F, hF, hF_eq⟩
    rcases hg with ⟨G, hG, hG_eq⟩
    refine ⟨F * G, hF.mul hG, ?_⟩
    intro z
    simpa using congrArg₂ (fun a b : ℂ => a * b) (hF_eq z) (hG_eq z)

/-- Holomorphic section ring over one selected complex domain. -/
abbrev HolomorphicSection (A : Domain) := ↥(holomorphicSubring A)

/-- Restrict a holomorphic section along an exact domain inclusion. -/
def restrict {A B : Domain} (p : Port A B) :
    HolomorphicSection A → HolomorphicSection B :=
  fun f =>
    ⟨GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction.restrict p (f : Section A),
      (HolomorphicRestrictionCertificate.canonical p).preserves
        (f : Section A) f.property⟩

/-- Restriction is an exact ring homomorphism on holomorphic section rings. -/
def restrictionRingHom {A B : Domain} (p : Port A B) :
    HolomorphicSection A →+* HolomorphicSection B where
  toFun := restrict p
  map_one' := by
    apply Subtype.ext
    rfl
  map_mul' := by
    intro f g
    apply Subtype.ext
    rfl
  map_zero' := by
    apply Subtype.ext
    rfl
  map_add' := by
    intro f g
    apply Subtype.ext
    rfl

/-- Exact domain restrictions on holomorphic section rings form a dependent port-fiber system. -/
def system : GRWTSK.Topology.PortFiber where
  Obj := Domain
  Fiber := HolomorphicSection
  Port := Port
  identity := Port.identity
  comp := Port.comp
  map p := restrict p
  map_identity := by
    intro A f
    apply Subtype.ext
    funext z
    exact congrArg (f : Section A) (Subtype.ext rfl)
  map_comp := by
    intro A B C p q f
    apply Subtype.ext
    funext z
    exact congrArg (f : Section A) (Subtype.ext rfl)

/-- The port-fiber map is represented by the exact holomorphic-section restriction homomorphism. -/
def ringCertificate {A B : Domain} (p : Port A B) :
    GRWTSK.Topology.Algebra.PortFiber.RingCertificate system p :=
  GRWTSK.Topology.Algebra.PortFiber.RingCertificate.ofHom system
    (restrictionRingHom p) (fun _ => rfl)

/-- Restriction is continuous for the inherited subspace topologies on holomorphic section rings. -/
theorem restrict_continuous {A B : Domain} (p : Port A B) :
    Continuous (system.map p) := by
  exact
    ((GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction.restrict_continuous p).comp
      continuous_subtype_val).subtype_mk _

/-- One exact restriction map is simultaneously a ring homomorphism and continuous. -/
def topologicalRingCertificate {A B : Domain} (p : Port A B) :
    GRWTSK.Topology.Algebra.PortFiber.TopologicalRingCertificate system p where
  ring := ringCertificate p
  continuous := restrict_continuous p

/-- The target of every restriction remains an actual holomorphic section by construction. -/
structure HolomorphicFiberCertificate {A B : Domain} (p : Port A B) : Prop where
  target_holomorphic :
    ∀ f : HolomorphicSection A,
      ExtendsHolomorphically B ((system.map p f : HolomorphicSection B) : Section B)

namespace HolomorphicFiberCertificate

/-- Every restriction port carries the exact target-holomorphy proof. -/
def canonical {A B : Domain} (p : Port A B) :
    HolomorphicFiberCertificate p where
  target_holomorphic := fun f => (system.map p f).property

/-- Holomorphic-fiber certification composes through the exact middle domain. -/
def composableProperty :
    GRWTSK.Topology.PortFiber.ComposableProperty system where
  Holds := fun p => HolomorphicFiberCertificate p
  identity := fun A => canonical (Port.identity A)
  comp := by
    intro A B C p q _ _
    exact canonical (Port.comp p q)

end HolomorphicFiberCertificate

/-- Two independent laws carried by holomorphic-section restriction paths. -/
inductive LawIndex
  | holomorphicFiber
  | topologicalRing
  deriving DecidableEq, Repr

/-- Exact law selected at each index. -/
def law : LawIndex → GRWTSK.Topology.PortFiber.ComposableProperty system
  | .holomorphicFiber => HolomorphicFiberCertificate.composableProperty
  | .topologicalRing =>
      GRWTSK.Topology.Algebra.PortFiber.TopologicalRingCertificate.composableProperty system

/-- Simultaneous target holomorphy and continuous-ring certification. -/
def simultaneousProperty :
    GRWTSK.Topology.PortFiber.ComposableProperty system :=
  GRWTSK.Topology.PortFiber.ComposableProperty.all law

/-- Every restriction port carries both exact laws. -/
def simultaneousCertificate {A B : Domain} (p : Port A B) :
    simultaneousProperty.Holds p := by
  intro i
  cases i with
  | holomorphicFiber => exact HolomorphicFiberCertificate.canonical p
  | topologicalRing => exact topologicalRingCertificate p

/-- Forgetful ring homomorphism from holomorphic sections to all sections. -/
def forget (A : Domain) : HolomorphicSection A →+* Section A :=
  (holomorphicSubring A).subtype

/-- Forgetting holomorphy commutes exactly with restriction. -/
theorem forget_restrict {A B : Domain} (p : Port A B)
    (f : HolomorphicSection A) :
    forget B (system.map p f) =
      GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction.system.map p (forget A f) :=
  rfl

namespace Fixtures

/-- Whole-plane to upper-half-plane to real-axis restriction on actual holomorphic section rings. -/
def restrictionPath :
    GRWTSK.Topology.PortFiber.CertifiedPath system simultaneousProperty
      GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction.Fixtures.whole
      GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction.Fixtures.realAxis :=
  .cons GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction.Fixtures.wholeToUpper
    (simultaneousCertificate
      GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction.Fixtures.wholeToUpper)
    (.cons GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction.Fixtures.upperToReal
      (simultaneousCertificate
        GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction.Fixtures.upperToReal)
      (.nil GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction.Fixtures.realAxis))

/-- The complete path lands in the holomorphic section ring. -/
theorem restrictionPath_holomorphicFiber :
    HolomorphicFiberCertificate restrictionPath.composite :=
  restrictionPath.certified .holomorphicFiber

/-- The same complete path is a continuous ring homomorphism. -/
theorem restrictionPath_topologicalRing :
    GRWTSK.Topology.Algebra.PortFiber.TopologicalRingCertificate
      system restrictionPath.composite :=
  restrictionPath.certified .topologicalRing

end Fixtures

end GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing
