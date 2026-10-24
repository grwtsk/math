# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.KmpMatcher.Variant721bc82f6f45937d35ca8e3207c1ef553bf93dd07003a1f399bea9516ad91fb9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0db4a78eefe497786deb019e7d1962e25f594123` · SHA-256 `9c5e39d735b12bc79a6c0faf1b8b8582a52b8160e307ee8ba06637b0faf0cd28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M.Variant082c7834aa59ebdbe9d6949e69d33a8eed266a2d03e756c688ce58108eec8396","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"082c7834aa59ebdbe9d6949e69d33a8eed266a2d03e756c688ce58108eec8396","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.M.Variant082c7834aa59ebdbe9d6949e69d33a8eed266a2d03e756c688ce58108eec8396","mathematical_subject":"Computation.DataStructures","original_sha256":"082c7834aa59ebdbe9d6949e69d33a8eed266a2d03e756c688ce58108eec8396","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/kmp_matcher.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.GuardMsgs
import Std.Data.String.Basic

/-! Tests for Knuth-Morris-Pratt matching algorithm -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M.Variant082c7834aa59ebdbe9d6949e69d33a8eed266a2d03e756c688ce58108eec8396

/-- Matcher for pattern "abba" -/
def m := String.Matcher.ofString "abba"

#guard ! Option.isSome (m.find? "AbbabbA")

#guard Option.isSome (m.find? "aabbaa")

#guard Array.size (m.findAll "abbabba") = 2

#guard Array.size (m.findAll "abbabbabba") = 3

#guard Option.isSome ("xyyxx".findSubstr? "xy")

#guard ! Option.isSome ("xyyxx".findSubstr? "xyx")

#guard Array.size ("xyyxx".findAllSubstr "xyx") = 0

#guard Array.size ("xyyxxyx".findAllSubstr "xyx") = 1

#guard Array.size ("xyxyyxxyx".findAllSubstr "xyx") = 2

#guard Array.size ("xyxyxyyxxyxyx".findAllSubstr "xyx") = 4
```
