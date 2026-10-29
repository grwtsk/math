
/- source-tree-label: STL1|X|addr=1101010|role=proof_code_atom|slug=sourcetree-binomialtransport|owner=placeholder_non_owner|core=SourceTree/BinomialTransport.lean|leaf=M536f75726365547265652f42696e6f6d69616c5472616e73706f72742e6c65616e.lean -/

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
