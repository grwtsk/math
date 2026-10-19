
/- source-tree-label: STL1|L|addr=101111|role=proof_code_atom|slug=pipeline-nonclaimcatalog|owner=canonical_owner|core=Pipeline/NonclaimCatalog.lean|leaf=M506970656c696e652f4e6f6e636c61696d436174616c6f672e6c65616e.lean -/

set_option autoImplicit false
namespace Think.Braid.Law

def repository_output_is_not_settlement : String :=
  "repository_output_is_not_settlement"

def rust_file_is_not_proof : String :=
  "rust_file_is_not_proof"

def bitmatrix_is_not_theorem : String :=
  "bitmatrix_is_not_theorem"

def receipt_is_not_proof : String :=
  "receipt_is_not_proof"

def digest_is_not_truth : String :=
  "digest_is_not_truth"

def requiredNonclaims : List String :=
  [ repository_output_is_not_settlement,
    rust_file_is_not_proof,
    bitmatrix_is_not_theorem,
    receipt_is_not_proof,
    digest_is_not_truth ]

theorem requiredNonclaims_count :
    requiredNonclaims.length = 5 := rfl

end Think.Braid.Law
