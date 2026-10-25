# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant3b380dd29c8d5d13f08bdb6572f1153dac4d9f950c61ae69e09f46deb05348b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35e853d8d763cb6a5c9f5cff5ecb09a02238b5fa` · SHA-256 `fc2a9d0ffcb7be201034697b95d4078194d51438a3b614ebf324650f3616faca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NextPowerOfTwoDec.Variantfa0c4c278697ada647480fdf656f8b57a6605a9d4c687a03859f1f783ac1ca18","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fa0c4c278697ada647480fdf656f8b57a6605a9d4c687a03859f1f783ac1ca18","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.NextPowerOfTwoDec.Variantfa0c4c278697ada647480fdf656f8b57a6605a9d4c687a03859f1f783ac1ca18","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"fa0c4c278697ada647480fdf656f8b57a6605a9d4c687a03859f1f783ac1ca18","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Nat/Power2/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Grind.Tactics
import Init.Data.Nat.Internal.Linear
import Init.NotationExtra
import Init.WFTactics


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NextPowerOfTwoDec.Variantfa0c4c278697ada647480fdf656f8b57a6605a9d4c687a03859f1f783ac1ca18

public section

namespace Nat

theorem nextPowerOfTwo_dec {n power : Nat} (h₁ : power > 0) (h₂ : power < n) : n - power * 2 < n - power := by
  have : power * 2 = power + power := by simp +arith
  rw [this, Nat.sub_add_eq]
  exact Nat.sub_lt (Nat.zero_lt_sub_of_lt h₂) h₁

/--
Returns the least power of two that's greater than or equal to `n`.

Examples:
 * `Nat.nextPowerOfTwo 0 = 1`
 * `Nat.nextPowerOfTwo 1 = 1`
 * `Nat.nextPowerOfTwo 2 = 2`
 * `Nat.nextPowerOfTwo 3 = 4`
 * `Nat.nextPowerOfTwo 5 = 8`
-/
def nextPowerOfTwo (n : Nat) : Nat :=
  go 1 (by decide)
where
  go (power : Nat) (h : power > 0) : Nat :=
    if power < n then
      go (power * 2) (Nat.mul_pos h (by decide))
    else
      power
  termination_by n - power
  decreasing_by simp_wf; apply nextPowerOfTwo_dec <;> assumption

/--
A natural number `n` is a power of two if there exists some `k : Nat` such that `n = 2 ^ k`.
-/
def isPowerOfTwo (n : Nat) := ∃ k, n = 2 ^ k

theorem isPowerOfTwo_one : isPowerOfTwo 1 :=
  ⟨0, by decide⟩

theorem isPowerOfTwo_mul_two_of_isPowerOfTwo (h : isPowerOfTwo n) : isPowerOfTwo (n * 2) :=
  have ⟨k, h⟩ := h
  ⟨k+1, by simp [h, Nat.pow_succ]⟩

theorem pos_of_isPowerOfTwo (h : isPowerOfTwo n) : n > 0 := by
  have ⟨k, h⟩ := h
  rw [h]
  apply Nat.pow_pos
  decide

theorem isPowerOfTwo_nextPowerOfTwo (n : Nat) : n.nextPowerOfTwo.isPowerOfTwo := by
  apply isPowerOfTwo_go
  apply isPowerOfTwo_one
where
  isPowerOfTwo_go (power : Nat) (h₁ : power > 0) (h₂ : power.isPowerOfTwo) : (nextPowerOfTwo.go n power h₁).isPowerOfTwo := by
    unfold nextPowerOfTwo.go
    split
    . exact isPowerOfTwo_go (power*2) (Nat.mul_pos h₁ (by decide)) (Nat.isPowerOfTwo_mul_two_of_isPowerOfTwo h₂)
    . assumption
  termination_by n - power
  decreasing_by simp_wf; apply nextPowerOfTwo_dec <;> assumption

end Nat
```
