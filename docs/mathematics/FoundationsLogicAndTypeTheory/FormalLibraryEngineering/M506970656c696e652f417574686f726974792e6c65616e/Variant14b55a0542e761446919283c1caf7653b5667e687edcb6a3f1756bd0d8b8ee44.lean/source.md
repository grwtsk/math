# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f417574686f726974792e6c65616e.Variant14b55a0542e761446919283c1caf7653b5667e687edcb6a3f1756bd0d8b8ee44

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2608739beb34914531e04cd2c9e5d10dec04f40` · SHA-256 `c7cb391120dc98b3e8b943f678dafae7007b4c08d6952741d5830cbda10c2386`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityClass.Variantc4408c658d4fefd676c18079ae5d960920c8692eb084047b2f56be881cbbbe44","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c4408c658d4fefd676c18079ae5d960920c8692eb084047b2f56be881cbbbe44","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AuthorityClass.Variantc4408c658d4fefd676c18079ae5d960920c8692eb084047b2f56be881cbbbe44","mathematical_subject":"Foundations.Unclassified","original_sha256":"c4408c658d4fefd676c18079ae5d960920c8692eb084047b2f56be881cbbbe44","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit0/Bit1/Bit0/Bit0/Bit1/Bit1/Bit1/M506970656c696e652f417574686f726974792e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit1.Bit1.M506970656c696e652f41727469666163742e6c65616e


/- source-tree-label: STL1|L|addr=010100111|role=proof_code_atom|slug=pipeline-authority|owner=canonical_owner|core=Pipeline/Authority.lean|leaf=M506970656c696e652f417574686f726974792e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityClass.Variantc4408c658d4fefd676c18079ae5d960920c8692eb084047b2f56be881cbbbe44

set_option autoImplicit false

namespace Think.Pipeline

inductive AuthorityClass where
  | finite
  | external
  | conjectural
  | refused
deriving DecidableEq, Repr

structure AuthorityLabel where
  phase : Think.PhaseId
  authority : AuthorityClass

end Think.Pipeline
```
