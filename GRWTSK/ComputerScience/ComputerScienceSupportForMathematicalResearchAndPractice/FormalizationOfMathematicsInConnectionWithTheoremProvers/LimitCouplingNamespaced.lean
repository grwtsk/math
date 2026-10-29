-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompatibleLimitCoupling.Variantee0d5f609a511804ac8c42201545f89b4da123a11841f6a71097d5fe9e72b568","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee0d5f609a511804ac8c42201545f89b4da123a11841f6a71097d5fe9e72b568","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CompatibleLimitCoupling.Variantee0d5f609a511804ac8c42201545f89b4da123a11841f6a71097d5fe9e72b568","mathematical_subject":"Foundations.Unclassified","original_sha256":"ee0d5f609a511804ac8c42201545f89b4da123a11841f6a71097d5fe9e72b568","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Boundary/LimitCoupling.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Compatible coupling construction

Finite marginal contraction does not construct this certificate.  Either this
coupling object or a separate direct construction is required.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompatibleLimitCoupling.Variantee0d5f609a511804ac8c42201545f89b4da123a11841f6a71097d5fe9e72b568

namespace Mathematics.StratifiedBoundary

structure CompatibleLimitCoupling
    (FiniteKernel LimitKernel : Type u) where
  finiteKernel : Nat → FiniteKernel
  projectivelyCompatible : Prop
  compatibilityProof : projectivelyCompatible
  limitKernel : LimitKernel
  constructionValid : Prop
  constructionProof : constructionValid
  compatibilityProofRef : String
  limitKernelConstructionRef : String

theorem compatible_couplings_construct_limit_kernel
    {FiniteKernel LimitKernel : Type u}
    (certificate :
      CompatibleLimitCoupling FiniteKernel LimitKernel) :
    ∃ kernel : LimitKernel,
      kernel = certificate.limitKernel ∧
        certificate.constructionValid :=
  ⟨certificate.limitKernel, rfl, certificate.constructionProof⟩

end Mathematics.StratifiedBoundary
