import Mathematics.SemiLocalDefect.Trace.CofinalLimit

/-!
# Semi-local arithmetic truncation tails
-/

namespace Mathematics.SemiLocalDefect.Trace

universe uPrime uTest

structure SemiLocalArithmeticTail
    (Prime : Type uPrime)
    [DecidableEq Prime]
    (Test : Type uTest) where
  globalWeil : Test → ℝ
  truncatedWeil : Finset Prime → Test → ℝ
  tail : Finset Prime → Test → ℝ
  split :
    ∀ cut test,
      globalWeil test =
        truncatedWeil cut test +
          tail cut test
  cofinalDecay : Prop
  cofinalDecayProof : cofinalDecay
  uniformOnUnitBall : Prop
  uniformOnUnitBallProof :
    uniformOnUnitBall

end Mathematics.SemiLocalDefect.Trace
