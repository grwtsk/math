# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToAdditive.Variantb718fa01d85e8b1e50c3728ed1ad75f9a16a3d5438d448257adb247a89defe39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `542856cde65d9ee81698813e41b7ad69a3a673df` · SHA-256 `e7dfd4106ccf173980cbeb002e9adcc59678b0b0f941411d536c3ff4aa1e2888`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Variantc8eb34996949306a2a75e7d4d8ba97f3bf633ed4393e4e24f6a1669cd905f84c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c8eb34996949306a2a75e7d4d8ba97f3bf633ed4393e4e24f6a1669cd905f84c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Frontend.Variantc8eb34996949306a2a75e7d4d8ba97f3bf633ed4393e4e24f6a1669cd905f84c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c8eb34996949306a2a75e7d4d8ba97f3bf633ed4393e4e24f6a1669cd905f84c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/ToAdditive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Miyahara Kō. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Miyahara Kō
-/
import Mathlib.Tactic.ToAdditive.Frontend

/-!
## `@[to_additive]` attributes for basic types
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Variantc8eb34996949306a2a75e7d4d8ba97f3bf633ed4393e4e24f6a1669cd905f84c

attribute [to_additive Empty] Empty
attribute [to_additive PEmpty] PEmpty
attribute [to_additive PUnit] PUnit
attribute [to_additive existing Unit] Unit

attribute [to_additive_change_numeral 2] OfNat OfNat.ofNat

attribute [to_additive] One
attribute [to_additive existing Zero.toOfNat0] One.toOfNat1
attribute [to_additive existing Zero.ofOfNat0] One.ofOfNat1
```
