# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TraceBounds.Variant7269c2c9d8b7ca37100fcf928ce01ec68ba1798192da1cf4222483dd8ab16104

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0315e23e4a3fa638ca353fe9035e296ccdda90d` · SHA-256 `7269c2c9d8b7ca37100fcf928ce01ec68ba1798192da1cf4222483dd8ab16104`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ConnesBitfield.Trace
import Mathematics.MobiusOntology.SquareRootNorm

/-!
# Componentwise square-root trace bounds

The exact trace identity and final norm assembly retain separate main-term,
regularization, and bitfield-remainder estimates.  The reduced spectral trace
is handled by `TraceScaleCertificate`, where it is derived from a finite
centered envelope and an arithmetic scale bridge.
-/

namespace Mathematics.ConnesBitfield

universe uScale uTest

structure TraceSquareRootBounds
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction) where
  mass : Scale → ℝ
  massAtLeastOne :
    ∀ scale, 1 ≤ mass scale
  testNorm : TestFunction → ℝ
  testNormNonnegative :
    ∀ test, 0 ≤ testNorm test
  logarithmicOrder : Nat
  mainBiasConstant : ℝ
  regularizationConstant : ℝ
  bitfieldConstant : ℝ
  constantsNonnegative :
    0 ≤ mainBiasConstant ∧
    0 ≤ regularizationConstant ∧
    0 ≤ bitfieldConstant
  mainTermBound :
    ∀ scale test,
      ‖trace.mainTerm scale test‖ ≤
        mainBiasConstant *
          Mathematics.MobiusOntology.squareRootWeight
            (mass scale)
            logarithmicOrder *
          testNorm test
  regularizationRemainderBound :
    ∀ scale test,
      ‖trace.regularizationRemainder scale test‖ ≤
        regularizationConstant *
          Mathematics.MobiusOntology.squareRootWeight
            (mass scale)
            logarithmicOrder *
          testNorm test
  bitfieldRemainderBound :
    ∀ scale test,
      ‖trace.bitfieldRemainder scale test‖ ≤
        bitfieldConstant *
          Mathematics.MobiusOntology.squareRootWeight
            (mass scale)
            logarithmicOrder *
          testNorm test

end Mathematics.ConnesBitfield
```
