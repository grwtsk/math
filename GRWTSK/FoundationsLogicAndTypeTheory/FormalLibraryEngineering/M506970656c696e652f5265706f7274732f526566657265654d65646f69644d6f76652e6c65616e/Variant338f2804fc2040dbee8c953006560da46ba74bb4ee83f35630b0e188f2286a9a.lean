-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RefereeMedoidMoveStatus.Variant3bd9281c54df2ff66c6f5074d5df8baf965e55a974c85f77a8a707a801d325ee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3bd9281c54df2ff66c6f5074d5df8baf965e55a974c85f77a8a707a801d325ee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RefereeMedoidMoveStatus.Variant3bd9281c54df2ff66c6f5074d5df8baf965e55a974c85f77a8a707a801d325ee","mathematical_subject":"Foundations.Unclassified","original_sha256":"3bd9281c54df2ff66c6f5074d5df8baf965e55a974c85f77a8a707a801d325ee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit0/Bit1/Bit1/Bit0/Bit1/Bit0/M506970656c696e652f5265706f7274732f526566657265654d65646f69644d6f76652e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f56616c69646174696f6e2f4d65646f6964526562616c616e63652e6c65616e


/- source-tree-label: STL1|L|addr=11011010|role=proof_code_atom|slug=pipeline-reports-refereemedoidmove|owner=canonical_owner|core=Pipeline/Reports/RefereeMedoidMove.lean|leaf=M506970656c696e652f5265706f7274732f526566657265654d65646f69644d6f76652e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RefereeMedoidMoveStatus.Variant3bd9281c54df2ff66c6f5074d5df8baf965e55a974c85f77a8a707a801d325ee

set_option autoImplicit false

namespace Think.Pipeline.Reports.RefereeMedoidMove

inductive RefereeMedoidMoveStatus where
  | finiteWitnessGuidance
  | checkedByValidator
  | explicitResidue
deriving DecidableEq, Repr

def acceptedStatus : String := "PipelineToposBoundary"

def forbiddenStatusUnlessConstructed : String := "PipelineTopos := Sh(PipelineSite, J_pipeline)"

theorem accepted_status_exact : acceptedStatus = "PipelineToposBoundary" := by
  rfl

theorem full_topos_status_not_accepted : forbiddenStatusUnlessConstructed = "PipelineTopos := Sh(PipelineSite, J_pipeline)" := by
  rfl

end Think.Pipeline.Reports.RefereeMedoidMove
