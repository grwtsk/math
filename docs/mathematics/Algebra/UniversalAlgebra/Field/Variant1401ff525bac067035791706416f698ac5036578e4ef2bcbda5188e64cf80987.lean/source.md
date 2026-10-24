# Complete source: GRWTSK.Algebra.UniversalAlgebra.Field.Variant1401ff525bac067035791706416f698ac5036578e4ef2bcbda5188e64cf80987

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `165e8a6cf62810310ea7258bc80ca80aa37b0a9d` · SHA-256 `da124e2a0a45ce198fdca3516a00fa6ca3fb6cfa05859519d0f86bd300dcc3a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CastDiv.Variant94b04d50e294b305001ab7650bd4defdbc629683878dd2229abbd65932109789","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94b04d50e294b305001ab7650bd4defdbc629683878dd2229abbd65932109789","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CastDiv.Variant94b04d50e294b305001ab7650bd4defdbc629683878dd2229abbd65932109789","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"94b04d50e294b305001ab7650bd4defdbc629683878dd2229abbd65932109789","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Cast/Field.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Yaël Dillies, Patrick Stevens
-/
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Data.Nat.Cast.Basic
import Mathlib.Tactic.Common
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.GroupWithZero.Units.Basic

/-!
# Cast of naturals into fields

This file concerns the canonical homomorphism `ℕ → F`, where `F` is a field.

## Main results

* `Nat.cast_div`: if `n` divides `m`, then `↑(m / n) = ↑m / ↑n`
-/



namespace GRWTSK.Algebra.UniversalAlgebra.CastDiv.Variant94b04d50e294b305001ab7650bd4defdbc629683878dd2229abbd65932109789

namespace Nat

variable {K : Type*} [DivisionSemiring K] {d m n : ℕ}

@[simp]
lemma cast_div (hnm : n ∣ m) (hn : (n : K) ≠ 0) : (↑(m / n) : K) = m / n := by
  obtain ⟨k, rfl⟩ := hnm
  have : n ≠ 0 := by rintro rfl; simp at hn
  rw [Nat.mul_div_cancel_left _ <| zero_lt_of_ne_zero this, mul_comm n,
    cast_mul, mul_div_cancel_right₀ _ hn]

variable [CharZero K]

@[simp, norm_cast]
lemma cast_div_charZero (hnm : n ∣ m) : (↑(m / n) : K) = m / n := by
  obtain rfl | hn := eq_or_ne n 0 <;> simp [*]

lemma cast_div_div_div_cancel_right (hn : d ∣ n) (hm : d ∣ m) :
    (↑(m / d) : K) / (↑(n / d) : K) = (m : K) / n := by
  rcases eq_or_ne d 0 with (rfl | hd); · simp [Nat.zero_dvd.1 hm]
  replace hd : (d : K) ≠ 0 := by norm_cast
  rw [cast_div hm, cast_div hn, div_div_div_cancel_right₀ hd] <;> exact hd

end Nat
```
