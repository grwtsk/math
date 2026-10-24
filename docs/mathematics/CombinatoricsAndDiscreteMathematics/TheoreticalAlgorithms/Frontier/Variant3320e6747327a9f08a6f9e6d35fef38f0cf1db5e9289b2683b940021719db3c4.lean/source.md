# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Frontier.Variant3320e6747327a9f08a6f9e6d35fef38f0cf1db5e9289b2683b940021719db3c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c866cc068c995004df45787db3006dd7b3bbbea` · SHA-256 `3320e6747327a9f08a6f9e6d35fef38f0cf1db5e9289b2683b940021719db3c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP0.Obligation.Core

/-!
# Post-WP3 frontier primitives
-/

namespace Mathematics.SemiLocalDefect.SoninCore

inductive PostWP3UnknownKind
  | horizonEnergyCauchy
  | cofinalSoninEnergy
  | hardySoninTraceBound
  | semiLocalArithmeticTrace
  | arithmeticTailConvergence
  | weilBoundaryIdentification
  | registrySpanPositivity
  | packetDensity
  | weilFormContinuity
deriving DecidableEq, Repr

def postWP3Frontier :
    Array PostWP3UnknownKind :=
  #[
    .horizonEnergyCauchy,
    .cofinalSoninEnergy,
    .hardySoninTraceBound,
    .semiLocalArithmeticTrace,
    .arithmeticTailConvergence,
    .weilBoundaryIdentification,
    .registrySpanPositivity,
    .packetDensity,
    .weilFormContinuity
  ]

structure OpenPostWP3Obligation where
  id : Nat
  kind : PostWP3UnknownKind
  subject : String
  description : String
  blockedTheorems : Array String
deriving Repr

end Mathematics.SemiLocalDefect.SoninCore
```
