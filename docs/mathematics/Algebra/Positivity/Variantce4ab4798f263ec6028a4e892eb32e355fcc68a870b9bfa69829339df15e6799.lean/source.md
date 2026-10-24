# Complete source: GRWTSK.Algebra.Positivity.Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b374dbc73ca8588d4d8fe4ade44f719c2b270a6d` · SHA-256 `ce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.Cofinal

/-!
# Exact trace-positivity route

Positivity has arithmetic authority only after exact factorization over the
complete admitted test class.
-/

namespace Mathematics.RHIsolation

universe uTest uAlgebra

structure ArithmeticPositivityCriterion
    (xi : ℂ → ℂ) where
  Test : Type uTest
  admissible : Test → Prop
  functional : Test → ℝ
  equivalentToRH :
    (∀ test,
      admissible test →
      0 ≤ functional test) ↔
      RiemannHypothesisFor xi

structure PositiveTraceAlgebra
    (Algebra : Type uAlgebra) where
  star : Algebra → Algebra
  multiply : Algebra → Algebra → Algebra
  trace : Algebra → ℝ
  positive :
    ∀ element,
      0 ≤ trace
        (multiply (star element) element)

structure TracePositivityFactorization
    {xi : ℂ → ℂ}
    (criterion :
      ArithmeticPositivityCriterion xi)
    (Algebra : Type uAlgebra) where
  algebra : PositiveTraceAlgebra Algebra
  factor :
    criterion.Test → Algebra
  exact :
    ∀ test,
      criterion.admissible test →
      criterion.functional test =
        algebra.trace
          (algebra.multiply
            (algebra.star (factor test))
            (factor test))

theorem tracePositivityFactorization_implies_RH
    {xi : ℂ → ℂ}
    {Algebra : Type uAlgebra}
    (criterion :
      ArithmeticPositivityCriterion xi)
    (factorization :
      TracePositivityFactorization
        criterion Algebra) :
    RiemannHypothesisFor xi := by
  apply criterion.equivalentToRH.mp
  intro test admissible
  rw [factorization.exact test admissible]
  exact factorization.algebra.positive
    (factorization.factor test)

theorem exact_trace_factorization_implies_RH
    {xi : ℂ → ℂ}
    {Algebra : Type uAlgebra}
    (criterion :
      ArithmeticPositivityCriterion xi)
    (factorization :
      TracePositivityFactorization
        criterion Algebra) :
    RiemannHypothesisFor xi :=
  tracePositivityFactorization_implies_RH
    criterion factorization

end Mathematics.RHIsolation
```
