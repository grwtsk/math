-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PlaceholderCover.Variantb347e75720989e7423f97622b2c7af0181ad3eb85c684514de67d1e5af442d33","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b347e75720989e7423f97622b2c7af0181ad3eb85c684514de67d1e5af442d33","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PlaceholderCover.Variantb347e75720989e7423f97622b2c7af0181ad3eb85c684514de67d1e5af442d33","mathematical_subject":"Foundations.Unclassified","original_sha256":"b347e75720989e7423f97622b2c7af0181ad3eb85c684514de67d1e5af442d33","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit0/Bit1/Bit0/Bit1/Bit0/M536f75726365547265652f42696e6f6d69616c5472616e73706f72742e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

/- source-tree-label: STL1|X|addr=1101010|role=proof_code_atom|slug=sourcetree-binomialtransport|owner=placeholder_non_owner|core=SourceTree/BinomialTransport.lean|leaf=M536f75726365547265652f42696e6f6d69616c5472616e73706f72742e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PlaceholderCover.Variantb347e75720989e7423f97622b2c7af0181ad3eb85c684514de67d1e5af442d33

set_option autoImplicit false

namespace Think.SourceTree

structure PlaceholderCover where
  id : String
  leftCapacity : String
  rightCapacity : String
  owning : Bool
deriving DecidableEq, Repr

def binomialTransportRootPlaceholder : PlaceholderCover :=
  {
    id := "binomial_transport_root_placeholder"
    leftCapacity := "future_left_half_cover"
    rightCapacity := "future_right_half_cover"
    owning := false
  }

theorem binomialTransportRootPlaceholder_nonowning :
    binomialTransportRootPlaceholder.owning = false := by
  rfl

end Think.SourceTree
