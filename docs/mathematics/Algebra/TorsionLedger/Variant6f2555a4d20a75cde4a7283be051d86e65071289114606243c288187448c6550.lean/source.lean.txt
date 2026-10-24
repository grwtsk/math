-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.TorsionLedger.Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.TorsionLedger.Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/TorsionLedger.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.SmithCertificate
import Mathlib.Algebra.Module.CharacterModule

/-!
# Finite torsion ledgers and shell transport

Each finite shell has an enumerable torsion sector.  Uniform boundedness over
an infinite shell tower is deliberately separate evidence; finite at every
stage does not manufacture a global bound.

The cohomological phase is represented by the character module of the Smith
coordinates.  Transport authority is carried by commuting equations.
Addresses retained by these records are replay metadata only.
-/


namespace GRWTSK.Algebra.TorsionLedger.Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c

namespace Mathematics.Homology

universe u v w x

noncomputable section

/-- Complete torsion evidence for one chain degree at one finite shell. -/
structure TorsionLedger
    (chain : FiniteIntegralChain) (degree : Nat) where
  stage : Nat
  smith : DegreeSmithCertificate chain degree
  invariantFactorDigest : Digest
  generatorDigest : Digest
  relationDigest : Digest
  bocksteinRepresentativeDigest : Digest
  exhaustiveReceipt : ObjectAddress
  ledgerAddress : ObjectAddress

namespace TorsionLedger

variable
    {chain : FiniteIntegralChain} {degree : Nat}
    (ledger : TorsionLedger chain degree)

/-- The exact finite coordinate type represented by this ledger. -/
abbrev Coordinate :=
  SmithTorsionCoordinates ledger.smith.torsionOrders

noncomputable instance coordinateFintype :
    Fintype ledger.Coordinate :=
  ledger.smith.torsionFintype

end TorsionLedger

/--
An executable finite phase carrier identified with the UCT character module
of one certified Smith torsion ledger.

The `Fintype` witness makes finiteness structural.  The equivalence prevents a
finite but unrelated carrier from being presented as the shell's Bockstein
torsion.
-/
structure UCTBocksteinTorsionRepresentation
    {chain : FiniteIntegralChain}
    {degree : Nat}
    (ledger : TorsionLedger chain degree)
    (Torsion : Type u)
    [AddCommGroup Torsion] where
  enumeration : Fintype Torsion
  coordinates :
    Torsion ≃+ CharacterModule ledger.Coordinate
  representationDigest : Digest
  representationReceipt : ObjectAddress

namespace UCTBocksteinTorsionRepresentation

variable
    {chain : FiniteIntegralChain}
    {degree : Nat}
    {ledger : TorsionLedger chain degree}
    {Torsion : Type u}
    [AddCommGroup Torsion]
    (representation :
      UCTBocksteinTorsionRepresentation ledger Torsion)

include representation

/-- The represented phase-torsion carrier is genuinely finite. -/
theorem finite : Finite Torsion := by
  letI := representation.enumeration
  infer_instance

/-- Coordinate encoding is injective because it is an equivalence. -/
theorem coordinates_injective :
    Function.Injective representation.coordinates :=
  representation.coordinates.injective

end UCTBocksteinTorsionRepresentation

/--
Certified transport of finite Bockstein torsion between two shell stages.

The three naturality laws are the authoritative content:

* phase transport commutes with the Bockstein maps;
* torsion transport commutes with the Smith/UCT coordinate models;
* torsion transport commutes with the declared finite gluing realization.

The receipt addresses only replay how those equations were checked.
-/
structure TorsionTransport
    {sourceChain targetChain : FiniteIntegralChain}
    {sourceDegree targetDegree : Nat}
    (source : TorsionLedger sourceChain sourceDegree)
    (target : TorsionLedger targetChain targetDegree)
    {SourceTorsion : Type u}
    {TargetTorsion : Type v}
    [AddCommGroup SourceTorsion]
    [AddCommGroup TargetTorsion]
    (sourceRepresentation :
      UCTBocksteinTorsionRepresentation source SourceTorsion)
    (targetRepresentation :
      UCTBocksteinTorsionRepresentation target TargetTorsion)
    {SourcePhase : Type w}
    {TargetPhase : Type x}
    [AddCommGroup SourcePhase]
    [AddCommGroup TargetPhase]
    (sourceBockstein : SourcePhase →+ SourceTorsion)
    (targetBockstein : TargetPhase →+ TargetTorsion)
    {SourceGluing TargetGluing : Type*}
    (sourceGluing : SourceTorsion → SourceGluing)
    (targetGluing : TargetTorsion → TargetGluing) where
  phaseMap : SourcePhase →+ TargetPhase
  torsionMap : SourceTorsion →+ TargetTorsion
  coordinateMap :
    CharacterModule source.Coordinate →+
      CharacterModule target.Coordinate
  gluingMap : SourceGluing → TargetGluing
  sourceStage_lt_targetStage : source.stage < target.stage
  bocksteinNaturality :
    ∀ phase,
      targetBockstein (phaseMap phase) =
        torsionMap (sourceBockstein phase)
  coordinateNaturality :
    ∀ torsion,
      targetRepresentation.coordinates (torsionMap torsion) =
        coordinateMap (sourceRepresentation.coordinates torsion)
  gluingNaturality :
    ∀ torsion,
      targetGluing (torsionMap torsion) =
        gluingMap (sourceGluing torsion)
  invariantFactorCompatibility : Digest
  bocksteinNaturalityReceipt : ObjectAddress
  coordinateNaturalityReceipt : ObjectAddress
  gluingNaturalityReceipt : ObjectAddress
  transportReceipt : ObjectAddress

namespace TorsionTransport

variable
    {sourceChain targetChain : FiniteIntegralChain}
    {sourceDegree targetDegree : Nat}
    {source : TorsionLedger sourceChain sourceDegree}
    {target : TorsionLedger targetChain targetDegree}
    {SourceTorsion : Type u}
    {TargetTorsion : Type v}
    [AddCommGroup SourceTorsion]
    [AddCommGroup TargetTorsion]
    {sourceRepresentation :
      UCTBocksteinTorsionRepresentation source SourceTorsion}
    {targetRepresentation :
      UCTBocksteinTorsionRepresentation target TargetTorsion}
    {SourcePhase : Type w}
    {TargetPhase : Type x}
    [AddCommGroup SourcePhase]
    [AddCommGroup TargetPhase]
    {sourceBockstein : SourcePhase →+ SourceTorsion}
    {targetBockstein : TargetPhase →+ TargetTorsion}
    {SourceGluing TargetGluing : Type*}
    {sourceGluing : SourceTorsion → SourceGluing}
    {targetGluing : TargetTorsion → TargetGluing}
    (transport :
      TorsionTransport
        source target
        sourceRepresentation targetRepresentation
        sourceBockstein targetBockstein
        sourceGluing targetGluing)

/-- Every transported Bockstein class is the image of the source class. -/
theorem transports_bockstein (phase : SourcePhase) :
    targetBockstein (transport.phaseMap phase) =
      transport.torsionMap (sourceBockstein phase) :=
  transport.bocksteinNaturality phase

/-- Every transported torsion value agrees in the certified UCT coordinates. -/
theorem transports_coordinates (torsion : SourceTorsion) :
    targetRepresentation.coordinates
        (transport.torsionMap torsion) =
      transport.coordinateMap
        (sourceRepresentation.coordinates torsion) :=
  transport.coordinateNaturality torsion

/-- Every transported torsion value induces the declared transformed gluing. -/
theorem transports_gluing (torsion : SourceTorsion) :
    targetGluing (transport.torsionMap torsion) =
      transport.gluingMap (sourceGluing torsion) :=
  transport.gluingNaturality torsion

end TorsionTransport

/-- Extra evidence required before claiming one bound for an entire tower. -/
structure UniformTorsionBound
    {Chain : Nat → FiniteIntegralChain}
    {degree : Nat}
    (ledger : (stage : Nat) → TorsionLedger (Chain stage) degree) where
  bound : Nat
  cardinality_le :
    ∀ stage, Fintype.card (ledger stage).Coordinate ≤ bound
  certificate : ObjectAddress

end

end Mathematics.Homology
