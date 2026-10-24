-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonsettlingAuthorityReceipt.Variant44d5c6d1b8734f317d7edd08173ba07cc62ee4553f8a614a9946160f3badfe9f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"44d5c6d1b8734f317d7edd08173ba07cc62ee4553f8a614a9946160f3badfe9f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.NonsettlingAuthorityReceipt.Variant44d5c6d1b8734f317d7edd08173ba07cc62ee4553f8a614a9946160f3badfe9f","mathematical_subject":"Foundations.Unclassified","original_sha256":"44d5c6d1b8734f317d7edd08173ba07cc62ee4553f8a614a9946160f3badfe9f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit1/Bit1/Bit1/Bit1/Bit1/Bit1/M496d706f7274732f4e6f6e736574746c696e67417574686f72697479526563656970742e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.M496d706f7274732f417574686f72697479526563656970742e6c65616e


/- source-tree-label: STL1|L|addr=11111111|role=proof_code_atom|slug=imports-nonsettlingauthorityreceipt|owner=canonical_owner|core=Imports/NonsettlingAuthorityReceipt.lean|leaf=M496d706f7274732f4e6f6e736574746c696e67417574686f72697479526563656970742e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonsettlingAuthorityReceipt.Variant44d5c6d1b8734f317d7edd08173ba07cc62ee4553f8a614a9946160f3badfe9f

set_option autoImplicit false

namespace Think.Imports

structure NonsettlingAuthorityReceipt where
  receipt : AuthorityReceipt
  forbids : receipt.forbidsTargetSettlement = true

namespace NonsettlingAuthorityReceipt

theorem nonsettling_receipt_not_checked_proved
    (nonsettling : NonsettlingAuthorityReceipt)
    (P : Prop) (r : FWR.Residue) :
    ¬ ∃ proof : P,
      nonsettling.receipt.targetBoundaryCheck P r =
        FWR.Checked.proved proof := by
  exact
    AuthorityReceipt.targetBoundaryCheck_ne_proved
      nonsettling.receipt nonsettling.forbids P r

theorem nonsettling_receipt_has_boundary_residue
    (nonsettling : NonsettlingAuthorityReceipt)
    (P : Prop) (r : FWR.Residue) :
    (nonsettling.receipt.targetBoundaryCheck P r).hasResidue = true := by
  exact
    AuthorityReceipt.targetBoundaryCheck_hasResidue
      nonsettling.receipt nonsettling.forbids P r

end NonsettlingAuthorityReceipt

end Think.Imports
