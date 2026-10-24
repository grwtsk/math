import Boolean.Tree

namespace Boolean

universe u

/-- Number of syntax nodes in a Boolean tree. -/
def Tree.nodeCount : Tree α → Nat
  | .var _ => 1
  | .falsum => 1
  | .truth => 1
  | .neg p => Tree.nodeCount p + 1
  | .conj p q => Tree.nodeCount p + Tree.nodeCount q + 1
  | .disj p q => Tree.nodeCount p + Tree.nodeCount q + 1
  | .impl p q => Tree.nodeCount p + Tree.nodeCount q + 1
  | .eqv p q => Tree.nodeCount p + Tree.nodeCount q + 1
  | .nand p q => Tree.nodeCount p + Tree.nodeCount q + 1

end Boolean
