# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ArithmeticFunction.Variantdf20e25104f42b1af4299a2b854d605c4b4633add1d60802ad61a30e4f4ce4db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66cfc9dfdae63e15f8512408d6b27ba0ba892d56` · SHA-256 `df20e25104f42b1af4299a2b854d605c4b4633add1d60802ad61a30e4f4ce4db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Number.Payload

/-!
# Discrete arithmetic functions

Arithmetic functions belong to `Number`, not to `AnalyticNumber`.

This file contains discrete number-theoretic shells.  Convergence of associated
Dirichlet series is not stated here.  That belongs to `AnalyticNumber`.
-/

namespace Number

/-- Arithmetic function shell indexed by natural numbers, ignoring zero. -/
structure ArithmeticFunction where
  value : Nat → Int
  ignoresZero : value 0 = 0

/--
Certificate-gated Dirichlet convolution statement.

This is still discrete arithmetic.  A future Mathlib-backed implementation may
replace this shell with actual finite divisor-sum proofs.
-/
structure DirichletConvolutionCertificate
    (_f _g _h : ArithmeticFunction) where
  convolutionSound : Prop
  convolutionProof : convolutionSound

/-- The constant-one arithmetic function. -/
def oneFunction : ArithmeticFunction where
  value := fun n => if n = 0 then 0 else 1
  ignoresZero := by simp

/-- Dirichlet identity function ε. -/
def epsilonFunction : ArithmeticFunction where
  value := fun n => if n = 1 then 1 else 0
  ignoresZero := by simp

/-- Möbius function shell, as a discrete arithmetic object. -/
structure MobiusFunction where
  function : ArithmeticFunction
  inverseOfOne :
    DirichletConvolutionCertificate oneFunction function epsilonFunction

theorem dirichlet_convolution_sound
    {f g h : ArithmeticFunction}
    (C : DirichletConvolutionCertificate f g h) :
    C.convolutionSound :=
  C.convolutionProof

theorem mobius_inverse_of_one
    (μ : MobiusFunction) :
    μ.inverseOfOne.convolutionSound :=
  μ.inverseOfOne.convolutionProof

/--
A discrete arithmetic function does not define an analytic Dirichlet series by
itself.  The analytic series object is introduced later in `AnalyticNumber`.
-/
def ArithmeticFunctionOwnsAnalyticSeries
    (_f : ArithmeticFunction) : Prop :=
  False

theorem arithmetic_function_not_analytic_series
    (f : ArithmeticFunction) :
    ¬ ArithmeticFunctionOwnsAnalyticSeries f := by
  intro h
  exact h

end Number
```
