
/- source-tree-label: STL1|L|addr=0010110|role=proof_code_atom|slug=pipeline-center-braidnodes|owner=canonical_owner|core=Pipeline/Center/BraidNodes.lean|leaf=M506970656c696e652f43656e7465722f42726169644e6f6465732e6c65616e.lean -/

set_option autoImplicit false
namespace Think.Braid.Taxonomy

inductive AbstractNode where
  | A0 | A1 | A2 | A3 | A4 | A5 | A6 | A7 | A8
deriving DecidableEq, Repr

inductive ConcreteNode where
  | C0 | C1 | C2 | C3 | C4 | C5 | C6 | C7 | C8
deriving DecidableEq, Repr

end Think.Braid.Taxonomy
