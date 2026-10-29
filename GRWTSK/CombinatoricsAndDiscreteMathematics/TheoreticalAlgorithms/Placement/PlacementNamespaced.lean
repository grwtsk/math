-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PhasePlacement.Variant9082b258ba9d91d143b9fbde35c8a6239ae553ae18c73f14773b0697ba4dab1b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9082b258ba9d91d143b9fbde35c8a6239ae553ae18c73f14773b0697ba4dab1b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PhasePlacement.Variant9082b258ba9d91d143b9fbde35c8a6239ae553ae18c73f14773b0697ba4dab1b","mathematical_subject":"Computation.DataStructures","original_sha256":"9082b258ba9d91d143b9fbde35c8a6239ae553ae18c73f14773b0697ba4dab1b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit0/Bit1/Bit1/Bit1/Bit1/M536f75726365547265652f506c6163656d656e742e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.Bit1.M536f75726365547265652f5765696768742e6c65616e


/- source-tree-label: STL1|L|addr=0001111|role=proof_code_atom|slug=sourcetree-placement|owner=canonical_owner|core=SourceTree/Placement.lean|leaf=M536f75726365547265652f506c6163656d656e742e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PhasePlacement.Variant9082b258ba9d91d143b9fbde35c8a6239ae553ae18c73f14773b0697ba4dab1b

set_option autoImplicit false

namespace Think.SourceTree

def phasePole : Think.PhaseId -> Pole
  | FWR.Pipeline.CenterWeighted.Phase.requestBoundary => Pole.request
  | FWR.Pipeline.CenterWeighted.Phase.targetSelection => Pole.request
  | FWR.Pipeline.CenterWeighted.Phase.claimAtomization => Pole.request
  | FWR.Pipeline.CenterWeighted.Phase.authorityClassification => Pole.request
  | FWR.Pipeline.CenterWeighted.Phase.finiteCarrierDeclaration => Pole.carrier
  | FWR.Pipeline.CenterWeighted.Phase.stageParameterization => Pole.carrier
  | FWR.Pipeline.CenterWeighted.Phase.inputSelection => Pole.carrier
  | FWR.Pipeline.CenterWeighted.Phase.lFunctionQWaveEncoding => Pole.carrier
  | FWR.Pipeline.CenterWeighted.Phase.emlLowering => Pole.lowering
  | FWR.Pipeline.CenterWeighted.Phase.nandLowering => Pole.lowering
  | FWR.Pipeline.CenterWeighted.Phase.bitMatrixLowering => Pole.lowering
  | FWR.Pipeline.CenterWeighted.Phase.bitstreamAdmission => Pole.lowering
  | FWR.Pipeline.CenterWeighted.Phase.decoderPhase => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.verbBasisValidation => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.traceOrderValidation => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.independenceRelationDeclaration => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.validatedFlipChecking => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.traceQuotienting => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.normalFormConstruction => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.normalFormTerminationCheck => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.normalFormConfluenceCheck => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.canonicalEncoder => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.sectionConstruction => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.rightRoundTripCheck => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.leftRoundTripCheck => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.finiteBijectionWitness => Pole.trace
  | FWR.Pipeline.CenterWeighted.Phase.compactShellProjection => Pole.compact
  | FWR.Pipeline.CenterWeighted.Phase.orderErasureWarning => Pole.compact
  | FWR.Pipeline.CenterWeighted.Phase.transitionMapDeclaration => Pole.compact
  | FWR.Pipeline.CenterWeighted.Phase.forwardSquareCheck => Pole.compact
  | FWR.Pipeline.CenterWeighted.Phase.sectionSquareCheck => Pole.compact
  | FWR.Pipeline.CenterWeighted.Phase.inverseLimitConstruction => Pole.compact
  | FWR.Pipeline.CenterWeighted.Phase.limitMapConstruction => Pole.compact
  | FWR.Pipeline.CenterWeighted.Phase.limitBijectionCheck => Pole.compact
  | FWR.Pipeline.CenterWeighted.Phase.classifierModuleSelection => Pole.classifier
  | FWR.Pipeline.CenterWeighted.Phase.admissibilityScoring => Pole.classifier
  | FWR.Pipeline.CenterWeighted.Phase.distributionScoring => Pole.classifier
  | FWR.Pipeline.CenterWeighted.Phase.weightScoring => Pole.classifier
  | FWR.Pipeline.CenterWeighted.Phase.denseClusterScoring => Pole.classifier
  | FWR.Pipeline.CenterWeighted.Phase.parityBarrierScoring => Pole.classifier
  | FWR.Pipeline.CenterWeighted.Phase.classifierResidueScoring => Pole.classifier
  | FWR.Pipeline.CenterWeighted.Phase.schedulerCarrierDeclaration => Pole.scheduler
  | FWR.Pipeline.CenterWeighted.Phase.coverageComputation => Pole.scheduler
  | FWR.Pipeline.CenterWeighted.Phase.energyComputation => Pole.scheduler
  | FWR.Pipeline.CenterWeighted.Phase.moveScoring => Pole.scheduler
  | FWR.Pipeline.CenterWeighted.Phase.admissibleMoveSelection => Pole.scheduler
  | FWR.Pipeline.CenterWeighted.Phase.schedulerUpdate => Pole.scheduler
  | FWR.Pipeline.CenterWeighted.Phase.schedulerGuardCheck => Pole.scheduler
  | FWR.Pipeline.CenterWeighted.Phase.monomialStateEncoding => Pole.cluster
  | FWR.Pipeline.CenterWeighted.Phase.balanceMeasurement => Pole.cluster
  | FWR.Pipeline.CenterWeighted.Phase.torsionMeasurement => Pole.cluster
  | FWR.Pipeline.CenterWeighted.Phase.chebyshevEnvelopeComparison => Pole.cluster
  | FWR.Pipeline.CenterWeighted.Phase.clusterClassification => Pole.cluster
  | FWR.Pipeline.CenterWeighted.Phase.outputAssembly => Pole.boundary
  | FWR.Pipeline.CenterWeighted.Phase.residueExtraction => Pole.boundary
  | FWR.Pipeline.CenterWeighted.Phase.residueContainment => Pole.boundary
  | FWR.Pipeline.CenterWeighted.Phase.cleanProjection => Pole.boundary
  | FWR.Pipeline.CenterWeighted.Phase.reverseSectionReplay => Pole.boundary
  | FWR.Pipeline.CenterWeighted.Phase.forwardReplay => Pole.boundary
  | FWR.Pipeline.CenterWeighted.Phase.fixedPointComparison => Pole.boundary
  | FWR.Pipeline.CenterWeighted.Phase.boundaryReport => Pole.boundary

def phaseLocalIndex : Think.PhaseId -> Nat
  | FWR.Pipeline.CenterWeighted.Phase.requestBoundary => 0
  | FWR.Pipeline.CenterWeighted.Phase.targetSelection => 1
  | FWR.Pipeline.CenterWeighted.Phase.claimAtomization => 2
  | FWR.Pipeline.CenterWeighted.Phase.authorityClassification => 3
  | FWR.Pipeline.CenterWeighted.Phase.finiteCarrierDeclaration => 0
  | FWR.Pipeline.CenterWeighted.Phase.stageParameterization => 1
  | FWR.Pipeline.CenterWeighted.Phase.inputSelection => 2
  | FWR.Pipeline.CenterWeighted.Phase.lFunctionQWaveEncoding => 3
  | FWR.Pipeline.CenterWeighted.Phase.emlLowering => 0
  | FWR.Pipeline.CenterWeighted.Phase.nandLowering => 1
  | FWR.Pipeline.CenterWeighted.Phase.bitMatrixLowering => 2
  | FWR.Pipeline.CenterWeighted.Phase.bitstreamAdmission => 3
  | FWR.Pipeline.CenterWeighted.Phase.decoderPhase => 0
  | FWR.Pipeline.CenterWeighted.Phase.verbBasisValidation => 1
  | FWR.Pipeline.CenterWeighted.Phase.traceOrderValidation => 2
  | FWR.Pipeline.CenterWeighted.Phase.independenceRelationDeclaration => 3
  | FWR.Pipeline.CenterWeighted.Phase.validatedFlipChecking => 4
  | FWR.Pipeline.CenterWeighted.Phase.traceQuotienting => 5
  | FWR.Pipeline.CenterWeighted.Phase.normalFormConstruction => 6
  | FWR.Pipeline.CenterWeighted.Phase.normalFormTerminationCheck => 7
  | FWR.Pipeline.CenterWeighted.Phase.normalFormConfluenceCheck => 8
  | FWR.Pipeline.CenterWeighted.Phase.canonicalEncoder => 9
  | FWR.Pipeline.CenterWeighted.Phase.sectionConstruction => 10
  | FWR.Pipeline.CenterWeighted.Phase.rightRoundTripCheck => 11
  | FWR.Pipeline.CenterWeighted.Phase.leftRoundTripCheck => 12
  | FWR.Pipeline.CenterWeighted.Phase.finiteBijectionWitness => 13
  | FWR.Pipeline.CenterWeighted.Phase.compactShellProjection => 0
  | FWR.Pipeline.CenterWeighted.Phase.orderErasureWarning => 1
  | FWR.Pipeline.CenterWeighted.Phase.transitionMapDeclaration => 2
  | FWR.Pipeline.CenterWeighted.Phase.forwardSquareCheck => 3
  | FWR.Pipeline.CenterWeighted.Phase.sectionSquareCheck => 4
  | FWR.Pipeline.CenterWeighted.Phase.inverseLimitConstruction => 5
  | FWR.Pipeline.CenterWeighted.Phase.limitMapConstruction => 6
  | FWR.Pipeline.CenterWeighted.Phase.limitBijectionCheck => 7
  | FWR.Pipeline.CenterWeighted.Phase.classifierModuleSelection => 0
  | FWR.Pipeline.CenterWeighted.Phase.admissibilityScoring => 1
  | FWR.Pipeline.CenterWeighted.Phase.distributionScoring => 2
  | FWR.Pipeline.CenterWeighted.Phase.weightScoring => 3
  | FWR.Pipeline.CenterWeighted.Phase.denseClusterScoring => 4
  | FWR.Pipeline.CenterWeighted.Phase.parityBarrierScoring => 5
  | FWR.Pipeline.CenterWeighted.Phase.classifierResidueScoring => 6
  | FWR.Pipeline.CenterWeighted.Phase.schedulerCarrierDeclaration => 0
  | FWR.Pipeline.CenterWeighted.Phase.coverageComputation => 1
  | FWR.Pipeline.CenterWeighted.Phase.energyComputation => 2
  | FWR.Pipeline.CenterWeighted.Phase.moveScoring => 3
  | FWR.Pipeline.CenterWeighted.Phase.admissibleMoveSelection => 4
  | FWR.Pipeline.CenterWeighted.Phase.schedulerUpdate => 5
  | FWR.Pipeline.CenterWeighted.Phase.schedulerGuardCheck => 6
  | FWR.Pipeline.CenterWeighted.Phase.monomialStateEncoding => 0
  | FWR.Pipeline.CenterWeighted.Phase.balanceMeasurement => 1
  | FWR.Pipeline.CenterWeighted.Phase.torsionMeasurement => 2
  | FWR.Pipeline.CenterWeighted.Phase.chebyshevEnvelopeComparison => 3
  | FWR.Pipeline.CenterWeighted.Phase.clusterClassification => 4
  | FWR.Pipeline.CenterWeighted.Phase.outputAssembly => 0
  | FWR.Pipeline.CenterWeighted.Phase.residueExtraction => 1
  | FWR.Pipeline.CenterWeighted.Phase.residueContainment => 2
  | FWR.Pipeline.CenterWeighted.Phase.cleanProjection => 3
  | FWR.Pipeline.CenterWeighted.Phase.reverseSectionReplay => 4
  | FWR.Pipeline.CenterWeighted.Phase.forwardReplay => 5
  | FWR.Pipeline.CenterWeighted.Phase.fixedPointComparison => 6
  | FWR.Pipeline.CenterWeighted.Phase.boundaryReport => 7

structure PhasePlacement where
  phase : Think.PhaseId
  pole : Pole
  localIndex : Nat
  pole_eq : pole = phasePole phase
  localIndex_eq : localIndex = phaseLocalIndex phase
deriving DecidableEq

def place (p : Think.PhaseId) : PhasePlacement :=
  { phase := p
    pole := phasePole p
    localIndex := phaseLocalIndex p
    pole_eq := rfl
    localIndex_eq := rfl }

def allPhasePlacements : List PhasePlacement :=
  Think.centerSpine.map place

theorem every_phase_has_placement :
    ∀ p : Think.PhaseId, ∃ q : PhasePlacement, q.phase = p := by
  intro p
  exact ⟨place p, rfl⟩

theorem placement_unique :
    ∀ p : Think.PhaseId, ∀ q₁ q₂ : PhasePlacement,
      q₁.phase = p → q₂.phase = p → q₁ = q₂ := by
  intro p q₁ q₂ h₁ h₂
  cases q₁ with
  | mk ph₁ pole₁ local₁ hp₁ hi₁ =>
  cases q₂ with
  | mk ph₂ pole₂ local₂ hp₂ hi₂ =>
  change ph₁ = p at h₁
  change ph₂ = p at h₂
  subst ph₁
  subst ph₂
  subst pole₁
  subst pole₂
  subst local₁
  subst local₂
  rfl

theorem pole_assignment_complete :
    allPhasePlacements.length = 61 := by
  rfl

theorem no_duplicate_phase_placements :
    allPhasePlacements.Nodup := by
  native_decide

theorem center_spine_controls_all_poles :
    ∀ q : PhasePlacement, q.phase ∈ Think.centerSpine := by
  intro q
  exact Think.centerSpine_complete q.phase

end Think.SourceTree
