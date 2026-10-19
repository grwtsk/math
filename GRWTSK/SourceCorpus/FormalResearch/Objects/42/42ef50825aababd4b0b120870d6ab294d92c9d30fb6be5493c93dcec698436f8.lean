/-!
# Ordinal-stratum access references
-/

namespace Mathematics.GraphAccess

structure OrdinalStratumAccessRef where
  cutRef : String
  stratumRef : String
  localRankRef : Option String
  persistentIdentityRef : String
deriving DecidableEq, Repr

end Mathematics.GraphAccess
