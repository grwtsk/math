# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pow.Variant655287f1afc711907ef4ee460f490ce0f8bb80679811d0827291faec5b6cd5f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6c5358308b373d3d39bcdc0b094449932beeba2` · SHA-256 `45af241dd221089bc5ec4908bbeb778a1fa5130c335773c09587575b6cd942ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DvdPow.Variant1411dd7db7be2014558b61c145bb28ee832cc2bbffd9bdd093921f1310f35f8d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1411dd7db7be2014558b61c145bb28ee832cc2bbffd9bdd093921f1310f35f8d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DvdPow.Variant1411dd7db7be2014558b61c145bb28ee832cc2bbffd9bdd093921f1310f35f8d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1411dd7db7be2014558b61c145bb28ee832cc2bbffd9bdd093921f1310f35f8d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Int/DivMod/Pow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module
prelude
import Init.ByCases
import Init.Data.Int.DivMod.Bootstrap
import Init.Data.Int.DivMod.Lemmas
import Init.Data.Int.Lemmas
import Init.Data.Int.Pow
import Init.RCases

/-!
# Lemmas about divisibility of powers
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DvdPow.Variant1411dd7db7be2014558b61c145bb28ee832cc2bbffd9bdd093921f1310f35f8d

namespace Int

theorem dvd_pow {a b : Int} {n : Nat} (hab : b ∣ a) : b ^ n ∣ a ^ n := by
  rcases hab with ⟨c, rfl⟩
  rw [Int.mul_pow]
  exact Int.dvd_mul_right (b ^ n) (c ^ n)

theorem ediv_pow {a b : Int} {n : Nat} (hab : b ∣ a) :
    (a / b) ^ n = a ^ n / b ^ n := by
  obtain ⟨c, rfl⟩ := hab
  by_cases b = 0
  · by_cases n = 0 <;> simp [*, Int.zero_pow]
  · simp [Int.mul_pow, Int.pow_ne_zero, *]

theorem tdiv_pow {a b : Int} {n : Nat} (hab : b ∣ a) :
    (a.tdiv b) ^ n = (a ^ n).tdiv (b ^ n) := by
  rw [Int.tdiv_eq_ediv_of_dvd hab, ediv_pow hab, Int.tdiv_eq_ediv_of_dvd (dvd_pow hab)]

theorem fdiv_pow {a b : Int} {n : Nat} (hab : b ∣ a) :
    (a.fdiv b) ^ n = (a ^ n).fdiv (b ^ n) := by
  rw [Int.fdiv_eq_ediv_of_dvd hab, ediv_pow hab, Int.fdiv_eq_ediv_of_dvd (dvd_pow hab)]
```
