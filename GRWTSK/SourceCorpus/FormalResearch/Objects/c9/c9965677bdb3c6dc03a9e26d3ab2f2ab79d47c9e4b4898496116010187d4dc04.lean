import Mathematics.ConnesBitfield.Concentration

/-!
# Deterministic typical-realization bridge

Concentration is ensemble evidence.  This certificate names the committed
finite bitfield and proves its uniform deviation bound.
-/

namespace Mathematics.ConnesBitfield

universe uScale uTest

structure CertifiedTypicalRealization
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction}
    (influence :
      BitfieldInfluenceCertificate trace) where
  realization :
    Scale → Bitfield system.bits
  typicalConstant : ℝ
  typicalConstantNonnegative :
    0 ≤ typicalConstant
  uniformTypicality :
    ∀ scale test,
      traceDeviation
          trace scale test
          (realization scale) ≤
        typicalConstant *
          Mathematics.MobiusOntology.squareRootWeight
            (influence.mass scale)
            influence.logarithmicOrder *
          influence.testNorm test

end Mathematics.ConnesBitfield
