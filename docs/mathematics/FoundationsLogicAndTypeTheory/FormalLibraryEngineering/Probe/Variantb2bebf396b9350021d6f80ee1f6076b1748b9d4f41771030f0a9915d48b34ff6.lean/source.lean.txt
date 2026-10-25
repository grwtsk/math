import CordTheory.Entry

/-!
# Finite rhetorical profiles and probe equivalence

Probe equality records observational indistinguishability under a pinned probe
family.  It does not establish strict identity unless a point-separation
certificate is supplied.
-/

namespace Cord

structure FiniteRhetoricalProfile where
  id : ProfileId
  version : VersionId
  fieldName : String
  stateCarrier : Type
  probeCarrier : Type
  ontologySnapshot : OntologySnapshotId
  evidenceSnapshot : ContentHash
  authorityProfile : ProfileId
  validationProfile : ProfileId
  dependencyRelation : RecordId
  obligationUniverse : RecordId
  theoremProfile : RecordId
  coordinateStatus : String → CoordinateStatus

namespace FiniteRhetoricalProfile

/-- The profile's required persistent identities are nonzero and named. -/
def Pinned (p : FiniteRhetoricalProfile) : Prop :=
  p.id.value ≠ 0 ∧
  p.version.value ≠ 0 ∧
  p.fieldName ≠ "" ∧
  p.ontologySnapshot.value ≠ 0 ∧
  p.evidenceSnapshot.value ≠ "" ∧
  p.authorityProfile.value ≠ 0 ∧
  p.validationProfile.value ≠ 0 ∧
  p.dependencyRelation.value ≠ 0 ∧
  p.obligationUniverse.value ≠ 0 ∧
  p.theoremProfile.value ≠ 0

end FiniteRhetoricalProfile

/-- Exact evaluation of a probe at a rhetorical point. -/
structure ProbeEvaluation (Point Probe Value : Type) where
  probe : Probe
  point : Point
  value : Value
  exactness : ExactnessStatus

/-- Observational equivalence induced by a probe evaluator. -/
def ProbeEquivalent {Point Probe Value : Type}
    (evaluate : Probe → Point → Value) (x y : Point) : Prop :=
  ∀ probe, evaluate probe x = evaluate probe y

namespace ProbeEquivalent

variable {Point Probe Value : Type}
variable (evaluate : Probe → Point → Value)

@[refl] theorem refl (x : Point) : ProbeEquivalent evaluate x x := by
  intro probe
  rfl

@[symm] theorem symm {x y : Point}
    (h : ProbeEquivalent evaluate x y) : ProbeEquivalent evaluate y x := by
  intro probe
  exact (h probe).symm

@[trans] theorem trans {x y z : Point}
    (hxy : ProbeEquivalent evaluate x y)
    (hyz : ProbeEquivalent evaluate y z) : ProbeEquivalent evaluate x z := by
  intro probe
  exact (hxy probe).trans (hyz probe)

end ProbeEquivalent

/-- The exact setoid represented by the probe table. -/
def probeSetoid {Point Probe Value : Type}
    (evaluate : Probe → Point → Value) : Setoid Point where
  r := ProbeEquivalent evaluate
  iseqv := {
    refl := ProbeEquivalent.refl evaluate
    symm := ProbeEquivalent.symm evaluate
    trans := ProbeEquivalent.trans evaluate
  }

/-- Probe-distinguishable rhetorical states. -/
abbrev ProbeQuotient {Point Probe Value : Type}
    (evaluate : Probe → Point → Value) := Quotient (probeSetoid evaluate)

/-- The probes distinguish every strict point identity. -/
def PointSeparating {Point Probe Value : Type}
    (evaluate : Probe → Point → Value) : Prop :=
  ∀ ⦃x y : Point⦄, ProbeEquivalent evaluate x y → x = y

/-- Under point separation, equality of quotient representatives implies strict identity. -/
theorem strict_identity_of_probe_equivalence
    {Point Probe Value : Type}
    {evaluate : Probe → Point → Value}
    (hsep : PointSeparating evaluate)
    {x y : Point}
    (hxy : ProbeEquivalent evaluate x y) : x = y :=
  hsep hxy

/-- Equal probe signatures do not imply identity without a separation premise. -/
theorem probe_equivalence_requires_separation
    {Point Probe Value : Type}
    (evaluate : Probe → Point → Value)
    (x y : Point) :
    ProbeEquivalent evaluate x y →
      (PointSeparating evaluate → x = y) := by
  intro hEquivalent hSeparating
  exact hSeparating hEquivalent

structure ProbeEquivalenceRecord where
  id : RecordId
  profile : ProfileId
  carrier : Set RecordId
  probes : Set RecordId
  classes : Set (Set RecordId)
  strictIdentityEstablished : Bool
  pointSeparationCertificate : Option CertificateId

structure PointSeparationCertificate where
  id : CertificateId
  equivalence : RecordId
  profile : ProfileId
  allClassesSingleton : Prop
  validator : String
  receipt : ReceiptId

/-- Coordinate functions on the quotient carrier. -/
abbrev CoordinateFunction
    {Point Probe Value : Type}
    (evaluate : Probe → Point → Value)
    (k : Type) := ProbeQuotient evaluate → k

structure CoordinateAlgebraRecord where
  id : RecordId
  profile : ProfileId
  fieldName : String
  generatingProbes : Set RecordId
  probeEquivalence : RecordId
  quotientPointCount : Nat
  finiteDimensional : Bool
  commutative : Bool
  unital : Bool
  reduced : Bool
  artinian : Bool
  jacobson : Bool

structure SpectralTopologyRecord where
  id : RecordId
  coordinateAlgebra : RecordId
  quotientCarrier : Set RecordId
  topologyKind : String
  discrete : Bool
  clopenSingletons : Set RecordId
  operationalTopology : Option RecordId
  identifiedWithOperationalCarrierBy : Option CertificateId

structure DeterminingSampleCertificate where
  id : CertificateId
  coordinateAlgebra : RecordId
  requiredSubalgebra : RecordId
  fullCarrier : Set RecordId
  sample : Set RecordId
  restrictionInjective : Prop
  predicatesCovered : Set RecordId
  unsampledExtensionCertificates : Set CertificateId
  exhaustive : Prop
  validator : String
  receipt : ReceiptId

/-- A sample determines a function family when restriction is injective. -/
def DeterminingSample {Point : Type u} {Value : Type v}
    (Family : Set (Point → Value)) (sample : Set Point) : Prop :=
  ∀ ⦃f g : Point → Value⦄,
    f ∈ Family → g ∈ Family →
    (∀ x ∈ sample, f x = g x) → f = g

/-- Vanishing on a determining sample implies global vanishing in the family. -/
theorem zero_of_zero_on_determining_sample
    {Point : Type u} {Value : Type v} [Zero Value]
    {Family : Set (Point → Value)} {sample : Set Point}
    (hdet : DeterminingSample Family sample)
    {f : Point → Value}
    (hf : f ∈ Family)
    (hzeroFamily : (0 : Point → Value) ∈ Family)
    (hzero : ∀ x ∈ sample, f x = 0) : f = 0 := by
  apply hdet hf hzeroFamily
  intro x hx
  exact hzero x hx

end Cord
