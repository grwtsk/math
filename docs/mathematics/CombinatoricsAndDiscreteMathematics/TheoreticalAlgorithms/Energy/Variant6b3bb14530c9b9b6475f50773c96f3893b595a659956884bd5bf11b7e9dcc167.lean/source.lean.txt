import Mathematics.Relaxation.HardConstraint

/-! # Discrete relaxation energy -/

namespace Mathematics.Relaxation

/--
Natural-valued energy is an operational termination measure.  It is not
theorem authority and need not represent a physical energy.
-/
structure Energy where
  energyId : StableId
  measure : State → Nat
  componentMeasures : List (State → Nat)
  energyDigest : Digest

end Mathematics.Relaxation
