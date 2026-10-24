-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitKernelSource.Variantb83599df867602a29b84f859c8cb27ad7f1a5ba1ec849bd6e5cab4de595ed281","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b83599df867602a29b84f859c8cb27ad7f1a5ba1ec849bd6e5cab4de595ed281","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LimitKernelSource.Variantb83599df867602a29b84f859c8cb27ad7f1a5ba1ec849bd6e5cab4de595ed281","mathematical_subject":"Foundations.Unclassified","original_sha256":"b83599df867602a29b84f859c8cb27ad7f1a5ba1ec849bd6e5cab4de595ed281","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Boundary/LimitKernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Boundary.LimitCoupling

/-!
# Direct-or-coupling limit kernel
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitKernelSource.Variantb83599df867602a29b84f859c8cb27ad7f1a5ba1ec849bd6e5cab4de595ed281

namespace Mathematics.StratifiedBoundary

inductive LimitKernelSource
  | directConstruction
  | compatibleCouplings
deriving DecidableEq, Repr

structure ContractiveProjectiveLimitKernel
    (Kernel Measure : Type u) where
  source : LimitKernelSource
  sourceCertificateRef : String
  kernel : Kernel
  applyKernel : Kernel → Measure → Measure
  distance : Measure → Measure → Nat
  contractionNumerator : Nat
  contractionDenominator : Nat
  contractionStrict :
    contractionNumerator < contractionDenominator
  contractive :
    ∀ left right,
      contractionDenominator *
          distance
            (applyKernel kernel left)
            (applyKernel kernel right) ≤
        contractionNumerator * distance left right

theorem projective_limit_kernel_contractive
    {Kernel Measure : Type u}
    (certificate :
      ContractiveProjectiveLimitKernel Kernel Measure)
    (left right : Measure) :
    certificate.contractionDenominator *
        certificate.distance
          (certificate.applyKernel certificate.kernel left)
          (certificate.applyKernel certificate.kernel right) ≤
      certificate.contractionNumerator *
        certificate.distance left right :=
  certificate.contractive left right

end Mathematics.StratifiedBoundary
