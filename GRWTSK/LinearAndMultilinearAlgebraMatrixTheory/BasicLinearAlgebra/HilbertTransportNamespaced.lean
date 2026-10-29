-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MatrixFiberHilbertTransportCertificate.Variant51ef47cd2e4ab988f4731e788ee86de999c5d6c7ce039cf519dad49f486f18cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"51ef47cd2e4ab988f4731e788ee86de999c5d6c7ce039cf519dad49f486f18cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MatrixFiberHilbertTransportCertificate.Variant51ef47cd2e4ab988f4731e788ee86de999c5d6c7ce039cf519dad49f486f18cb","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"51ef47cd2e4ab988f4731e788ee86de999c5d6c7ce039cf519dad49f486f18cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/ConnesBitfield/HilbertTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.ConnesBitfield.MatrixFiberCrossedProduct

/-!
# Automorphism transport on the supported Hilbert carrier

This element isolates the exact realization
`(U_g ψ)(ω) = V_g ψ(g⁻¹ω)` from the matrix-fiber algebra itself.  The
formula, representation binding, group law, and both unitary identities are
all certificate-bearing.
-/


namespace GRWTSK.Algebra.LinearAlgebra.MatrixFiberHilbertTransportCertificate.Variant51ef47cd2e4ab988f4731e788ee86de999c5d6c7ce039cf519dad49f486f18cb

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
