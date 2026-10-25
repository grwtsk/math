# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Typicality.Variantc9965677bdb3c6dc03a9e26d3ab2f2ab79d47c9e4b4898496116010187d4dc04

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5d3b7bbc33b475e86dff2b661407732158ff756` · SHA-256 `c9965677bdb3c6dc03a9e26d3ab2f2ab79d47c9e4b4898496116010187d4dc04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
