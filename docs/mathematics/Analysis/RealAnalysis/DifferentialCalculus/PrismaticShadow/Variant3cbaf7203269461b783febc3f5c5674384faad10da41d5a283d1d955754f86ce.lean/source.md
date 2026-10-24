# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PrismaticShadow.Variant3cbaf7203269461b783febc3f5c5674384faad10da41d5a283d1d955754f86ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `577a291eb619306bd248c52aafc7557b1d888062` · SHA-256 `df1ae6c4dc5734619e3d8c2b37060ee2c83e8bc4af0bd8bf6c05f3b4041bd21b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ShadowBoundaryKind.Variant1f751ee3a05050c2e01fe2276ef3bcc95d0fd3c5eec404986cc42060339a371d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f751ee3a05050c2e01fe2276ef3bcc95d0fd3c5eec404986cc42060339a371d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ShadowBoundaryKind.Variant1f751ee3a05050c2e01fe2276ef3bcc95d0fd3c5eec404986cc42060339a371d","mathematical_subject":"Analysis.Calculus","original_sha256":"1f751ee3a05050c2e01fe2276ef3bcc95d0fd3c5eec404986cc42060339a371d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Presentation/PrismaticShadow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import AnalyticNumber.TheoremResolution
import Presentation.BackwardRecovery
import Presentation.ChainMap
import Presentation.ProjectedFlow
import Presentation.RankPreservation
import Presentation.Spine
import Presentation.SpectralPlateau
import Presentation.TorsionEquivariance

/-!
# Certified finite prismatic-spined shadow fixed points

This file formalizes the finite certificate theorem used by the Surface
Foundry approval spine.

The theorem here does not construct prismatic cohomology and does not prove a
prismatic comparison theorem.  A prismatic spine is represented only as a finite
descriptor for comparison obligations.  Mathematical authority enters only
through explicit certificate fields and boundary-calculus discipline.

The main theorem is deliberately structural: if a generated finite shadow
carries the required boundary, projected-flow, minimum-energy, cooling,
plateau, chain-map, rank, backward-recovery, torsion, residue, authority-audit,
disclaimer, and soundness certificates, then the finite fixed-point claim is
available.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ShadowBoundaryKind.Variant1f751ee3a05050c2e01fe2276ef3bcc95d0fd3c5eec404986cc42060339a371d

namespace Presentation
namespace PrismaticShadow

/-- Finite boundary obligations for the certified shadow theorem. -/
inductive ShadowBoundaryKind where
  | semanticBoundary
  | prismaticSpineBoundary
  | energyGap
  | entropyPlateau
  | freeEnergyPlateau
  | scheduleAdjustedDissipation
  | torsionStability
  | bidirectionalRecovery
  | chainMap
  | rankPreservation
  | localResidue
  | authorityBoundary
  | finiteShadowDisclaimer
  | custom : String → ShadowBoundaryKind
deriving Repr, DecidableEq

/-- A finite generated presentation state. -/
structure FinitePresentationState where
  label : String
  stateHash : Nat

/--
Finite descriptor for the prismatic spine role.

This is metadata plus a proof of the descriptor proposition.  It is not a
construction of prismatic cohomology.
-/
structure PrismaticSpineDescriptor where
  label : String
  descriptorHash : Nat
  spineIsPrismaticComparison : Prop
  spineIsPrismaticComparisonProof : spineIsPrismaticComparison

/-- A feasible stable class in the finite state space. -/
structure FeasibleStateClass where
  label : String
  classHash : Nat

/-- Certificate that heat flow is projected to feasibility or otherwise cannot escape it. -/
structure ProjectedFlowCertificate where
  finiteCertificate : ProjectedFlow.ProjectedFlowCertificate

/-- Certificate for the finite minimum-energy and gap obligations. -/
structure MinimumEnergyCertificate where
  minimumAttained : Prop
  minimumAttainedProof : minimumAttained
  minimizersOneClass : Prop
  minimizersOneClassProof : minimizersOneClass
  energyGap : Prop
  energyGapProof : energyGap

/--
Certificate for the cooling correction.

For time-varying cooling, the plain fixed-temperature free-energy monotonicity
claim is not enough; one of these three certificate modes must be supplied.
-/
structure CoolingScheduleCertificate where
  piecewiseConstantCooling : Prop
  quasiStaticCooling : Prop
  scheduleAdjustedDissipation : Prop
  dissipationProof :
    piecewiseConstantCooling ∨ quasiStaticCooling ∨ scheduleAdjustedDissipation

/-- Certificate for entropy and free-energy plateaus. -/
structure PlateauCertificate where
  entropyPlateau : Prop
  entropyPlateauProof : entropyPlateau
  freeEnergyPlateau : Prop
  freeEnergyPlateauProof : freeEnergyPlateau

/-- Certificate that forward and backward maps are chain maps on the stable subcomplex. -/
structure ChainMapCertificate where
  finiteCertificate : ChainMap.FiniteChainMapCertificate

/-- Certificate for torsion-free rank-preserving real homological equivalence. -/
structure RankPreservationCertificate where
  torsionFreeStableSubcomplex : Prop
  torsionFreeStableSubcomplexProof : torsionFreeStableSubcomplex
  rankPreservedAfterTensorReal : Prop
  rankPreservedAfterTensorRealProof : rankPreservedAfterTensorReal
  realHomologicalEquivalence : Prop
  realHomologicalEquivalenceProof : realHomologicalEquivalence

/-- Certificate for regularized backward recovery. -/
structure BackwardRecoveryCertificate where
  finiteCertificate : BackwardRecovery.RegularizedBackwardRecoveryCertificate

/-- Certificate for torsion compatibility of relaxation and reconstruction by family. -/
structure TorsionCompatibilityCertificate where
  familyCertificates : TorsionEquivariance.TorsionEquivarianceCertificate

/-- Certificate that all local CSS residue is eliminated or witnessed. -/
structure ResidueCertificate where
  allLocalResidueWitnessed : Prop
  allLocalResidueWitnessedProof : allLocalResidueWitnessed

/-- Audit that prismatic obligations are certificate-routed or marked unavailable. -/
structure PrismaticAuthorityAudit where
  obligationsDischargedOrUnavailable : Prop
  obligationsProof : obligationsDischargedOrUnavailable
  finiteSyntaxDoesNotOwnAuthority : Prop
  finiteSyntaxDoesNotOwnAuthorityProof : finiteSyntaxDoesNotOwnAuthority
  finiteShadowsDoNotConstructPrismaticCohomology : Prop
  finiteShadowsDoNotConstructPrismaticCohomologyProof :
    finiteShadowsDoNotConstructPrismaticCohomology

/-- Required finite-shadow disclaimer. -/
structure FiniteShadowDisclaimer where
  disclaimer : String
  noPrismaticConstruction : Prop
  noPrismaticConstructionProof : noPrismaticConstruction
  noComparisonTheorem : Prop
  noComparisonTheoremProof : noComparisonTheorem
  noGeneratedDomAuthority : Prop
  noGeneratedDomAuthorityProof : noGeneratedDomAuthority
  noCssAuthority : Prop
  noCssAuthorityProof : noCssAuthority

/-- Complete finite certificate for the prismatic-spined shadow fixed point. -/
structure CertifiedFinitePrismaticSpinedShadow where
  state : FinitePresentationState
  stableClass : FeasibleStateClass
  descriptor : PrismaticSpineDescriptor

  semanticBoundaryZero : Prop
  semanticBoundaryZeroProof : semanticBoundaryZero

  prismaticSpineBoundaryZero : Prop
  prismaticSpineBoundaryZeroProof : prismaticSpineBoundaryZero

  projectedFlow : ProjectedFlowCertificate
  minimumEnergy : MinimumEnergyCertificate
  cooling : CoolingScheduleCertificate
  plateau : PlateauCertificate
  chainMap : ChainMapCertificate
  rankPreservation : RankPreservationCertificate
  backwardRecovery : BackwardRecoveryCertificate
  torsion : TorsionCompatibilityCertificate
  residue : ResidueCertificate
  authorityAudit : PrismaticAuthorityAudit
  disclaimer : FiniteShadowDisclaimer

  fixedPointSound : Prop
  fixedPointSoundProof : fixedPointSound

/-- Finite presentation states do not construct prismatic cohomology. -/
def FinitePresentationStateConstructsPrismaticCohomology
    (_x : FinitePresentationState) : Prop :=
  False

/-- Finite presentation states do not prove prismatic comparison theorems. -/
def FinitePresentationStateProvesPrismaticComparisonTheorem
    (_x : FinitePresentationState) : Prop :=
  False

/-- Generated DOM states do not own prismatic authority. -/
def GeneratedDomOwnsPrismaticAuthority
    (_x : FinitePresentationState) : Prop :=
  False

/-- CSS reconstruction does not own prismatic authority. -/
def CssReconstructionOwnsPrismaticAuthority
    (_x : FinitePresentationState) : Prop :=
  False

/-- A finite descriptor does not construct prismatic cohomology. -/
def PrismaticSpineDescriptorConstructsPrismaticCohomology
    (_D : PrismaticSpineDescriptor) : Prop :=
  False

theorem finite_shadow_not_prismatic_cohomology
    (x : FinitePresentationState) :
    ¬ FinitePresentationStateConstructsPrismaticCohomology x := by
  intro h
  exact h

theorem finite_shadow_not_prismatic_comparison_theorem
    (x : FinitePresentationState) :
    ¬ FinitePresentationStateProvesPrismaticComparisonTheorem x := by
  intro h
  exact h

theorem generated_dom_not_prismatic_authority
    (x : FinitePresentationState) :
    ¬ GeneratedDomOwnsPrismaticAuthority x := by
  intro h
  exact h

theorem css_reconstruction_not_prismatic_authority
    (x : FinitePresentationState) :
    ¬ CssReconstructionOwnsPrismaticAuthority x := by
  intro h
  exact h

theorem presentation_descriptor_not_prismatic_authority
    (D : PrismaticSpineDescriptor) :
    ¬ PrismaticSpineDescriptorConstructsPrismaticCohomology D := by
  intro h
  exact h

/-- Summary of all finite-shadow authority firewalls. -/
theorem finite_shadow_authority_boundary_summary
    (C : CertifiedFinitePrismaticSpinedShadow) :
    ¬ FinitePresentationStateConstructsPrismaticCohomology C.state ∧
      ¬ FinitePresentationStateProvesPrismaticComparisonTheorem C.state ∧
      ¬ GeneratedDomOwnsPrismaticAuthority C.state ∧
      ¬ CssReconstructionOwnsPrismaticAuthority C.state ∧
      ¬ PrismaticSpineDescriptorConstructsPrismaticCohomology C.descriptor := by
  exact
    ⟨finite_shadow_not_prismatic_cohomology C.state,
      finite_shadow_not_prismatic_comparison_theorem C.state,
      generated_dom_not_prismatic_authority C.state,
      css_reconstruction_not_prismatic_authority C.state,
      presentation_descriptor_not_prismatic_authority C.descriptor⟩

/--
Adapter proposition: an existing `SpinePresentation` is a raw prismatic-spine
descriptor when its descriptor spine is `prismaticComparison`.
-/
def RawPrismaticSpineDescriptor
    {α : Type u}
    (P : SpinePresentation α) : Prop :=
  P.descriptor.spine = MathematicalSpine.prismaticComparison

/--
Raw prismatic spine descriptors are not theorem authority.

This reuses the core `Presentation.Spine` firewall.
-/
theorem raw_prismatic_spine_descriptor_not_authority
    {α : Type u}
    (P : SpinePresentation α)
    (_h : RawPrismaticSpineDescriptor P) :
    ¬ SpinePresentationOwnsClaim P :=
  spine_presentation_not_theorem_authority P

/--
Compatibility statement: if a prismatic comparison claim is used, its authority
must be represented by an explicit certificate/unavailable-authority audit.

The theorem is structural: it returns the audit fields and does not produce a
comparison theorem.
-/
theorem prismatic_shadow_authority_audit_sound
    (C : CertifiedFinitePrismaticSpinedShadow) :
    C.authorityAudit.obligationsDischargedOrUnavailable ∧
      C.authorityAudit.finiteSyntaxDoesNotOwnAuthority ∧
      C.authorityAudit.finiteShadowsDoNotConstructPrismaticCohomology :=
  ⟨C.authorityAudit.obligationsProof,
    C.authorityAudit.finiteSyntaxDoesNotOwnAuthorityProof,
    C.authorityAudit.finiteShadowsDoNotConstructPrismaticCohomologyProof⟩

/--
Main finite certificate theorem.

If the finite generated object carries every certificate field, then the
certified finite prismatic-spined semantic fixed-point claim follows.  This is
not a construction of prismatic cohomology and not a prismatic comparison
theorem.
-/
theorem certified_finite_prismatic_spined_shadow_fixed_point
    (C : CertifiedFinitePrismaticSpinedShadow) :
    C.semanticBoundaryZero ∧
      C.prismaticSpineBoundaryZero ∧
      C.projectedFlow.finiteCertificate.sound ∧
      C.minimumEnergy.minimumAttained ∧
      C.minimumEnergy.minimizersOneClass ∧
      C.minimumEnergy.energyGap ∧
      (C.cooling.piecewiseConstantCooling ∨
        C.cooling.quasiStaticCooling ∨
        C.cooling.scheduleAdjustedDissipation) ∧
      C.plateau.entropyPlateau ∧
      C.plateau.freeEnergyPlateau ∧
      C.chainMap.finiteCertificate.sound ∧
      C.rankPreservation.torsionFreeStableSubcomplex ∧
      C.rankPreservation.rankPreservedAfterTensorReal ∧
      C.rankPreservation.realHomologicalEquivalence ∧
      C.backwardRecovery.finiteCertificate.sound ∧
      C.torsion.familyCertificates.sound ∧
      C.residue.allLocalResidueWitnessed ∧
      C.authorityAudit.obligationsDischargedOrUnavailable ∧
      C.authorityAudit.finiteSyntaxDoesNotOwnAuthority ∧
      C.authorityAudit.finiteShadowsDoNotConstructPrismaticCohomology ∧
      C.disclaimer.noPrismaticConstruction ∧
      C.disclaimer.noComparisonTheorem ∧
      C.disclaimer.noGeneratedDomAuthority ∧
      C.disclaimer.noCssAuthority ∧
      C.fixedPointSound := by
  exact
    ⟨C.semanticBoundaryZeroProof,
      C.prismaticSpineBoundaryZeroProof,
      ProjectedFlow.projected_flow_certificate_sound
        C.projectedFlow.finiteCertificate,
      C.minimumEnergy.minimumAttainedProof,
      C.minimumEnergy.minimizersOneClassProof,
      C.minimumEnergy.energyGapProof,
      C.cooling.dissipationProof,
      C.plateau.entropyPlateauProof,
      C.plateau.freeEnergyPlateauProof,
      ChainMap.chain_map_certificate_sound C.chainMap.finiteCertificate,
      C.rankPreservation.torsionFreeStableSubcomplexProof,
      C.rankPreservation.rankPreservedAfterTensorRealProof,
      C.rankPreservation.realHomologicalEquivalenceProof,
      BackwardRecovery.backward_recovery_certificate_sound
        C.backwardRecovery.finiteCertificate,
      TorsionEquivariance.torsion_equivariance_certificate_sound
        C.torsion.familyCertificates,
      C.residue.allLocalResidueWitnessedProof,
      C.authorityAudit.obligationsProof,
      C.authorityAudit.finiteSyntaxDoesNotOwnAuthorityProof,
      C.authorityAudit.finiteShadowsDoNotConstructPrismaticCohomologyProof,
      C.disclaimer.noPrismaticConstructionProof,
      C.disclaimer.noComparisonTheoremProof,
      C.disclaimer.noGeneratedDomAuthorityProof,
      C.disclaimer.noCssAuthorityProof,
      C.fixedPointSoundProof⟩

end PrismaticShadow
end Presentation
```
