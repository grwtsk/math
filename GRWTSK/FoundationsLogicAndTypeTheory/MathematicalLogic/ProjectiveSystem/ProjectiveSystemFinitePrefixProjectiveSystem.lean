/-!
# Finite-prefix projective system

The runtime may expose bounded prefixes.  The compatible witness is direct
project evidence; surjective maps alone are not silently used to choose an
infinite point.
-/

namespace Mathematics.StratifiedBoundary

structure FinitePrefixProjectiveSystem (State : Type u) where
  project : Nat → Nat → State → State
  identity :
    ∀ stage state,
      project stage stage state = state
  composition :
    ∀ {later middle earlier state},
      earlier ≤ middle →
      middle ≤ later →
      project later earlier state =
        project middle earlier (project later middle state)
  surjective :
    ∀ {later earlier},
      earlier ≤ later →
        Function.Surjective (project later earlier)
  compatibleWitness : Nat → State
  witnessCompatible :
    ∀ {later earlier},
      earlier ≤ later →
      project later earlier (compatibleWitness later) =
        compatibleWitness earlier
  finitePrefixOnly : Bool := true
  finitePrefixOnly_exact : finitePrefixOnly = true

end Mathematics.StratifiedBoundary
