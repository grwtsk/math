# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Dvd.Variantcf2c145e3971d25c8891dea5fa2fbe6aefd5cb2966e7db2189b9e636cc23f6d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e3bd53638859abef6f31fef8fbc10b581bce80a` · SHA-256 `d040166a07842b7d876c0e1fd355bb922cdaffc2944fa33edd85fcf7faec62c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.DvdChooseAdd.Variantd447665a72234f4b3445a3cfe132e6abd80ee0e68520e5bcc4e011585a0c78a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d447665a72234f4b3445a3cfe132e6abd80ee0e68520e5bcc4e011585a0c78a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.DvdChooseAdd.Variantd447665a72234f4b3445a3cfe132e6abd80ee0e68520e5bcc4e011585a0c78a9","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"d447665a72234f4b3445a3cfe132e6abd80ee0e68520e5bcc4e011585a0c78a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Choose/Dvd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Patrick Stevens
-/
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Nat.Prime.Factorial

/-!
# Divisibility properties of binomial coefficients
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.DvdChooseAdd.Variantd447665a72234f4b3445a3cfe132e6abd80ee0e68520e5bcc4e011585a0c78a9

namespace Nat

namespace Prime

variable {p a b k : ℕ}

theorem dvd_choose_add (hp : Prime p) (hap : a < p) (hbp : b < p) (h : p ≤ a + b) :
    p ∣ choose (a + b) a := by
  have h₁ : p ∣ (a + b)! := hp.dvd_factorial.2 h
  rw [← add_choose_mul_factorial_mul_factorial, ← choose_symm_add, hp.dvd_mul, hp.dvd_mul,
    hp.dvd_factorial, hp.dvd_factorial] at h₁
  exact (h₁.resolve_right hbp.not_le).resolve_right hap.not_le

lemma dvd_choose (hp : Prime p) (ha : a < p) (hab : b - a < p) (h : p ≤ b) : p ∣ choose b a :=
  have : a + (b - a) = b := Nat.add_sub_of_le (ha.le.trans h)
  this ▸ hp.dvd_choose_add ha hab (this.symm ▸ h)

lemma dvd_choose_self (hp : Prime p) (hk : k ≠ 0) (hkp : k < p) : p ∣ choose p k :=
  hp.dvd_choose hkp (sub_lt ((zero_le _).trans_lt hkp) <| zero_lt_of_ne_zero hk) le_rfl

end Prime

end Nat
```
