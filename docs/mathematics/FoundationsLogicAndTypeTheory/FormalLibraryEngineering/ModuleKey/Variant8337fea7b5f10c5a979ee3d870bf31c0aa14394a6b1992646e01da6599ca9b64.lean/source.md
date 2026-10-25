# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModuleKey.Variant8337fea7b5f10c5a979ee3d870bf31c0aa14394a6b1992646e01da6599ca9b64

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a313dd3719f54cd4b132de99cea6198a78f79cd` · SHA-256 `132517667901263d16d726c7780f76c316b773bbfb091b2c851a7327b6505d6c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModuleKey.Variant25401ae486f954d1c647c5b5e5cd7f6e0738d58992b67cd920a7b2efabf98257","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25401ae486f954d1c647c5b5e5cd7f6e0738d58992b67cd920a7b2efabf98257","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ModuleKey.Variant25401ae486f954d1c647c5b5e5cd7f6e0738d58992b67cd920a7b2efabf98257","mathematical_subject":"Foundations.Unclassified","original_sha256":"25401ae486f954d1c647c5b5e5cd7f6e0738d58992b67cd920a7b2efabf98257","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Incremental/ModuleKey.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModuleKey.Variant25401ae486f954d1c647c5b5e5cd7f6e0738d58992b67cd920a7b2efabf98257

namespace Surface
namespace Incremental

structure ModuleKey where
  moduleName : String
  file : String
deriving Repr, DecidableEq

def ModuleKey.lexicalKey
    (M : ModuleKey) : String :=
  M.moduleName ++ "\n" ++ M.file

theorem moduleKey_lexicalKey_deterministic
    (M : ModuleKey) :
    M.lexicalKey = M.lexicalKey :=
  rfl

end Incremental
end Surface
```
