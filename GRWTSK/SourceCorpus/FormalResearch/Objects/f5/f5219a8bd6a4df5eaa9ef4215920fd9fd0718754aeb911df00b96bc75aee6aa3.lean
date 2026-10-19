/-!
# Registered invariant-law observation surface
-/

namespace Mathematics.GraphAccess

structure InvariantLaw (State Observable : Type u) where
  lawRef : String
  observableValue : Observable → State → Int
  canonicalTrace : Observable → Int

end Mathematics.GraphAccess
