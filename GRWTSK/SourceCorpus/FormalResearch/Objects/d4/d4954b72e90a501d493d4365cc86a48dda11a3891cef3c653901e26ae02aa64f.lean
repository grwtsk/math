import Mathematics.Authority.CertificateValidity
import Mathematics.Concept.BanachCompletion
import Mathematics.Concept.PropertyTransport
import Mathematics.Hilbert.SemanticRealization
import Mathematics.Operational.Contraction
import Mathematics.Operational.FixedPointSeparation
import Mathematics.Operational.Lyapunov

/-!
# Certified bounded stable architecture

This is the smallest integrated object justified by the proved interfaces:
semantic quotient completion, bounded kernel realization, one versioned
operator, a nonempty finite family of exact fixed points, local Lyapunov and
attraction proofs, contraction neighborhoods, property-specific path
transport, and dependency-current certificate authority.

Geometry, kinetics, approximation limits, and surgery are intentionally absent
from this core.  They may extend it without becoming hidden premises.
-/

noncomputable section

namespace Mathematics.System

open Mathematics.Authority
open Mathematics.Projection

/-- The proof-connected bounded architecture, with no optional geometry. -/
structure CertifiedStableArchitecture where
  snapshot : MasterSnapshot
  activeSnapshot : VerifiedActiveMasterSnapshot snapshot

  semanticRegistry : Concept.Ledger
  semanticRegistry_snapshot :
    semanticRegistry.snapshotId = snapshot.inventoryId

  banachModel :
    Concept.QuotientNormData Concept.SemanticAtom
  banachProfile_bound :
    banachModel.normProfileDigest =
      snapshot.componentDigest .banach

  kernel : Kernel.PositiveKernel Concept.SemanticAtom
  realization :
    Hilbert.KernelCompatibility banachModel kernel

  operator :
    Operational.VersionedOperator
      (Concept.BanachCarrier banachModel)
  operator_snapshot :
    operator.snapshot = snapshot.projection

  fixedFamily :
    Operational.CertifiedFixedFamily operator
  fixedFamily_nonempty : Nonempty fixedFamily.Point
  separation :
    Operational.FixedFamilySeparationCertificate fixedFamily

  lyapunov :
    ∀ index : fixedFamily.Point,
      Operational.LocalQuadraticLyapunovCertificate
        (fixedFamily.point index)
  attraction :
    ∀ index : fixedFamily.Point,
      Operational.IsLocallyAttractive
        operator (fixedFamily.point index)

  contraction :
    ∀ _index : fixedFamily.Point,
      Operational.ContractionCertificate operator
  fixedPoint_mem_contraction_region :
    ∀ index : fixedFamily.Point,
      ((fixedFamily.point index).point :
        Concept.BanachCarrier banachModel) ∈
          (contraction index).region

  transport :
    Concept.PathAction fixedFamily.Point
      (fun _ ↦ operator.domain)
  analogies :
    List (Concept.CertifiedAnalogyTransport transport)
  analogy_maps_named_points :
    ∀ analogy ∈ analogies,
      transport.map analogy.path
          (fixedFamily.point analogy.source).point =
        (fixedFamily.point analogy.target).point

  certificates : List CertificateMetadata
  certificate_mathematically_valid :
    ∀ certificate ∈ certificates,
      MathematicallyValidAt certificate snapshot
  certificate_authorized :
    ∀ certificate ∈ certificates,
      AcceptedCertificateAuthorization certificate snapshot

namespace CertifiedStableArchitecture

/-- Every listed exact point is locally asymptotically stable. -/
theorem locallyAsymptoticallyStable
    (architecture : CertifiedStableArchitecture)
    (index : architecture.fixedFamily.Point) :
    Operational.IsLocallyAsymptoticallyStable
      architecture.operator
      (architecture.fixedFamily.point index) :=
  ⟨(architecture.lyapunov index).isLyapunovStable,
    architecture.attraction index⟩

/-- Distinct family indices are separated in the Banach-domain metric. -/
theorem pairwiseSeparated
    (architecture : CertifiedStableArchitecture)
    {left right : architecture.fixedFamily.Point}
    (distinct : left ≠ right) :
    0 <
      dist
        (architecture.fixedFamily.point left).point
        (architecture.fixedFamily.point right).point := by
  exact architecture.separation.dist_positive distinct

/-- The realization is globally bounded by its explicit upper constant. -/
theorem realizationBound
    (architecture : CertifiedStableArchitecture)
    (state : Concept.BanachCarrier architecture.banachModel) :
    ‖Hilbert.banachToHilbert architecture.realization state‖ ≤
      architecture.realization.upperConstant * ‖state‖ :=
  Hilbert.norm_banachToHilbert_le architecture.realization state

/-- Declared semantic equations vanish in the realized kernel quotient. -/
theorem semanticRelationRealizesAsZero
    (architecture : CertifiedStableArchitecture)
    {combination : Concept.SemanticCombination Concept.SemanticAtom}
    (relationMember :
      combination ∈ architecture.banachModel.relations) :
    Hilbert.rawToKernelSpace architecture.kernel combination = 0 :=
  architecture.realization.relation_maps_to_zero relationMember

/--
Use of an analogy requires both its boundary admission and the selected
property's admission.  No unlisted property can be supplied to this theorem.
-/
theorem admittedAnalogyPropertySound
    (architecture : CertifiedStableArchitecture)
    (analogy : Concept.CertifiedAnalogyTransport architecture.transport)
    (_listed : analogy ∈ architecture.analogies)
    (analogyAdmitted : analogy.admission = .admitted)
    (property :
      Concept.CertifiedPreservedProperty
        architecture.transport analogy.path)
    (_propertyListed : property ∈ analogy.preserved)
    (propertyAdmitted : property.admission = .admitted)
    (value : architecture.operator.domain)
    (holds : property.property.Holds analogy.source value) :
    property.property.Holds analogy.target
      (architecture.transport.map analogy.path value) := by
  have _ := analogyAdmitted
  exact property.admittedTransports propertyAdmitted value holds

/-- Every listed certificate is valid, authorized, and attached to an active snapshot. -/
theorem allCertificatesUsable
    (architecture : CertifiedStableArchitecture)
    (certificate : CertificateMetadata)
    (listed : certificate ∈ architecture.certificates) :
    UsableAt certificate architecture.snapshot := by
  refine
    ⟨architecture.certificate_mathematically_valid certificate listed,
      ?_, ?_⟩
  · exact
      ⟨architecture.certificate_authorized certificate listed⟩
  · refine ⟨⟨architecture.activeSnapshot⟩, ?_⟩
    exact
      (architecture.certificate_authorized
        certificate listed).snapshot_exact

/--
Each contraction neighborhood supplies the certified perturbation displacement
bound for a candidate exact fixed point in that same region.
-/
theorem perturbedFixedPointDistanceBound
    (architecture : CertifiedStableArchitecture)
    (index : architecture.fixedFamily.Point)
    (candidate :
      Operational.VersionedOperator
        (Concept.BanachCarrier architecture.banachModel))
    (perturbation :
      Operational.PointwiseOperatorPerturbationOn
        architecture.operator candidate
        (architecture.contraction index).region)
    (candidatePoint : Operational.CertifiedFixedPoint candidate)
    (candidate_mem :
      (candidatePoint.point :
        Concept.BanachCarrier architecture.banachModel) ∈
          (architecture.contraction index).region) :
    dist
        ((architecture.fixedFamily.point index).point :
          Concept.BanachCarrier architecture.banachModel)
        (candidatePoint.point :
          Concept.BanachCarrier architecture.banachModel) ≤
      perturbation.magnitude.value /
        (1 -
          ((architecture.contraction index).factor : ℝ)) :=
  Operational.fixedPoint_displacement_le
    (architecture.contraction index)
    perturbation
    (architecture.fixedFamily.point index)
    candidatePoint
    (architecture.fixedPoint_mem_contraction_region index)
    candidate_mem

/-- Compact end-to-end statement exported by the bounded core. -/
theorem sound
    (architecture : CertifiedStableArchitecture) :
    (∀ index : architecture.fixedFamily.Point,
      Operational.IsLocallyAsymptoticallyStable
        architecture.operator
        (architecture.fixedFamily.point index)) ∧
    (∀ {left right : architecture.fixedFamily.Point},
      left ≠ right →
        0 <
          dist
            (architecture.fixedFamily.point left).point
            (architecture.fixedFamily.point right).point) ∧
    (∀ certificate ∈ architecture.certificates,
      UsableAt certificate architecture.snapshot) :=
  ⟨architecture.locallyAsymptoticallyStable,
    fun distinct ↦ architecture.pairwiseSeparated distinct,
    architecture.allCertificatesUsable⟩

end CertifiedStableArchitecture

end Mathematics.System
