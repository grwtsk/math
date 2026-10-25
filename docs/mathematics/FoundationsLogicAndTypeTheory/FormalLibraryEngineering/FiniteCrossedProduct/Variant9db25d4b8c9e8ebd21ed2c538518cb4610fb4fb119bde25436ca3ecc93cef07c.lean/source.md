# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteCrossedProduct.Variant9db25d4b8c9e8ebd21ed2c538518cb4610fb4fb119bde25436ca3ecc93cef07c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff751f5b79811a4f542d2f27d47fa7d852a45878` · SHA-256 `b0cbeb3698569578160c18f8adce86170f4b80c2a8d2e37f2e8ba395c909b72e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
