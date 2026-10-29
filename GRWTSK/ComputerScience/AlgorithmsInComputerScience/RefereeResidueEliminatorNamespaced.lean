-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AcceptedRole.Variantc6e9db520eafb86ec48509b611f2e81314563514d953b7c9e1e3d1cfba59fe7a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6e9db520eafb86ec48509b611f2e81314563514d953b7c9e1e3d1cfba59fe7a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AcceptedRole.Variantc6e9db520eafb86ec48509b611f2e81314563514d953b7c9e1e3d1cfba59fe7a","mathematical_subject":"Computation.DataStructures","original_sha256":"c6e9db520eafb86ec48509b611f2e81314563514d953b7c9e1e3d1cfba59fe7a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit1/Bit1/Bit1/Bit0/Bit0/Bit1/M506970656c696e652f5265706f7274732f5265666572656552657369647565456c696d696e61746f722e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit1.Bit1.Bit1.Bit1.Bit1.Bit1.Bit1.M506970656c696e652f56616c69646174696f6e2f417574686f726974794c61646465722e6c65616e


/- source-tree-label: STL1|L|addr=00111001|role=proof_code_atom|slug=pipeline-reports-refereeresidueeliminator|owner=canonical_owner|core=Pipeline/Reports/RefereeResidueEliminator.lean|leaf=M506970656c696e652f5265706f7274732f5265666572656552657369647565456c696d696e61746f722e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AcceptedRole.Variantc6e9db520eafb86ec48509b611f2e81314563514d953b7c9e1e3d1cfba59fe7a

set_option autoImplicit false

namespace Think.Pipeline.Reports.RefereeResidueEliminator

open Think.Pipeline.AuthorityLadder

def acceptedRole : String := "RefereeResidueEliminator"

def forbiddenRoles : List String :=
  [ "theorem authority",
    "proof authority",
    "repository settlement authority",
    "model authority",
    "browser authority",
    "commit authority",
    "push authority" ]

theorem accepted_role_exact : acceptedRole = "RefereeResidueEliminator" := by
  rfl

theorem theorem_authority_forbidden : "theorem authority" ∈ forbiddenRoles := by
  simp [forbiddenRoles]

end Think.Pipeline.Reports.RefereeResidueEliminator
