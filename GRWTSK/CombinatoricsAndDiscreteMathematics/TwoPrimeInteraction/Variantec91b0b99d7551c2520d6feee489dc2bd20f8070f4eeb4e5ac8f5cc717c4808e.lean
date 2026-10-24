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
