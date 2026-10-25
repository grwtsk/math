# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lintunused.Variant2fb48f25f0cdc96f562daf2ac99896f26a70608ea91a1cd5315dac21d30326af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85ca3cf200dca2b80ecebcc06ed3408534b39d1f` · SHA-256 `1358d14c5f43c4426822c49d32a9e409dc6fa8b08d0d0d2be5dd6fb4086455a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant9822437db7d059a8a3ea71bd2eed913a2d107f16bddcf1f90b024ec3bf137fd2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9822437db7d059a8a3ea71bd2eed913a2d107f16bddcf1f90b024ec3bf137fd2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Foo.Variant9822437db7d059a8a3ea71bd2eed913a2d107f16bddcf1f90b024ec3bf137fd2","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9822437db7d059a8a3ea71bd2eed913a2d107f16bddcf1f90b024ec3bf137fd2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/lintunused.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.Lint

-- should be ignored as the proof contains sorry

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant9822437db7d059a8a3ea71bd2eed913a2d107f16bddcf1f90b024ec3bf137fd2

theorem Foo (h : 1 = 1) : True :=
  sorry

#lint- only unusedArguments
```
