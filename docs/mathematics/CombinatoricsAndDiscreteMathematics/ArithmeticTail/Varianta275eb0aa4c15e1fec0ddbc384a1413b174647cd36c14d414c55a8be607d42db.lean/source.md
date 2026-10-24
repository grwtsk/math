# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticTail.Varianta275eb0aa4c15e1fec0ddbc384a1413b174647cd36c14d414c55a8be607d42db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08dd01edc0ec64000acb744627a499b6e2c8492c` · SHA-256 `a275eb0aa4c15e1fec0ddbc384a1413b174647cd36c14d414c55a8be607d42db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
