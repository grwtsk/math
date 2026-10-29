-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TreeFirstLocallyGrounded.Variant5255da10f53f3eab2da70fa8039565bbb0559bdfb3b6c62be34aadc9cb218521","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5255da10f53f3eab2da70fa8039565bbb0559bdfb3b6c62be34aadc9cb218521","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TreeFirstLocallyGrounded.Variant5255da10f53f3eab2da70fa8039565bbb0559bdfb3b6c62be34aadc9cb218521","mathematical_subject":"Foundations.Unclassified","original_sha256":"5255da10f53f3eab2da70fa8039565bbb0559bdfb3b6c62be34aadc9cb218521","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit0/Bit1/Bit0/Bit1/Bit1/Bit1/Bit1/M56616c69646174696f6e2f42726169645472656546697273742e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit0.Bit0.M56616c69646174696f6e2f4272616964436f6e666f726d616e63652e6c65616e

/- source-tree-label: STL1|L|addr=010101111|role=proof_code_atom|slug=validation-braidtreefirst|owner=canonical_owner|core=Validation/BraidTreeFirst.lean|leaf=M56616c69646174696f6e2f42726169645472656546697273742e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TreeFirstLocallyGrounded.Variant5255da10f53f3eab2da70fa8039565bbb0559bdfb3b6c62be34aadc9cb218521

set_option autoImplicit false

namespace Think.Braid.Validation

def treeFirstLocallyGrounded (v : TreeValidation) : Prop :=
  ∀ m ∈ v.modules, moduleLocallyGrounded m

theorem tree_first_locally_grounded_is_V10
    (v : TreeValidation) :
    treeFirstLocallyGrounded v = V10_not_registry_string_only v := rfl

end Think.Braid.Validation
