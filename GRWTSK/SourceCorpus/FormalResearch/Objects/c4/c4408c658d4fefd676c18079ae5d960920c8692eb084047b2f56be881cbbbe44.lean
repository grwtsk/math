import Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit1.Bit1.M506970656c696e652f41727469666163742e6c65616e


/- source-tree-label: STL1|L|addr=010100111|role=proof_code_atom|slug=pipeline-authority|owner=canonical_owner|core=Pipeline/Authority.lean|leaf=M506970656c696e652f417574686f726974792e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline

inductive AuthorityClass where
  | finite
  | external
  | conjectural
  | refused
deriving DecidableEq, Repr

structure AuthorityLabel where
  phase : Think.PhaseId
  authority : AuthorityClass

end Think.Pipeline
