# Complete source: GRWTSK.Algebra.Prime.Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f52c6ddd4b092deb960d593dc3e54b9ce9fe4571` · SHA-256 `e6811fc2f2adb815639065422c9360d1eb02ee950498b452c28e37b2ccc5b627`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsPrime.Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsPrime.Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"a41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Ideal/Prime.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Chris Hughes, Mario Carneiro
-/
import Mathlib.RingTheory.Ideal.Lattice

/-!

# Prime ideals

This file contains the definition of `Ideal.IsPrime` for prime ideals.

## TODO

Support right ideals, and two-sided ideals over non-commutative rings.
-/



namespace GRWTSK.Algebra.IsPrime.Varianta41cb5b76d26c747c4bdd89c653da6b3d1e1c7a9dda5bc303c114ed210abebe8

universe u v w

variable {α : Type u} {β : Type v} {F : Type w}

open Set Function

open Pointwise

section Semiring

namespace Ideal

variable [Semiring α] (I : Ideal α) {a b : α}

/-- An ideal `P` of a ring `R` is prime if `P ≠ R` and `xy ∈ P → x ∈ P ∨ y ∈ P` -/
class IsPrime (I : Ideal α) : Prop where
  /-- The prime ideal is not the entire ring. -/
  ne_top' : I ≠ ⊤
  /-- If a product lies in the prime ideal, then at least one element lies in the prime ideal. -/
  mem_or_mem' : ∀ {x y : α}, x * y ∈ I → x ∈ I ∨ y ∈ I

theorem isPrime_iff {I : Ideal α} : IsPrime I ↔ I ≠ ⊤ ∧ ∀ {x y : α}, x * y ∈ I → x ∈ I ∨ y ∈ I :=
  ⟨fun h => ⟨h.1, h.2⟩, fun h => ⟨h.1, h.2⟩⟩

theorem IsPrime.ne_top {I : Ideal α} (hI : I.IsPrime) : I ≠ ⊤ :=
  hI.1

theorem IsPrime.mem_or_mem {I : Ideal α} (hI : I.IsPrime) {x y : α} : x * y ∈ I → x ∈ I ∨ y ∈ I :=
  hI.2

theorem IsPrime.mul_notMem {I : Ideal α} (hI : I.IsPrime) {x y : α} :
    x ∉ I → y ∉ I → x * y ∉ I := fun hx hy h ↦
  hy ((hI.mem_or_mem h).resolve_left hx)

@[deprecated (since := "2025-05-23")] alias IsPrime.mul_not_mem := IsPrime.mul_notMem

theorem IsPrime.mem_or_mem_of_mul_eq_zero {I : Ideal α} (hI : I.IsPrime) {x y : α} (h : x * y = 0) :
    x ∈ I ∨ y ∈ I :=
  hI.mem_or_mem (h.symm ▸ I.zero_mem)

theorem IsPrime.mem_of_pow_mem {I : Ideal α} (hI : I.IsPrime) {r : α} (n : ℕ) (H : r ^ n ∈ I) :
    r ∈ I := by
  induction n with
  | zero =>
    rw [pow_zero] at H
    exact (mt (eq_top_iff_one _).2 hI.1).elim H
  | succ n ih =>
    rw [pow_succ] at H
    exact Or.casesOn (hI.mem_or_mem H) ih id

theorem not_isPrime_iff {I : Ideal α} :
    ¬I.IsPrime ↔ I = ⊤ ∨ ∃ (x : α) (_hx : x ∉ I) (y : α) (_hy : y ∉ I), x * y ∈ I := by
  simp_rw [Ideal.isPrime_iff, not_and_or, Ne, Classical.not_not, not_forall, not_or]
  exact
    or_congr Iff.rfl
      ⟨fun ⟨x, y, hxy, hx, hy⟩ => ⟨x, hx, y, hy, hxy⟩, fun ⟨x, hx, y, hy, hxy⟩ =>
        ⟨x, y, hxy, hx, hy⟩⟩

theorem bot_prime [Nontrivial α] [NoZeroDivisors α] : (⊥ : Ideal α).IsPrime :=
  ⟨fun h => one_ne_zero (α := α) (by rwa [Ideal.eq_top_iff_one, Submodule.mem_bot] at h), fun h =>
    mul_eq_zero.mp (by simpa only [Submodule.mem_bot] using h)⟩

theorem IsPrime.mul_mem_iff_mem_or_mem {I : Ideal α} [I.IsTwoSided] (hI : I.IsPrime) :
    ∀ {x y : α}, x * y ∈ I ↔ x ∈ I ∨ y ∈ I := @fun x y =>
  ⟨hI.mem_or_mem, by
    rintro (h | h)
    exacts [I.mul_mem_right y h, I.mul_mem_left x h]⟩

theorem IsPrime.pow_mem_iff_mem {I : Ideal α} (hI : I.IsPrime) {r : α} (n : ℕ) (hn : 0 < n) :
    r ^ n ∈ I ↔ r ∈ I :=
  ⟨hI.mem_of_pow_mem n, fun hr => I.pow_mem_of_mem hr n hn⟩

/-- The complement of a prime ideal `P ⊆ R` is a submonoid of `R`. -/
def primeCompl (P : Ideal α) [hp : P.IsPrime] : Submonoid α where
  carrier := (Pᶜ : Set α)
  one_mem' := by convert P.ne_top_iff_one.1 hp.1
  mul_mem' {_ _} hnx hny hxy := Or.casesOn (hp.mem_or_mem hxy) hnx hny

end Ideal

end Semiring

section Ring

theorem IsDomain.of_bot_isPrime (A : Type*) [Ring A] [hbp : (⊥ : Ideal A).IsPrime] : IsDomain A :=
  @NoZeroDivisors.to_isDomain A _
    ⟨1, 0, fun h => hbp.ne_top ((Ideal.eq_top_iff_one ⊥).mpr h)⟩ ⟨fun h => hbp.2 h⟩

end Ring

section DivisionSemiring

variable {K : Type u} [DivisionSemiring K] (I : Ideal K)

namespace Ideal

theorem eq_bot_of_prime [h : I.IsPrime] : I = ⊥ :=
  or_iff_not_imp_right.mp I.eq_bot_or_top h.1

end Ideal

end DivisionSemiring
```
