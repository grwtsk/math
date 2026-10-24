# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CochainCurvature.Variantd5827278e59ed6ba31daa97fbae44ec7539524314465abb9a861aae803774fe7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af2605177cc4542caf09718b463b04cae2b46bfc` · SHA-256 `d5827278e59ed6ba31daa97fbae44ec7539524314465abb9a861aae803774fe7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.BoundaryCochain

/-!
# Computed cochains and curvature budgets

Approximate connector increments remain measurements until projected onto an
exact potential.  Closedness, measurement, and positivity residuals stay
separate.
-/

namespace Mathematics.SemiLocalDefect

universe uPrime

structure MeasuredDefectCochain
    (model : OperatorModel)
    (Prime : Type uPrime)
    [DecidableEq Prime] where
  increment :
    Finset Prime → Prime → model.Operator
  measurementDigest : ReconstructionDigest

def MeasuredDefectCochain.curvature
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (cochain :
      MeasuredDefectCochain model Prime)
    (cut : Finset Prime)
    (left right : Prime) :
    model.Operator :=
  cochain.increment cut left +
    cochain.increment (insert left cut) right -
    cochain.increment cut right -
    cochain.increment (insert right cut) left

structure CochainCurvatureBudget
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (cochain :
      MeasuredDefectCochain model Prime) where
  size : model.Operator → ℝ
  size_nonnegative :
    ∀ operator : model.Operator,
      0 ≤ size operator
  bound :
    Finset Prime → Prime → Prime → ℝ
  bound_nonnegative :
    ∀ (cut : Finset Prime)
      (left right : Prime),
      0 ≤ bound cut left right
  curvature_bounded :
    ∀ (cut : Finset Prime)
      (left right : Prime),
      size
          (MeasuredDefectCochain.curvature
            (model := model)
            (Prime := Prime)
            cochain cut left right) ≤
        (bound cut left right : ℝ)

end Mathematics.SemiLocalDefect
```
