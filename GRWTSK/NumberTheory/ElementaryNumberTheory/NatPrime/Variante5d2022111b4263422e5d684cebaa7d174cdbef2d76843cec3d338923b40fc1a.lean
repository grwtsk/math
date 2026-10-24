-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.NotPrimeOfIntMul.Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.NotPrimeOfIntMul.Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Int/NatPrime.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Bryan Gin-ge Chen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Lacker, Bryan Gin-ge Chen
-/
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Algebra.Group.Int.Defs
import Mathlib.Data.Int.Basic

/-!
# Lemmas about `Nat.Prime` using `Int`s
-/



namespace GRWTSK.NumberTheory.ElementaryNumberTheory.NotPrimeOfIntMul.Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7

open Nat

namespace Int

theorem not_prime_of_int_mul {a b : ℤ} {c : ℕ} (ha : a.natAbs ≠ 1) (hb : b.natAbs ≠ 1)
    (hc : a * b = (c : ℤ)) : ¬Nat.Prime c :=
  not_prime_mul' (natAbs_mul_natAbs_eq hc) ha hb

theorem succ_dvd_or_succ_dvd_of_succ_sum_dvd_mul {p : ℕ} (p_prime : Nat.Prime p) {m n : ℤ}
    {k l : ℕ} (hpm : ↑(p ^ k) ∣ m) (hpn : ↑(p ^ l) ∣ n) (hpmn : ↑(p ^ (k + l + 1)) ∣ m * n) :
    ↑(p ^ (k + 1)) ∣ m ∨ ↑(p ^ (l + 1)) ∣ n :=
  have hpm' : p ^ k ∣ m.natAbs := Int.natCast_dvd_natCast.1 <| Int.dvd_natAbs.2 hpm
  have hpn' : p ^ l ∣ n.natAbs := Int.natCast_dvd_natCast.1 <| Int.dvd_natAbs.2 hpn
  have hpmn' : p ^ (k + l + 1) ∣ m.natAbs * n.natAbs := by
    rw [← Int.natAbs_mul]; apply Int.natCast_dvd_natCast.1 <| Int.dvd_natAbs.2 hpmn
  let hsd := Nat.succ_dvd_or_succ_dvd_of_succ_sum_dvd_mul p_prime hpm' hpn' hpmn'
  hsd.elim (fun hsd1 => Or.inl (by apply Int.dvd_natAbs.1; apply Int.natCast_dvd_natCast.2 hsd1))
    fun hsd2 => Or.inr (by apply Int.dvd_natAbs.1; apply Int.natCast_dvd_natCast.2 hsd2)

theorem Prime.dvd_natAbs_of_coe_dvd_sq {p : ℕ} (hp : p.Prime) (k : ℤ) (h : (p : ℤ) ∣ k ^ 2) :
    p ∣ k.natAbs := by
  apply @Nat.Prime.dvd_of_dvd_pow _ _ 2 hp
  rwa [sq, ← natAbs_mul, ← natCast_dvd, ← sq]

end Int
