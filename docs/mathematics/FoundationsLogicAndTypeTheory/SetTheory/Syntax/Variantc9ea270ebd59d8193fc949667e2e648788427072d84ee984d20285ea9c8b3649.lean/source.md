# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Syntax.Variantc9ea270ebd59d8193fc949667e2e648788427072d84ee984d20285ea9c8b3649

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21cd1f0f1c6ae31c0ba9530a00b12f64bc30b9f2` · SHA-256 `c9ea270ebd59d8193fc949667e2e648788427072d84ee984d20285ea9c8b3649`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
