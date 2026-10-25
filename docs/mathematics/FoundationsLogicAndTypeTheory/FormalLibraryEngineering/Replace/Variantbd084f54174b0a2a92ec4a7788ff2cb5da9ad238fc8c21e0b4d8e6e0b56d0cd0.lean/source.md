# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Replace.Variantbd084f54174b0a2a92ec4a7788ff2cb5da9ad238fc8c21e0b4d8e6e0b56d0cd0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67df260f36e93743ce76800274ee2074056d197c` · SHA-256 `2cebe1d5664c7bf17ecddc504b9c3a0b38684b1ac4e1174638b8e1b9ff298060`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Replace.Variantdcee3f185b783bff2d871f085237e3775dc34a5e16255e753e3ac7370f96da93","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dcee3f185b783bff2d871f085237e3775dc34a5e16255e753e3ac7370f96da93","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Replace.Variantdcee3f185b783bff2d871f085237e3775dc34a5e16255e753e3ac7370f96da93","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"dcee3f185b783bff2d871f085237e3775dc34a5e16255e753e3ac7370f96da93","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/replace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Arthur Paulino. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino
-/
import Std.Tactic.Replace


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Replace.Variantdcee3f185b783bff2d871f085237e3775dc34a5e16255e753e3ac7370f96da93

set_option linter.unusedVariables false

-- tests with an explicitly named hypothesis

example (h : Int) : Nat := by
  replace h : Nat := 0
  exact h

example (h : Nat) : Nat := by
  have h : Int := 0
  assumption -- original `h` is not absent but...

example (h : Nat) : Nat := by
  replace h : Int := 0
  fail_if_success assumption -- original `h` is absent now
  replace h : Nat := 0
  exact h

-- tests with `this`

example : Nat := by
  have : Int := 0
  replace : Nat := 0
  assumption

example : Nat := by
  have : Nat := 0
  have : Int := 0
  assumption -- original `this` is not absent but...

example : Nat := by
  have : Nat := 0
  replace : Int := 0
  fail_if_success assumption -- original `this` is absent now
  replace : Nat := 0
  assumption

-- trying to replace the type of a variable when the goal depends on it

example {a : Nat} : a = a := by
  replace a : Int := 0
  have : Nat := by assumption -- old `a` is not gone
  have : Int := by exact a    -- new `a` is of type `Int`
  simp
```
