-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NotIsPowerOfTwoZero.Variant6b95eadf29b87f71c358ec14b8fecf814d81c582a2e0082f1bbe18d6cfd178b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b95eadf29b87f71c358ec14b8fecf814d81c582a2e0082f1bbe18d6cfd178b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.NotIsPowerOfTwoZero.Variant6b95eadf29b87f71c358ec14b8fecf814d81c582a2e0082f1bbe18d6cfd178b9","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"6b95eadf29b87f71c358ec14b8fecf814d81c582a2e0082f1bbe18d6cfd178b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Nat/Power2/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) George Rennie. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: George Rennie
-/
module

prelude
import all Init.Data.Nat.Power2.Basic
public import Init.Data.Nat.Log2
public import Init.Data.Nat.Power2.Basic
public import Init.PropLemmas
import Init.ByCases
import Init.Data.Int.Pow
import Init.Data.Nat.Bitwise.Lemmas
import Init.Data.Nat.Lemmas
import Init.Omega
import Init.RCases


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NotIsPowerOfTwoZero.Variant6b95eadf29b87f71c358ec14b8fecf814d81c582a2e0082f1bbe18d6cfd178b9

public section

/-!
# Further lemmas about `Nat.isPowerOfTwo`, with the convenience of having bitwise lemmas available.
-/

namespace Nat

theorem not_isPowerOfTwo_zero : ¬isPowerOfTwo 0 := by
  rw [isPowerOfTwo, not_exists]
  intro x
  have := one_le_pow x 2 (by decide)
  omega

theorem and_sub_one_testBit_log2 {n : Nat} (h : n ≠ 0) (hpow2 : ¬n.isPowerOfTwo) :
    (n &&& (n - 1)).testBit n.log2 := by
  rw [testBit_and, Bool.and_eq_true]
  constructor
  · exact testBit_log2 (by omega)
  · by_cases n = 2^n.log2
    · rw [isPowerOfTwo, not_exists] at hpow2
      have := hpow2 n.log2
      trivial
    · have := log2_eq_iff (n := n) (k := n.log2) (by omega)
      have : (n - 1).log2 = n.log2 := by rw [log2_eq_iff] <;> omega
      rw [←this]
      exact testBit_log2 (by omega)

theorem and_sub_one_eq_zero_iff_isPowerOfTwo {n : Nat} (h : n ≠ 0) :
    (n &&& (n - 1)) = 0 ↔ n.isPowerOfTwo := by
  constructor
  · intro hbitwise
    false_or_by_contra
    rename_i hpow2
    have := and_sub_one_testBit_log2 h hpow2
    rwa [hbitwise, zero_testBit n.log2, Bool.false_eq_true] at this
  · intro hpow2
    rcases hpow2 with ⟨_, hpow2⟩
    rw [hpow2, and_two_pow_sub_one_eq_mod, mod_self]

theorem ne_zero_and_sub_one_eq_zero_iff_isPowerOfTwo {n : Nat} :
    ((n ≠ 0) ∧ (n &&& (n - 1)) = 0) ↔ n.isPowerOfTwo := by
  match h : n with
  | 0 => simp [not_isPowerOfTwo_zero]
  | n + 1 => simp; exact and_sub_one_eq_zero_iff_isPowerOfTwo (by omega)

@[inline]
instance {n : Nat} : Decidable n.isPowerOfTwo :=
  decidable_of_iff _ ne_zero_and_sub_one_eq_zero_iff_isPowerOfTwo

end Nat
