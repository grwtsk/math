# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintDupNamespace.Variantbf35123b81122093aeec7e59a4b62719b80348d3e794ba15aac6eadc39d7d5a9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `279890e3270a7d23fb6bf59dcab600bfec4d3da8` · SHA-256 `625f9e892840a43dbfcc3ace4e6c3568e314172e990fee5d4252ca9aa5935746`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FooFooBar.Variantb0cdd870790f692df205879367b69751565b86c4489236148c9c4c3f49d32498","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0cdd870790f692df205879367b69751565b86c4489236148c9c4c3f49d32498","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.FooFooBar.Variantb0cdd870790f692df205879367b69751565b86c4489236148c9c4c3f49d32498","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b0cdd870790f692df205879367b69751565b86c4489236148c9c4c3f49d32498","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/lint_dupNamespace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.Lint

-- internal names should be ignored

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FooFooBar.Variantb0cdd870790f692df205879367b69751565b86c4489236148c9c4c3f49d32498

theorem Foo.Foo._bar : True := trivial

#lint- only dupNamespace
```
