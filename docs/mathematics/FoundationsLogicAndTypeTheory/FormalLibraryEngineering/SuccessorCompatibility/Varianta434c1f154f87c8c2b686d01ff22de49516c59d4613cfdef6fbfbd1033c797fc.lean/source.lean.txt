-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorAutomorphismCompatibility.Varianteb16128a0cf786e6b848f526e45ef70cb7cce6e5326a860961e6e85212a7b271","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb16128a0cf786e6b848f526e45ef70cb7cce6e5326a860961e6e85212a7b271","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SuccessorAutomorphismCompatibility.Varianteb16128a0cf786e6b848f526e45ef70cb7cce6e5326a860961e6e85212a7b271","mathematical_subject":"Foundations.Unclassified","original_sha256":"eb16128a0cf786e6b848f526e45ef70cb7cce6e5326a860961e6e85212a7b271","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Symmetry/SuccessorCompatibility.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Symmetry.CutAction
import Mathematics.StratifiedBoundary.Boundary.SuccessorConnector

/-!
# Successor symmetry compatibility
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorAutomorphismCompatibility.Varianteb16128a0cf786e6b848f526e45ef70cb7cce6e5326a860961e6e85212a7b271

namespace Mathematics.StratifiedBoundary

structure SuccessorAutomorphismCompatibility
    (SuccessorGroup PredecessorGroup
      SuccessorState PredecessorState : Type u) where
  successorAction :
    CutAutomorphismAction SuccessorGroup SuccessorState
  predecessorAction :
    CutAutomorphismAction PredecessorGroup PredecessorState
  connector :
    SuccessorStateConnector PredecessorState SuccessorState
  restrictGroup : SuccessorGroup → PredecessorGroup
  projects :
    ∀ groupElement state,
      connector.project
          (successorAction.act groupElement state) =
        predecessorAction.act
          (restrictGroup groupElement)
          (connector.project state)

end Mathematics.StratifiedBoundary
