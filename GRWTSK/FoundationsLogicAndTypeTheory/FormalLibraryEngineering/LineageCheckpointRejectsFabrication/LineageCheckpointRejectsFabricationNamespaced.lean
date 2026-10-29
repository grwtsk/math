-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Derivation.Variant99c2b4cfeb22aa3b1aafc2f865a3086ff15c99c8284db11e9344ba7cf3cddd8f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99c2b4cfeb22aa3b1aafc2f865a3086ff15c99c8284db11e9344ba7cf3cddd8f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Derivation.Variant99c2b4cfeb22aa3b1aafc2f865a3086ff15c99c8284db11e9344ba7cf3cddd8f","mathematical_subject":"Foundations.Unclassified","original_sha256":"99c2b4cfeb22aa3b1aafc2f865a3086ff15c99c8284db11e9344ba7cf3cddd8f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-semantic-correction-cycle-6/reproductions/03_lineage_checkpoint_rejects_fabrication.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.Derivation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Derivation.Variant99c2b4cfeb22aa3b1aafc2f865a3086ff15c99c8284db11e9344ba7cf3cddd8f

namespace FCRS.TheoremTransfer.Cycle6.LineageCheckpoint

variable {graph : TransferDependencyGraph}
variable {source middle target : graph.Node}
variable {first second : TranslationLineage}
variable {expectedTheory expectedProposition fabricatedTheory fabricatedProposition :
  VersionId}
variable (theoryDiffers : fabricatedTheory ≠ expectedTheory)
variable (propositionDiffers : fabricatedProposition ≠ expectedProposition)
variable (middleTheoryFabricated :
  (graph.node middle).theoryVersionArtifact.identity = fabricatedTheory)
variable (middlePropositionFabricated :
  (graph.node middle).propositionArtifact = some ⟨fabricatedProposition⟩)
variable (firstRealization :
  TranslationLineageRealization graph first source middle)
variable (secondRealization :
  TranslationLineageRealization graph second middle target)

/-- A caller-selected middle node cannot override the lineage's committed IDs. -/
example : True := by
  fail_if_success
    exact (.composite middle middleTheoryFabricated middlePropositionFabricated
      firstRealization secondRealization :
      TranslationLineageRealization graph
        (.composite expectedTheory expectedProposition first second)
        source target)
  trivial

end FCRS.TheoremTransfer.Cycle6.LineageCheckpoint
