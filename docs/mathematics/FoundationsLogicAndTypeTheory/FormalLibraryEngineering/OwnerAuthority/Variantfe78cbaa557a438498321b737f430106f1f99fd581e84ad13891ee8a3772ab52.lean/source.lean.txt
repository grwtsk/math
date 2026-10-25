/-!
# Owner authority

This module is deliberately not imported by the graph-access core.  Owner
commit authority is supplied only by the external state owner.
-/

namespace Mathematics.GraphAccess.Owner

inductive OwnerAuthority
  | commit
deriving DecidableEq, Repr

end Mathematics.GraphAccess.Owner
