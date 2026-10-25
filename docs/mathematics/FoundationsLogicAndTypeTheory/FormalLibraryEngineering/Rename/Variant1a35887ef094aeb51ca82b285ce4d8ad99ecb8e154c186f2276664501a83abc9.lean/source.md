# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rename.Variant1a35887ef094aeb51ca82b285ce4d8ad99ecb8e154c186f2276664501a83abc9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f03b7dc01ed0aceff6d5cc7d3ce8a7e4e590120` · SHA-256 `f18f7e728fd1f81c9a938923f4f02bd4073536acc4d6800daddddf907e497df8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rename.Variantf73bf0a4995cc892d4f4eabc84fdbce7ee663753199486d7fb63ab5091434ced","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f73bf0a4995cc892d4f4eabc84fdbce7ee663753199486d7fb63ab5091434ced","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Rename.Variantf73bf0a4995cc892d4f4eabc84fdbce7ee663753199486d7fb63ab5091434ced","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f73bf0a4995cc892d4f4eabc84fdbce7ee663753199486d7fb63ab5091434ced","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Rename.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Rename


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rename.Variantf73bf0a4995cc892d4f4eabc84fdbce7ee663753199486d7fb63ab5091434ced

example (a : Nat) (b : Int) : Int × Nat := by
  rename' a => c, b => d
  exact (d, c)

example (a : Nat) (b : Int) : Int × Nat := by
  rename' a => b, b => a
  exact (a, b)
```
