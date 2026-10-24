-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConsolidationOperator.Variantc01e83c2bef7a1c2b91e87848940784dda60d7b204e0ac7934dad79bc49b89af","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c01e83c2bef7a1c2b91e87848940784dda60d7b204e0ac7934dad79bc49b89af","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ConsolidationOperator.Variantc01e83c2bef7a1c2b91e87848940784dda60d7b204e0ac7934dad79bc49b89af","mathematical_subject":"Foundations.Unclassified","original_sha256":"c01e83c2bef7a1c2b91e87848940784dda60d7b204e0ac7934dad79bc49b89af","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/Consolidation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Recall


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConsolidationOperator.Variantc01e83c2bef7a1c2b91e87848940784dda60d7b204e0ac7934dad79bc49b89af

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

inductive ConsolidationOperator where
  | episodeToGist
  | gistToFact
  | factToEntity
  | entityToCommunity
  | toolSequenceToTransition
  | workflowToPattern
  | sourcePathToResidueClass
deriving DecidableEq, Repr

structure ConsolidationStep where
  source : MemoryVertex
  target : MemoryVertex
  operator : ConsolidationOperator
  sourceSide : source.side = BoundarySide.inner ∨ source.side = BoundarySide.bridge
  targetSide : target.side = BoundarySide.bridge ∨ target.side = BoundarySide.outer

def ConsolidationStep.crossesOutward (s : ConsolidationStep) : Prop :=
  s.source.side ≠ BoundarySide.outer ∧ s.target.side ≠ BoundarySide.inner

theorem consolidation_not_directly_inner_target (s : ConsolidationStep) :
    s.target.side = BoundarySide.bridge ∨ s.target.side = BoundarySide.outer :=
  s.targetSide

end Think.RadoProjectedModularHeatflow.MemoryCore
