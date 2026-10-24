# Complete source: GRWTSK.Algebra.GroupTheory.BlockDecomposition.Variantac34ba309dbb7624da43be81598459df541f2630d1639da92913abaa24ff7e90

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d99d520e2867d678560d209f18d0a4f6e48acac6` · SHA-256 `ac34ba309dbb7624da43be81598459df541f2630d1639da92913abaa24ff7e90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Hardy.BalanceGauge

/-!
# Hardy block decomposition

The product law explicitly retains the off-diagonal interaction term.
-/

namespace Mathematics.SemiLocalDefect.Hardy

universe uSymbol

structure OperatorComposition
    (model : OperatorModel) where
  compose :
    model.Operator → model.Operator → model.Operator
  adjoint :
    model.Operator → model.Operator
  compose_assoc :
    ∀ first second third,
      compose (compose first second) third =
        compose first (compose second third)
  identity_comp :
    ∀ operator,
      compose model.identity operator = operator
  comp_identity :
    ∀ operator,
      compose operator model.identity = operator
  adjoint_involutive :
    Function.Involutive adjoint

structure HardyBlockModel
    (model : OperatorModel)
    (Symbol : Type uSymbol)
    [CommGroup Symbol] where
  operations : OperatorComposition model
  toeplitz : Symbol → model.Operator
  upperLeakage : Symbol → model.Operator
  hardyLeakage : Symbol → model.Operator
  remainder : Symbol → model.Operator
  blockProductToeplitz :
    ∀ left right,
      toeplitz (left * right) =
        operations.compose
            (toeplitz left) (toeplitz right) +
          operations.compose
            (upperLeakage left)
            (hardyLeakage right)
  blockProductHardy :
    ∀ left right,
      hardyLeakage (left * right) =
        operations.compose
            (hardyLeakage left) (toeplitz right) +
          operations.compose
            (remainder left) (hardyLeakage right)

structure HardyProductInteraction
    {model : OperatorModel}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    (blocks : HardyBlockModel model Symbol)
    (left right : Symbol) where
  inheritedLeakage : model.Operator
  newLeakage : model.Operator
  crossTerm : model.Operator
  inherited_eq :
    inheritedLeakage =
      blocks.operations.compose
        (blocks.hardyLeakage left)
        (blocks.toeplitz right)
  new_eq :
    newLeakage =
      blocks.operations.compose
        (blocks.remainder left)
        (blocks.hardyLeakage right)
  expansion :
    blocks.hardyLeakage (left * right) =
      inheritedLeakage +
        newLeakage + crossTerm

end Mathematics.SemiLocalDefect.Hardy
```
