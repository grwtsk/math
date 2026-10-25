# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InvariantLaw.Variantcf27b13514c94328ebe52139968aa60e0fba887228a1fab905ba30e26e826129

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24d6f34184482021e345277bbed64edd40fc531b` · SHA-256 `6c0b0fa40e76b549cc1de90d7a223c53f082bea66fd0428b081415864dbc03e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InvariantLaw.Variantf5219a8bd6a4df5eaa9ef4215920fd9fd0718754aeb911df00b96bc75aee6aa3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f5219a8bd6a4df5eaa9ef4215920fd9fd0718754aeb911df00b96bc75aee6aa3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.InvariantLaw.Variantf5219a8bd6a4df5eaa9ef4215920fd9fd0718754aeb911df00b96bc75aee6aa3","mathematical_subject":"Foundations.Unclassified","original_sha256":"f5219a8bd6a4df5eaa9ef4215920fd9fd0718754aeb911df00b96bc75aee6aa3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Sampling/InvariantLaw.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Registered invariant-law observation surface
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InvariantLaw.Variantf5219a8bd6a4df5eaa9ef4215920fd9fd0718754aeb911df00b96bc75aee6aa3

namespace Mathematics.GraphAccess

structure InvariantLaw (State Observable : Type u) where
  lawRef : String
  observableValue : Observable → State → Int
  canonicalTrace : Observable → Int

end Mathematics.GraphAccess
```
