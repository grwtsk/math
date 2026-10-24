# Complete source: GRWTSK.Algebra.MinimalAxioms.Variant5414a940f01dff180580b624f169db76683c4627873a4f9dc519bc5a498d942c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cc5e4fd06c02d52dcbc34fac50804604c444972` · SHA-256 `06c3ecf16c1100b29e7f2c712b82241c95d8708813f8eb93bcc9b5eda89b1944`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RingOfMinimalAxioms.Variant3b9d7282b4affd7d7c73199134907a3cbadc577ca911f007c3a6bca6f3526c18","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b9d7282b4affd7d7c73199134907a3cbadc577ca911f007c3a6bca6f3526c18","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.RingOfMinimalAxioms.Variant3b9d7282b4affd7d7c73199134907a3cbadc577ca911f007c3a6bca6f3526c18","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"3b9d7282b4affd7d7c73199134907a3cbadc577ca911f007c3a6bca6f3526c18","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/MinimalAxioms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/

import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.MinimalAxioms

/-!
# Minimal Axioms for a Ring

This file defines constructors to define a `Ring` or `CommRing` structure on a Type, while proving
a minimum number of equalities.

## Main Definitions

* `Ring.ofMinimalAxioms`: Define a `Ring` structure on a Type by proving a minimized set of axioms
* `CommRing.ofMinimalAxioms`: Define a `CommRing` structure on a Type by proving a minimized set of
  axioms

-/


namespace GRWTSK.Algebra.RingOfMinimalAxioms.Variant3b9d7282b4affd7d7c73199134907a3cbadc577ca911f007c3a6bca6f3526c18

universe u

/-- Define a `Ring` structure on a Type by proving a minimized set of axioms.
Note that this uses the default definitions for `npow`, `nsmul`, `zsmul` and `sub`
See note [reducible non-instances]. -/
abbrev Ring.ofMinimalAxioms {R : Type u}
    [Add R] [Mul R] [Neg R] [Zero R] [One R]
    (add_assoc : ∀ a b c : R, a + b + c = a + (b + c))
    (zero_add : ∀ a : R, 0 + a = a)
    (neg_add_cancel : ∀ a : R, -a + a = 0)
    (mul_assoc : ∀ a b c : R, a * b * c = a * (b * c))
    (one_mul : ∀ a : R, 1 * a = a)
    (mul_one : ∀ a : R, a * 1 = a)
    (left_distrib : ∀ a b c : R, a * (b + c) = a * b + a * c)
    (right_distrib : ∀ a b c : R, (a + b) * c = a * c + b * c) : Ring R :=
  letI := AddGroup.ofLeftAxioms add_assoc zero_add neg_add_cancel
  haveI add_comm : ∀ a b, a + b = b + a := by
    intro a b
    have h₁ : (1 + 1 : R) * (a + b) = a + (a + b) + b := by
      rw [left_distrib]
      simp only [right_distrib, one_mul, add_assoc]
    have h₂ : (1 + 1 : R) * (a + b) = a + (b + a) + b := by
      rw [right_distrib]
      simp only [left_distrib, one_mul, add_assoc]
    have := h₁.symm.trans h₂
    rwa [add_left_inj, add_right_inj] at this
  haveI zero_mul : ∀ a, (0 : R) * a = 0 := fun a => by
    have : 0 * a = 0 * a + 0 * a :=
      calc 0 * a = (0 + 0) * a := by rw [zero_add]
      _ = 0 * a + 0 * a := by rw [right_distrib]
    rwa [left_eq_add] at this
  haveI mul_zero : ∀ a, a * (0 : R) = 0 := fun a => by
    have : a * 0 = a * 0 + a * 0 :=
      calc a * 0 = a * (0 + 0) := by rw [zero_add]
      _ = a * 0 + a * 0 := by rw [left_distrib]
    rwa [left_eq_add] at this
  { add_comm := add_comm
    left_distrib := left_distrib
    right_distrib := right_distrib
    zero_mul := zero_mul
    mul_zero := mul_zero
    mul_assoc := mul_assoc
    one_mul := one_mul
    mul_one := mul_one
    neg_add_cancel := neg_add_cancel
    zsmul := (· • ·) }

/-- Define a `CommRing` structure on a Type by proving a minimized set of axioms.
Note that this uses the default definitions for `npow`, `nsmul`, `zsmul` and `sub`
See note [reducible non-instances]. -/
abbrev CommRing.ofMinimalAxioms {R : Type u}
    [Add R] [Mul R] [Neg R] [Zero R] [One R]
    (add_assoc : ∀ a b c : R, a + b + c = a + (b + c))
    (zero_add : ∀ a : R, 0 + a = a)
    (neg_add_cancel : ∀ a : R, -a + a = 0)
    (mul_assoc : ∀ a b c : R, a * b * c = a * (b * c))
    (mul_comm : ∀ a b : R, a * b = b * a)
    (one_mul : ∀ a : R, 1 * a = a)
    (left_distrib : ∀ a b c : R, a * (b + c) = a * b + a * c) : CommRing R :=
  haveI mul_one : ∀ a : R, a * 1 = a := fun a => by
    rw [mul_comm, one_mul]
  haveI right_distrib : ∀ a b c : R, (a + b) * c = a * c + b * c := fun a b c => by
    rw [mul_comm, left_distrib, mul_comm, mul_comm b c]
  letI := Ring.ofMinimalAxioms add_assoc zero_add neg_add_cancel mul_assoc
    one_mul mul_one left_distrib right_distrib
  { mul_comm := mul_comm }
```
