-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParentResidue.Variantdc0c3fc1d76c743da59022a8eb38d85fa2324eea709706f2dc8d4245e01f419e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc0c3fc1d76c743da59022a8eb38d85fa2324eea709706f2dc8d4245e01f419e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ParentResidue.Variantdc0c3fc1d76c743da59022a8eb38d85fa2324eea709706f2dc8d4245e01f419e","mathematical_subject":"Foundations.Unclassified","original_sha256":"dc0c3fc1d76c743da59022a8eb38d85fa2324eea709706f2dc8d4245e01f419e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/Residue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Projection


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParentResidue.Variantdc0c3fc1d76c743da59022a8eb38d85fa2324eea709706f2dc8d4245e01f419e

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure ParentResidue where
  canonicalNode : String
  residueClass : String
  selfContribution : String
  childContribution : String
  lateralContribution : String
  boundaryCorrected : Prop
deriving Repr

def phaseTableResidue : ParentResidue :=
  { canonicalNode := "formal/Think/Pipeline/Phases/PhaseTable.lean"
    residueClass := "Pipeline.PhaseTable"
    selfContribution := "indexed phase records"
    childContribution := "mirror phase entries"
    lateralContribution := "pole-family placements"
    boundaryCorrected := True }

end Think.RadoProjectedModularHeatflow
