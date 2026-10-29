-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundaryReport.Variant3740ba72d1cdf9c0f3aa6f532994b6a81c2ab5c7ba7c6448bd6a091713f262b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3740ba72d1cdf9c0f3aa6f532994b6a81c2ab5c7ba7c6448bd6a091713f262b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BoundaryReport.Variant3740ba72d1cdf9c0f3aa6f532994b6a81c2ab5c7ba7c6448bd6a091713f262b7","mathematical_subject":"Computation.DataStructures","original_sha256":"3740ba72d1cdf9c0f3aa6f532994b6a81c2ab5c7ba7c6448bd6a091713f262b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit0/Bit0/Bit0/Bit0/Bit1/Bit0/Bit0/M506970656c696e652f426f756e646172795265706f72742e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit0.Bit0.Bit1.Bit0.Bit0.Bit0.Bit0.M506970656c696e652f4e6f6e636c61696d2e6c65616e
import Think.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.Bit0.Bit1.M506970656c696e652f526573696475652e6c65616e


/- source-tree-label: STL1|L|addr=10000100|role=proof_code_atom|slug=pipeline-boundaryreport|owner=canonical_owner|core=Pipeline/BoundaryReport.lean|leaf=M506970656c696e652f426f756e646172795265706f72742e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundaryReport.Variant3740ba72d1cdf9c0f3aa6f532994b6a81c2ab5c7ba7c6448bd6a091713f262b7

set_option autoImplicit false

namespace Think.Pipeline

structure BoundaryReport where
  residues : List Think.Residue
  nonclaims : List Nonclaim

structure Context where
  StableFixedPoint : Prop
  BoundaryReportReady : Prop

def finalClaim (ctx : Context) : Prop :=
  ctx.StableFixedPoint ∧ ctx.BoundaryReportReady

def finalWitness (ctx : Context) : Think.Checked (finalClaim ctx) :=
  FWR.Checked.residue Think.pipelineResidues

theorem finalWitness_hasResidue (ctx : Context) :
    (finalWitness ctx).hasResidue = true := by
  rfl

inductive SrcLibBoundaryKind where
  | analyticTarget
  | compactPole
  | spectralBridge
  | theoremPath
  | poleLane
  | braidSurface
deriving DecidableEq, Repr, BEq

inductive SrcLibTargetShape where
  | finiteWitness
  | criterionOnly
  | externalTheorem
  | openConjecture
  | operationalShim
deriving DecidableEq, Repr, BEq

inductive SrcLibProofAuthority where
  | localLeanProof
  | finiteWitnessOnly
  | externalReferenceOnly
  | residueOnly
  | refusedOverclaim
deriving DecidableEq, Repr, BEq

inductive SrcLibBridgeStrength where
  | syntactic
  | finiteCarrier
  | residuePreserving
  | limitClosed
deriving DecidableEq, Repr, BEq

inductive SrcLibHypothesisMatch where
  | exact
  | weakened
  | strengthened
  | missing
deriving DecidableEq, Repr, BEq

inductive SrcLibAuthorityTransportPolicy where
  | refuse
  | residue
  | finiteWitness
  | transport
deriving DecidableEq, Repr, BEq

structure SrcLibBoundaryCrossingRecord where
  boundary : SrcLibBoundaryKind
  targetShape : SrcLibTargetShape
  proofAuthority : SrcLibProofAuthority
  bridgeStrength : SrcLibBridgeStrength
  hypothesisMatch : SrcLibHypothesisMatch
  transportPolicy : SrcLibAuthorityTransportPolicy
deriving Repr

def srcLibProofAuthorityIsSufficient : SrcLibProofAuthority -> Bool
  | .localLeanProof => true
  | .finiteWitnessOnly => false
  | .externalReferenceOnly => false
  | .residueOnly => false
  | .refusedOverclaim => false

def srcLibTargetShapeIsPromotable : SrcLibTargetShape -> Bool
  | .externalTheorem => true
  | .finiteWitness => false
  | .criterionOnly => false
  | .openConjecture => false
  | .operationalShim => false

def srcLibTargetShapeMustRefusePromotion : SrcLibTargetShape -> Bool
  | .criterionOnly => true
  | .openConjecture => true
  | .operationalShim => true
  | .finiteWitness => false
  | .externalTheorem => false

def srcLibHypothesisMatchIsExact : SrcLibHypothesisMatch -> Bool
  | .exact => true
  | .weakened => false
  | .strengthened => false
  | .missing => false

def srcLibMayPromoteOriginalTarget (r : SrcLibBoundaryCrossingRecord) : Bool :=
  srcLibProofAuthorityIsSufficient r.proofAuthority &&
    srcLibTargetShapeIsPromotable r.targetShape &&
    srcLibHypothesisMatchIsExact r.hypothesisMatch &&
    r.bridgeStrength == SrcLibBridgeStrength.limitClosed &&
    r.transportPolicy == SrcLibAuthorityTransportPolicy.transport

def srcLibMustRefusePromotion (r : SrcLibBoundaryCrossingRecord) : Bool :=
  r.proofAuthority == SrcLibProofAuthority.refusedOverclaim ||
    srcLibTargetShapeMustRefusePromotion r.targetShape ||
    r.hypothesisMatch == SrcLibHypothesisMatch.missing ||
    r.transportPolicy == SrcLibAuthorityTransportPolicy.refuse

def srcLibMayTransportAuthorityAcrossBridge
    (strength : SrcLibBridgeStrength)
    (policy : SrcLibAuthorityTransportPolicy) : Bool :=
  strength == SrcLibBridgeStrength.limitClosed &&
    policy == SrcLibAuthorityTransportPolicy.transport

theorem srcLib_finiteWitnessAuthority_not_sufficient :
    srcLibProofAuthorityIsSufficient
      SrcLibProofAuthority.finiteWitnessOnly = false := by
  rfl

theorem srcLib_residueAuthority_not_sufficient :
    srcLibProofAuthorityIsSufficient SrcLibProofAuthority.residueOnly = false := by
  rfl

theorem srcLib_criterionShape_must_refuse_promotion :
    srcLibTargetShapeMustRefusePromotion SrcLibTargetShape.criterionOnly = true := by
  rfl

theorem srcLib_bridgeTransport_needs_limitClosure :
    srcLibMayTransportAuthorityAcrossBridge
      SrcLibBridgeStrength.residuePreserving
      SrcLibAuthorityTransportPolicy.transport = false := by
  rfl

theorem srcLib_exactLeanProofWithLimitClosure_can_promote :
    srcLibMayPromoteOriginalTarget
      { boundary := SrcLibBoundaryKind.theoremPath
        targetShape := SrcLibTargetShape.externalTheorem
        proofAuthority := SrcLibProofAuthority.localLeanProof
        bridgeStrength := SrcLibBridgeStrength.limitClosed
        hypothesisMatch := SrcLibHypothesisMatch.exact
        transportPolicy := SrcLibAuthorityTransportPolicy.transport } = true := by
  rfl

end Think.Pipeline
