# Complete source: GRWTSK.Algebra.LinearAlgebra.OperatorPurity.Variant9449fbbca5ba4c4ba90a14ec7659214948cabe81dcb297167188c6047dd518d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b39a82dbcb3c95ee7cb349b715efdd4ce3812c55` · SHA-256 `9449fbbca5ba4c4ba90a14ec7659214948cabe81dcb297167188c6047dd518d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ConnesBitfield.SpectralOperator

/-!
# Finite operator purity and semisimplicity

This is purity inside the bitfield operator model.  Identification with an
arithmetic trace spectrum belongs to a different certificate.
-/

namespace Mathematics.ConnesBitfield

open scoped ComplexConjugate

structure OperatorPurityCertificate
    {system : RandomBitfieldSystem}
    (spectral : BitfieldSpectralOperator system) where
  eigenvalue :
    Bitfield system.bits →
      Fin spectral.dim →
      ℝ
  diagonalizer :
    Bitfield system.bits →
      Matrix (Fin spectral.dim) (Fin spectral.dim) ℂ
  diagonalizerUnitary :
    ∀ state,
      (diagonalizer state)ᴴ * diagonalizer state = 1
  diagonalizes :
    ∀ state,
      (diagonalizer state)ᴴ *
          spectral.operator state *
          diagonalizer state =
        Matrix.diagonal
          (fun index =>
            (eigenvalue state index : ℂ))
  spectralParameterMap :
    Bitfield system.bits →
      Fin spectral.dim →
      ℂ
  spectralParameterMap_eq :
    ∀ state index,
      spectralParameterMap state index =
        spectralParameter (eigenvalue state index)
  criticalLine :
    ∀ state index,
      (spectralParameterMap state index).re =
        (1 : ℝ) / 2
  jordanOrder :
    Bitfield system.bits →
      Fin spectral.dim →
      Nat
  jordanOrderZero :
    ∀ state index,
      jordanOrder state index = 0
  testTransformUniformlyControlled : Prop

def canonicalCriticalLineProof
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    (eigenvalue :
      Bitfield system.bits →
        Fin spectral.dim →
        ℝ) :
    ∀ state index,
      (spectralParameter (eigenvalue state index)).re =
        (1 : ℝ) / 2 :=
  fun state index =>
    spectralParameter_realPart (eigenvalue state index)

theorem operator_model_jordan_order_zero
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    (purity : OperatorPurityCertificate spectral)
    (state : Bitfield system.bits)
    (index : Fin spectral.dim) :
    purity.jordanOrder state index = 0 :=
  purity.jordanOrderZero state index

end Mathematics.ConnesBitfield
```
