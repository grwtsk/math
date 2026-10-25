# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Basic.Variante58e900325f0c124da02e6ab4fb77634f59835fca482076d00156b7ae9194caf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `454cec1072af6fd3a05b41eafd027ec6bf59049f` · SHA-256 `8ec128a9b24554b77a8b29b40c049e0d856a4fd9f598b56461dd17973d865edd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.CoeNatDvd.Variant94cefdcc09144167708f047c22d0eb7cb3a5657035f1945241f247151b53dfc8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94cefdcc09144167708f047c22d0eb7cb3a5657035f1945241f247151b53dfc8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.CoeNatDvd.Variant94cefdcc09144167708f047c22d0eb7cb3a5657035f1945241f247151b53dfc8","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"94cefdcc09144167708f047c22d0eb7cb3a5657035f1945241f247151b53dfc8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Int/Dvd/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
import Mathlib.Data.Int.Order.Basic
import Mathlib.Data.Nat.Cast.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.CoeNatDvd.Variant94cefdcc09144167708f047c22d0eb7cb3a5657035f1945241f247151b53dfc8

#align_import data.int.dvd.basic from "leanprover-community/mathlib"@"e8638a0fcaf73e4500469f368ef9494e495099b3"

/-!
# Basic lemmas about the divisibility relation in `ℤ`.
-/


open Nat

namespace Int

@[norm_cast]
theorem coe_nat_dvd {m n : ℕ} : (↑m : ℤ) ∣ ↑n ↔ m ∣ n :=
  ⟨fun ⟨a, ae⟩ =>
    m.eq_zero_or_pos.elim (fun m0 => by simp [m0] at ae; simp [ae, m0]) fun m0l => by
      cases'
        eq_ofNat_of_zero_le
          (@nonneg_of_mul_nonneg_right ℤ _ m a (by simp [ae.symm]) (by simpa using m0l)) with
        k e
      subst a
      exact ⟨k, Int.ofNat.inj ae⟩,
    fun ⟨k, e⟩ => Dvd.intro k <| by rw [e, Int.ofNat_mul]⟩
#align int.coe_nat_dvd Int.coe_nat_dvd

theorem coe_nat_dvd_left {n : ℕ} {z : ℤ} : (↑n : ℤ) ∣ z ↔ n ∣ z.natAbs := by
  rcases natAbs_eq z with (eq | eq) <;> rw [eq] <;> simp [←coe_nat_dvd]
#align int.coe_nat_dvd_left Int.coe_nat_dvd_left

theorem coe_nat_dvd_right {n : ℕ} {z : ℤ} : z ∣ (↑n : ℤ) ↔ z.natAbs ∣ n := by
  rcases natAbs_eq z with (eq | eq) <;> rw [eq] <;> simp [←coe_nat_dvd]
#align int.coe_nat_dvd_right Int.coe_nat_dvd_right

#align int.le_of_dvd Int.le_of_dvd

#align int.eq_one_of_dvd_one Int.eq_one_of_dvd_one

#align int.eq_one_of_mul_eq_one_right Int.eq_one_of_mul_eq_one_right

#align int.eq_one_of_mul_eq_one_left Int.eq_one_of_mul_eq_one_left

#align int.dvd_antisymm Int.dvd_antisymm

end Int
```
