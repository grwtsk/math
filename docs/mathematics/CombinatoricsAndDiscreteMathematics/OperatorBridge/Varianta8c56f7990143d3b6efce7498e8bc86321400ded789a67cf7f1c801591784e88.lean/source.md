# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OperatorBridge.Varianta8c56f7990143d3b6efce7498e8bc86321400ded789a67cf7f1c801591784e88

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43761a5e6ee55dd628cb18b388b36f31537a68c8` · SHA-256 `a8c56f7990143d3b6efce7498e8bc86321400ded789a67cf7f1c801591784e88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Trace.ArithmeticTail

/-!
# Semi-local operator bridge residual
-/

namespace Mathematics.SemiLocalDefect.Trace

universe uPrime uTest

structure SemiLocalOperatorBridge
    (Prime : Type uPrime)
    [DecidableEq Prime]
    (Test : Type uTest) where
  truncatedArithmetic :
    Finset Prime → Test → ℝ
  packetEnergy :
    Finset Prime → Test → ℝ
  residual :
    Finset Prime → Test → ℝ
  split :
    ∀ cut test,
      truncatedArithmetic cut test =
        packetEnergy cut test +
          residual cut test
  cofinalDecay : Prop
  cofinalDecayProof : cofinalDecay
  uniformOnUnitBall : Prop
  uniformOnUnitBallProof :
    uniformOnUnitBall

end Mathematics.SemiLocalDefect.Trace
```
