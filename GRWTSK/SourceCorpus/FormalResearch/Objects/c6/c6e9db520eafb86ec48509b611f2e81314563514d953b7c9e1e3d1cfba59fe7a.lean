import Think.Bit0.Bit1.Bit1.Bit1.Bit1.Bit1.Bit1.Bit1.M506970656c696e652f56616c69646174696f6e2f417574686f726974794c61646465722e6c65616e


/- source-tree-label: STL1|L|addr=00111001|role=proof_code_atom|slug=pipeline-reports-refereeresidueeliminator|owner=canonical_owner|core=Pipeline/Reports/RefereeResidueEliminator.lean|leaf=M506970656c696e652f5265706f7274732f5265666572656552657369647565456c696d696e61746f722e6c65616e.lean -/

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
