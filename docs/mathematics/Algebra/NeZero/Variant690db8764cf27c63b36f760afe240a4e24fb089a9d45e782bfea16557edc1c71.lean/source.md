# Complete source: GRWTSK.Algebra.NeZero.Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab4be39b75f46478198568081ddf8bf20208996d` · SHA-256 `66893ec462125a90777c14c7289dd40779a7298e2bda492e1a69582679079897`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.NotNeZero.Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.NotNeZero.Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/NeZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Rodriguez. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Rodriguez
-/
import Mathlib.Logic.Basic
import Mathlib.Order.Defs.PartialOrder

/-!
# `NeZero` typeclass

We give basic facts about the `NeZero n` typeclass.

-/


namespace GRWTSK.Algebra.NotNeZero.Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf

variable {R : Type*} [Zero R]

theorem not_neZero {n : R} : ¬NeZero n ↔ n = 0 := by simp [neZero_iff]

theorem eq_zero_or_neZero (a : R) : a = 0 ∨ NeZero a :=
  (eq_or_ne a 0).imp_right NeZero.mk

section
variable {α : Type*} [Zero α]

@[simp] lemma zero_ne_one [One α] [NeZero (1 : α)] : (0 : α) ≠ 1 := NeZero.ne' (1 : α)

@[simp] lemma one_ne_zero [One α] [NeZero (1 : α)] : (1 : α) ≠ 0 := NeZero.ne (1 : α)

lemma ne_zero_of_eq_one [One α] [NeZero (1 : α)] {a : α} (h : a = 1) : a ≠ 0 := h ▸ one_ne_zero

@[field_simps]
lemma two_ne_zero [OfNat α 2] [NeZero (2 : α)] : (2 : α) ≠ 0 := NeZero.ne (2 : α)

@[field_simps]
lemma three_ne_zero [OfNat α 3] [NeZero (3 : α)] : (3 : α) ≠ 0 := NeZero.ne (3 : α)

@[field_simps]
lemma four_ne_zero [OfNat α 4] [NeZero (4 : α)] : (4 : α) ≠ 0 := NeZero.ne (4 : α)

variable (α)

lemma zero_ne_one' [One α] [NeZero (1 : α)] : (0 : α) ≠ 1 := zero_ne_one

lemma one_ne_zero' [One α] [NeZero (1 : α)] : (1 : α) ≠ 0 := one_ne_zero

lemma two_ne_zero' [OfNat α 2] [NeZero (2 : α)] : (2 : α) ≠ 0 := two_ne_zero

lemma three_ne_zero' [OfNat α 3] [NeZero (3 : α)] : (3 : α) ≠ 0 := three_ne_zero

lemma four_ne_zero' [OfNat α 4] [NeZero (4 : α)] : (4 : α) ≠ 0 := four_ne_zero

end

namespace NeZero

variable {M : Type*} {x : M}

theorem of_pos [Preorder M] [Zero M] (h : 0 < x) : NeZero x := ⟨ne_of_gt h⟩

end NeZero
```
