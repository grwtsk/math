# Complete source: GRWTSK.Algebra.LinearAlgebra.OperatorPurity.Variantc8e437b8eefbeb761c83586c3723eacfdf2301d7b11b4e1e20229f3859c763ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53d41ced2d3efbeee45f8646766ce509f8e1af85` · SHA-256 `34bef3da96beb112e7e234ba9c01597135ee1f7d860dda403066c7f7b8a5eb83`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.OperatorPurityCertificate.Variant9449fbbca5ba4c4ba90a14ec7659214948cabe81dcb297167188c6047dd518d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9449fbbca5ba4c4ba90a14ec7659214948cabe81dcb297167188c6047dd518d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.OperatorPurityCertificate.Variant9449fbbca5ba4c4ba90a14ec7659214948cabe81dcb297167188c6047dd518d5","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"9449fbbca5ba4c4ba90a14ec7659214948cabe81dcb297167188c6047dd518d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/ConnesBitfield/OperatorPurity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.ConnesBitfield.SpectralOperator

/-!
# Finite operator purity and semisimplicity

This is purity inside the bitfield operator model.  Identification with an
arithmetic trace spectrum belongs to a different certificate.
-/


namespace GRWTSK.Algebra.LinearAlgebra.OperatorPurityCertificate.Variant9449fbbca5ba4c4ba90a14ec7659214948cabe81dcb297167188c6047dd518d5

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
