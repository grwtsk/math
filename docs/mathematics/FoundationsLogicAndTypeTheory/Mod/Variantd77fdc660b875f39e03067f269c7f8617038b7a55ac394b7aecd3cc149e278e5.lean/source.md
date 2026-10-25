# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Mod.Variantd77fdc660b875f39e03067f269c7f8617038b7a55ac394b7aecd3cc149e278e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2682d8714beaa105c864e2f99dceda0a86acc26f` · SHA-256 `bb87a5a6506f6889c9c9e73e8a1911c5c5493a285972641a6fc0bcebe233c6a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ModEq.Variant25ba4586721080825adde9cb554cd213f04608f5e37ebe673ad876d53d4397aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25ba4586721080825adde9cb554cd213f04608f5e37ebe673ad876d53d4397aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ModEq.Variant25ba4586721080825adde9cb554cd213f04608f5e37ebe673ad876d53d4397aa","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"25ba4586721080825adde9cb554cd213f04608f5e37ebe673ad876d53d4397aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/GCongr/mod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Heather Macbeth
-/
import Mathlib.Data.Int.ModEq

/-! # Modular arithmetic tests for the `gcongr` tactic -/

namespace GRWTSK.FoundationsLogicAndTypeTheory.ModEq.Variant25ba4586721080825adde9cb554cd213f04608f5e37ebe673ad876d53d4397aa

set_option autoImplicit true

example (ha : a ≡ 2 [ZMOD 4]) : a * b ^ 2 + a ^ 2 * b + 3 ≡ 2 * b ^ 2 + 2 ^ 2 * b + 3 [ZMOD 4] := by
  gcongr

example (ha : a ≡ 4 [ZMOD 5]) (hb : b ≡ 3 [ZMOD 5]) :
    a * b + b ^ 3 + 3 ≡ 4 * 3 + 3 ^ 3 + 3 [ZMOD 5] := by
  gcongr

example (hb : 3 ≡ b [ZMOD 5]) : b ^ 2 ≡ 3 ^ 2 [ZMOD 5] := by gcongr
example (hb : 3 ≡ b [ZMOD 5]) : b ^ 2 ≡ 3 ^ 2 [ZMOD 5] := by rel [hb]

example (hx : x ≡ 0 [ZMOD 3]) : x ^ 3 ≡ 0 ^ 3 [ZMOD 3] := by gcongr

example (hx : x ≡ 2 [ZMOD 3]) : x ^ 3 ≡ 2 ^ 3 [ZMOD 3] := by gcongr

example (hn : n ≡ 1 [ZMOD 3]) : n ^ 3 + 7 * n ≡ 1 ^ 3 + 7 * 1 [ZMOD 3] := by gcongr
example (hn : n ≡ 1 [ZMOD 3]) : n ^ 3 + 7 * n ≡ 1 ^ 3 + 7 * 1 [ZMOD 3] := by rel [hn]

example (hn : n ≡ 1 [ZMOD 2]) : 5 * n ^ 2 + 3 * n + 7 ≡ 5 * 1 ^ 2 + 3 * 1 + 7 [ZMOD 2] := by
  gcongr

example (hx : x ≡ 3 [ZMOD 5]) : x ^ 5 ≡ 3 ^ 5 [ZMOD 5] := by gcongr
```
