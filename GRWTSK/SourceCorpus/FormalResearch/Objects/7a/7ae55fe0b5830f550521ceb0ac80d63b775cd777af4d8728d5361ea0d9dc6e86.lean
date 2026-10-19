import Mathematics.GraphAccess.NeighborEnumeration

/-!
# Access authority

Access authority grants observation, traversal, sampling, or proposal
capabilities.  It contains no owner-commit token and no trusted conversion to
one.
-/

namespace Mathematics.GraphAccess

inductive AccessCapability
  | observe
  | traverse
  | sample
  | propose
deriving DecidableEq, Ord, Repr

inductive AccessAuthority
  | observe
  | traverse
  | sample
  | propose
deriving DecidableEq, Repr

def AccessAuthority.grants :
    AccessAuthority → AccessCapability → Bool
  | .observe, .observe => true
  | .traverse, .observe => true
  | .traverse, .traverse => true
  | .sample, .observe => true
  | .sample, .sample => true
  | .propose, .observe => true
  | .propose, .traverse => true
  | .propose, .propose => true
  | _, _ => false

end Mathematics.GraphAccess
