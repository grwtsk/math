import Mathlib.Data.Fintype.Card

/-!
# Optional majority-crossing frontier

This profile models only explicitly threshold-based finite carriers.
-/

namespace Mathematics.StratifiedBoundary

def majorityThreshold (carrierSize : Nat) : Nat :=
  carrierSize / 2 + 1

structure MajorityCrossingProfile
    (Carrier : Type u)
    [Fintype Carrier] where
  profileId : String
  primitiveCrossing : Finset Carrier → Prop
  crossing_exact :
    ∀ support,
      primitiveCrossing support ↔
        support.card = majorityThreshold (Fintype.card Carrier)
  createsTheoremAuthority : Bool := false
  createsTheoremAuthority_exact :
    createsTheoremAuthority = false

end Mathematics.StratifiedBoundary
