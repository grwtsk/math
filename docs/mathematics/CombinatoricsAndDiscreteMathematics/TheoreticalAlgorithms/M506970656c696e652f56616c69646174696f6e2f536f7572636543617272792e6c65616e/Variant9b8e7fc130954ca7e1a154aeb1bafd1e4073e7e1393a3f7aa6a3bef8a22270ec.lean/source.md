# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f56616c69646174696f6e2f536f7572636543617272792e6c65616e.Variant9b8e7fc130954ca7e1a154aeb1bafd1e4073e7e1393a3f7aa6a3bef8a22270ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56c531c981e3b3e1b6ba7119d17c406e6eb7628b` · SHA-256 `250c20ef4d667ffd888ea67ec6b82edb563f6055d73c04d3e99b26265a5f7007`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PipelineClass.Variant7b072e71659b4d7e92ac8155c656fc0643c9ca2a83405ec0f581d39f13e9403c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b072e71659b4d7e92ac8155c656fc0643c9ca2a83405ec0f581d39f13e9403c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PipelineClass.Variant7b072e71659b4d7e92ac8155c656fc0643c9ca2a83405ec0f581d39f13e9403c","mathematical_subject":"Computation.DataStructures","original_sha256":"7b072e71659b4d7e92ac8155c656fc0643c9ca2a83405ec0f581d39f13e9403c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit1/Bit1/Bit1/Bit0/Bit1/Bit1/M506970656c696e652f56616c69646174696f6e2f536f7572636543617272792e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit0.Bit1.Bit0.Bit0.Bit0.M506970656c696e652f506970656c696e65546f706f73426f756e646172792e6c65616e


/- source-tree-label: STL1|L|addr=00111011|role=proof_code_atom|slug=pipeline-validation-sourcecarry|owner=canonical_owner|core=Pipeline/Validation/SourceCarry.lean|leaf=M506970656c696e652f56616c69646174696f6e2f536f7572636543617272792e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PipelineClass.Variant7b072e71659b4d7e92ac8155c656fc0643c9ca2a83405ec0f581d39f13e9403c

set_option autoImplicit false

namespace Think.Pipeline.SourceCarry

inductive PipelineClass where
  | pipelineCore
  | pipelineToposBoundary
  | pipelineLeaf
  | pipelineGlue
  | pipelineLattice
  | pipelineCentroid
  | pipelineResidueTree
  | pipelineValidation
  | pipelineReport
  | compatibilityShim
  | residue
deriving DecidableEq, Repr

namespace PipelineClass

def label : PipelineClass -> String
  | pipelineCore => "pipeline_core"
  | pipelineToposBoundary => "pipeline_topos_boundary"
  | pipelineLeaf => "pipeline_leaf"
  | pipelineGlue => "pipeline_glue"
  | pipelineLattice => "pipeline_lattice"
  | pipelineCentroid => "pipeline_centroid"
  | pipelineResidueTree => "pipeline_residue_tree"
  | pipelineValidation => "pipeline_validation"
  | pipelineReport => "pipeline_report"
  | compatibilityShim => "compatibility_shim"
  | residue => "residue"

end PipelineClass

def allPipelineClasses : List PipelineClass :=
  [ PipelineClass.pipelineCore,
    PipelineClass.pipelineToposBoundary,
    PipelineClass.pipelineLeaf,
    PipelineClass.pipelineGlue,
    PipelineClass.pipelineLattice,
    PipelineClass.pipelineCentroid,
    PipelineClass.pipelineResidueTree,
    PipelineClass.pipelineValidation,
    PipelineClass.pipelineReport,
    PipelineClass.compatibilityShim,
    PipelineClass.residue ]

theorem allPipelineClasses_complete (c : PipelineClass) : c ∈ allPipelineClasses := by
  cases c <;> simp [allPipelineClasses]

theorem allPipelineClasses_nodup : allPipelineClasses.Nodup := by
  decide

inductive PipelineProofStatus where
  | observedSource
  | classifiedSurface
  | documentedBoundary
  | formalStatement
  | localDefinition
  | checkedRust
  | checkedEvidence
  | checkedLean
  | checkedTheorem
  | refereeAccepted
  | released
  | residue
deriving DecidableEq, Repr

namespace PipelineProofStatus

def releaseAllowed : PipelineProofStatus -> Bool
  | checkedRust => true
  | checkedEvidence => true
  | checkedLean => true
  | checkedTheorem => true
  | residue => true
  | _ => false

theorem releaseAllowed_checkedLean : releaseAllowed checkedLean = true := by
  rfl

theorem observedSource_not_released : releaseAllowed observedSource = false := by
  rfl

end PipelineProofStatus

inductive PipelineResidueStatus where
  | none
  | pipelineToposNotConstructed
  | pipelineSourceFileUnclassified
  | pipelineSourceDigestDrift
  | pipelineImportCycleDetected
  | pipelineSiblingImportDetected
  | pipelineDuplicateOwnedName
  | pipelineDuplicateOperationTree
  | pipelineHiddenCrossDomainGlue
  | pipelineUncheckedClaim
  | pipelineUnsupportedToposClaim
  | pipelineUnsupportedRhClaim
  | pipelineUnsupportedBsdClaim
  | pipelineUnsupportedSpectralClaim
  | pipelineMissingNonClaim
  | pipelineMissingResidue
  | pipelineRefereeRequired
  | pipelineResearchContextRequired
  | pipelineCheckedProofMissing
  | pipelineAuthorityLadderBlocked
  | pipelineRewriteNotSafe
  | pipelineValidationFailed
deriving DecidableEq, Repr

namespace PipelineResidueStatus

def label : PipelineResidueStatus -> String
  | none => "none"
  | pipelineToposNotConstructed => "pipeline_topos_not_constructed"
  | pipelineSourceFileUnclassified => "pipeline_source_file_unclassified"
  | pipelineSourceDigestDrift => "pipeline_source_digest_drift"
  | pipelineImportCycleDetected => "pipeline_import_cycle_detected"
  | pipelineSiblingImportDetected => "pipeline_sibling_import_detected"
  | pipelineDuplicateOwnedName => "pipeline_duplicate_owned_name"
  | pipelineDuplicateOperationTree => "pipeline_duplicate_operation_tree"
  | pipelineHiddenCrossDomainGlue => "pipeline_hidden_cross_domain_glue"
  | pipelineUncheckedClaim => "pipeline_unchecked_claim"
  | pipelineUnsupportedToposClaim => "pipeline_unsupported_topos_claim"
  | pipelineUnsupportedRhClaim => "pipeline_unsupported_rh_claim"
  | pipelineUnsupportedBsdClaim => "pipeline_unsupported_bsd_claim"
  | pipelineUnsupportedSpectralClaim => "pipeline_unsupported_spectral_claim"
  | pipelineMissingNonClaim => "pipeline_missing_non_claim"
  | pipelineMissingResidue => "pipeline_missing_residue"
  | pipelineRefereeRequired => "pipeline_referee_required"
  | pipelineResearchContextRequired => "pipeline_research_context_required"
  | pipelineCheckedProofMissing => "pipeline_checked_proof_missing"
  | pipelineAuthorityLadderBlocked => "pipeline_authority_ladder_blocked"
  | pipelineRewriteNotSafe => "pipeline_rewrite_not_safe"
  | pipelineValidationFailed => "pipeline_validation_failed"

end PipelineResidueStatus

inductive PipelineRewritePlan where
  | classifyOnlyNoSourceRewrite
  | preserveInPlaceUntilSafeMoveIsValidated
  | preserveAsImportShim
  | routeToResidueTreeWhenSafe
  | preserveAsValidationSurface
  | addNewPipelineModule
  | addImportShim
  | moveModuleWithCompatibilityShim
  | splitModuleIntoOwnedAtomsPlusGlue
  | extractDuplicateDefinitionToCore
  | extractCrossDomainRelationToGlue
  | routeUnsupportedClaimToResidue
  | addValidationModule
  | addReportModule
deriving DecidableEq, Repr

structure FormalSourceFile where
  path : String
  moduleName : String
  importClosureDigest : String
  sourceDigest : String
  canonicalDigest : String
  ownedNamesDigest : String
deriving DecidableEq, Repr

structure PipelineCarry where
  source : FormalSourceFile
  pipelineClass : PipelineClass
  proofStatus : PipelineProofStatus
  residueStatus : List PipelineResidueStatus
  rewritePlan : PipelineRewritePlan
  preservesModuleName : Bool
  preservesImportClosure : Bool
  preservesSourceDigest : Bool
  preservesCanonicalDigest : Bool
  preservesOwnedNames : Bool
  preservesProofStatus : Bool
  preservesNonClaims : Bool
  preservesResidueStatus : Bool
deriving DecidableEq, Repr

namespace PipelineCarry

def preservationOk (c : PipelineCarry) : Bool :=
  c.preservesModuleName &&
    c.preservesImportClosure &&
    c.preservesSourceDigest &&
    c.preservesCanonicalDigest &&
    c.preservesOwnedNames &&
    c.preservesProofStatus &&
    c.preservesNonClaims &&
    c.preservesResidueStatus

def releaseAllowed (c : PipelineCarry) : Bool :=
  c.proofStatus.releaseAllowed

theorem preservationOk_exact (source : FormalSourceFile)
    (pipelineClass : PipelineClass)
    (proofStatus : PipelineProofStatus)
    (residueStatus : List PipelineResidueStatus)
    (rewritePlan : PipelineRewritePlan) :
    preservationOk
        { source := source,
          pipelineClass := pipelineClass,
          proofStatus := proofStatus,
          residueStatus := residueStatus,
          rewritePlan := rewritePlan,
          preservesModuleName := true,
          preservesImportClosure := true,
          preservesSourceDigest := true,
          preservesCanonicalDigest := true,
          preservesOwnedNames := true,
          preservesProofStatus := true,
          preservesNonClaims := true,
          preservesResidueStatus := true } = true := by
  rfl

theorem release_refuses_observed_source (source : FormalSourceFile)
    (pipelineClass : PipelineClass)
    (residueStatus : List PipelineResidueStatus)
    (rewritePlan : PipelineRewritePlan) :
    releaseAllowed
        { source := source,
          pipelineClass := pipelineClass,
          proofStatus := PipelineProofStatus.observedSource,
          residueStatus := residueStatus,
          rewritePlan := rewritePlan,
          preservesModuleName := true,
          preservesImportClosure := true,
          preservesSourceDigest := true,
          preservesCanonicalDigest := true,
          preservesOwnedNames := true,
          preservesProofStatus := true,
          preservesNonClaims := true,
          preservesResidueStatus := true } = false := by
  rfl

end PipelineCarry

def pipelineToposNotConstructedResidue : PipelineResidueStatus :=
  PipelineResidueStatus.pipelineToposNotConstructed

theorem pipelineToposBoundary_is_not_full_topos :
    pipelineToposNotConstructedResidue.label = "pipeline_topos_not_constructed" := by
  rfl

end Think.Pipeline.SourceCarry
```
