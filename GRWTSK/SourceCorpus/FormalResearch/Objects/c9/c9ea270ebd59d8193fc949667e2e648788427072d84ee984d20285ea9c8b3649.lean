/-!
# Admitted ordinal-tally syntax

Limit syntax contains only a registered sequence identifier.  There is no
constructor carrying an arbitrary function from naturals to codes.
-/

namespace Mathematics.StratifiedBoundary

structure FundamentalSequenceId where
  value : String
deriving DecidableEq, Repr

inductive OrdinalTally where
  | tall (magnitude : Nat)
  | succ (predecessor : OrdinalTally)
  | block
      (exponent : OrdinalTally)
      (coefficient : Nat)
      (remainder : OrdinalTally)
  | registeredLimit (sequenceId : FundamentalSequenceId)
deriving DecidableEq, Repr

def OrdinalTally.isRegisteredLimit : OrdinalTally → Bool
  | .registeredLimit _ => true
  | _ => false

end Mathematics.StratifiedBoundary
