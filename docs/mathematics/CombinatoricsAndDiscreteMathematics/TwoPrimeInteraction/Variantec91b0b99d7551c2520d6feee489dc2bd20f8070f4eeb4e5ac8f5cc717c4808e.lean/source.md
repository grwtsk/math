# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TwoPrimeInteraction.Variantec91b0b99d7551c2520d6feee489dc2bd20f8070f4eeb4e5ac8f5cc717c4808e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f514b88f99201e6efb35cdcd1b544145427c8e3` · SHA-256 `ec91b0b99d7551c2520d6feee489dc2bd20f8070f4eeb4e5ac8f5cc717c4808e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.QSeries.OnePrimePassivity
import Mathematics.SemiLocalDefect.CochainCurvature
import Mathematics.SemiLocalDefect.Hardy.BalanceGauge

/-!
# Two-prime interaction profile

Closedness, Loewner interaction, transport holonomy, and balance curvature
are independent coordinates.
-/

namespace Mathematics.SemiLocalDefect.QSeries

universe uPrime

structure MixedPlaceProfile
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (source : Finset Prime)
    (left right : Prime) where
  cochainCurvature : model.Operator
  cochainCurvature_eq :
    cochainCurvature =
      boundaryCurvature
        capacity source left right
  defectInteraction : model.Operator
  defectInteraction_eq :
    defectInteraction =
      placeInteraction
        capacity source left right
  transportHolonomy : model.Operator
  balanceGaugeCurvature : model.Operator
  holonomyFlat : Prop
  balanceFlat : Prop

structure TwoPrimeCompressionCertificate
    (leftPrime rightPrime rank : Nat) where
  left_isPrime : Nat.Prime leftPrime
  right_isPrime : Nat.Prime rightPrime
  distinct : leftPrime ≠ rightPrime
  matrix : RationalMatrix rank
  sign : InteractionSign
  exactEvaluation : Prop
  exactEvaluationProof : exactEvaluation
  signSound : Prop
  signSoundProof : signSound

end Mathematics.SemiLocalDefect.QSeries
```
