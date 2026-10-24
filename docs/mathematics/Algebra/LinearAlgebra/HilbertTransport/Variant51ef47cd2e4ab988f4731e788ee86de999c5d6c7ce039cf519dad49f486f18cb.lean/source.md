# Complete source: GRWTSK.Algebra.LinearAlgebra.HilbertTransport.Variant51ef47cd2e4ab988f4731e788ee86de999c5d6c7ce039cf519dad49f486f18cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80032432827df3e52b5fb46f41bea4d415330b1c` · SHA-256 `51ef47cd2e4ab988f4731e788ee86de999c5d6c7ce039cf519dad49f486f18cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ConnesBitfield.MatrixFiberCrossedProduct

/-!
# Automorphism transport on the supported Hilbert carrier

This element isolates the exact realization
`(U_g ψ)(ω) = V_g ψ(g⁻¹ω)` from the matrix-fiber algebra itself.  The
formula, representation binding, group law, and both unitary identities are
all certificate-bearing.
-/

namespace Mathematics.ConnesBitfield

open scoped BigOperators

structure MatrixFiberHilbertTransportCertificate
    {system : RandomBitfieldSystem}
    {base : FiniteCrossedProductModel system}
    {rank : Nat}
    {model :
      MatrixFiberCrossedProductModel base rank}
    (representation :
      MatrixFiberCrossedProductRepresentation model) where
  transportOperator :
    base.Automorphism →
      Matrix
        (BitfieldHilbertIndex system rank)
        (BitfieldHilbertIndex system rank)
        ℂ
  representsGroupElement :
    ∀ automorphism,
      transportOperator automorphism =
        representation.represent
          (matrixFiberGroupElement
            base.Automorphism rank automorphism)
  transportFormula :
    ∀ automorphism
        (vector : BitfieldHilbertVector system rank)
        (state : SupportedBitfield system)
        (targetIndex : Fin rank),
      Matrix.mulVec
          (transportOperator automorphism)
          vector
          (state, targetIndex) =
        ∑ sourceIndex : Fin rank,
          model.fiberAction.transport
              automorphism targetIndex sourceIndex *
            vector
              (supportedBitfieldAct
                base automorphism⁻¹ state,
                sourceIndex)
  transportIdentity :
    transportOperator 1 = 1
  transportMultiplicative :
    ∀ left right,
      transportOperator (left * right) =
        transportOperator left *
          transportOperator right
  transportUnitaryLeft :
    ∀ automorphism,
      (transportOperator automorphism)ᴴ *
          transportOperator automorphism =
        1
  transportUnitaryRight :
    ∀ automorphism,
      transportOperator automorphism *
          (transportOperator automorphism)ᴴ =
        1

end Mathematics.ConnesBitfield
```
