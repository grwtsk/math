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
