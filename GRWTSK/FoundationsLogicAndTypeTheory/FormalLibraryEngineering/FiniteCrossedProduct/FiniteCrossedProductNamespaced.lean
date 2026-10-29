-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteCrossedProduct.Variantb66a2f0c5110c1151c390e072e5d409ad288305ebf12027eb3e4cd5a1362d1d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b66a2f0c5110c1151c390e072e5d409ad288305ebf12027eb3e4cd5a1362d1d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FiniteCrossedProduct.Variantb66a2f0c5110c1151c390e072e5d409ad288305ebf12027eb3e4cd5a1362d1d9","mathematical_subject":"Foundations.Unclassified","original_sha256":"b66a2f0c5110c1151c390e072e5d409ad288305ebf12027eb3e4cd5a1362d1d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Trace/FiniteCrossedProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Finite crossed-product interface

The algebra and identity coefficient are inputs.  This module does not infer
an arithmetic interpretation from an operator-algebra record.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteCrossedProduct.Variantb66a2f0c5110c1151c390e072e5d409ad288305ebf12027eb3e4cd5a1362d1d9

namespace Mathematics.StratifiedBoundary

structure FiniteCrossedProduct
    (Observable Coefficient GroupElement : Type u) where
  identityElement : GroupElement
  identityCoefficient : Observable → Coefficient
  matrixRepresentationRef : String
  groupActionRef : String
  normalizationRef : String

end Mathematics.StratifiedBoundary
