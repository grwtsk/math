# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DummyLabelAttr.Variant77a76d92fcf49df672985778835798f718572e04818471c55fa753f8287df3d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `872ff0e41ae6b3a4df188aabcfba9afeeb7e0cf4` · SHA-256 `07fdd606bf924a0f3504e121c04dfc0c292c06b114799b5f5e47129ce935ba79`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LabelAttr.Varianta38ceed59308b6ff8d4eeb16f09f079a4584da207b24692f01af84a31b3f31c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a38ceed59308b6ff8d4eeb16f09f079a4584da207b24692f01af84a31b3f31c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.LabelAttr.Varianta38ceed59308b6ff8d4eeb16f09f079a4584da207b24692f01af84a31b3f31c3","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a38ceed59308b6ff8d4eeb16f09f079a4584da207b24692f01af84a31b3f31c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Test/Internal/DummyLabelAttr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.LabelAttr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LabelAttr.Varianta38ceed59308b6ff8d4eeb16f09f079a4584da207b24692f01af84a31b3f31c3

/-- A dummy label attribute, which can be used for testing. -/
-- This can't live in `Std.Tactic.LabelAttr`
-- (because we can't use the extension in the same file it is initialized)
-- and it can't live in `test/`, because files there can not import other files in `test/`.
register_label_attr dummy_label_attr
```
