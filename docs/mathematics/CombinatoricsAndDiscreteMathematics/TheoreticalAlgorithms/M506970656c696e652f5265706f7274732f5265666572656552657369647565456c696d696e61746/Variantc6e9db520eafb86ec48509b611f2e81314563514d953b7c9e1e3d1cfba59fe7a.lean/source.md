# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f5265706f7274732f5265666572656552657369647565456c696d696e61746.Variantc6e9db520eafb86ec48509b611f2e81314563514d953b7c9e1e3d1cfba59fe7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf021125155e456190aaba9a69dc902a7f2f78ee` · SHA-256 `c6e9db520eafb86ec48509b611f2e81314563514d953b7c9e1e3d1cfba59fe7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
