# Complete source: GRWTSK.Algebra.Prod.Variante102b4f8dab48e7ae7a239b94498922cb5d45ad6acd7d8a6063b38fc712a101a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af8a23eca013d18030e59b9de36092588385ec6d` · SHA-256 `83bd9c607e8d1dbe02fc503b899277cab9c46d9bb92bccdc0fa164642fc3393b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Prod.Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Prod.Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/RingTheory/Ideal/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.RingTheory.Ideal.Operations


namespace GRWTSK.Algebra.Prod.Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7

#align_import ring_theory.ideal.prod from "leanprover-community/mathlib"@"052f6013363326d50cb99c6939814a4b8eb7b301"

/-!
# Ideals in product rings

For commutative rings `R` and `S` and ideals `I ≤ R`, `J ≤ S`, we define `Ideal.prod I J` as the
product `I × J`, viewed as an ideal of `R × S`. In `ideal_prod_eq` we show that every ideal of
`R × S` is of this form.  Furthermore, we show that every prime ideal of `R × S` is of the form
`p × S` or `R × p`, where `p` is a prime ideal.
-/


universe u v

variable {R : Type u} {S : Type v} [Ring R] [Ring S] (I I' : Ideal R) (J J' : Ideal S)

namespace Ideal

/-- `I × J` as an ideal of `R × S`. -/
def prod : Ideal (R × S) where
  carrier := { x | x.fst ∈ I ∧ x.snd ∈ J }
  zero_mem' := by simp
  add_mem' := by
    rintro ⟨a₁, a₂⟩ ⟨b₁, b₂⟩ ⟨ha₁, ha₂⟩ ⟨hb₁, hb₂⟩
    exact ⟨I.add_mem ha₁ hb₁, J.add_mem ha₂ hb₂⟩
  smul_mem' := by
    rintro ⟨a₁, a₂⟩ ⟨b₁, b₂⟩ ⟨hb₁, hb₂⟩
    exact ⟨I.mul_mem_left _ hb₁, J.mul_mem_left _ hb₂⟩
#align ideal.prod Ideal.prod

@[simp]
theorem mem_prod {r : R} {s : S} : (⟨r, s⟩ : R × S) ∈ prod I J ↔ r ∈ I ∧ s ∈ J :=
  Iff.rfl
#align ideal.mem_prod Ideal.mem_prod

@[simp]
theorem prod_top_top : prod (⊤ : Ideal R) (⊤ : Ideal S) = ⊤ :=
  Ideal.ext <| by simp
#align ideal.prod_top_top Ideal.prod_top_top

/-- Every ideal of the product ring is of the form `I × J`, where `I` and `J` can be explicitly
    given as the image under the projection maps. -/
theorem ideal_prod_eq (I : Ideal (R × S)) :
    I = Ideal.prod (map (RingHom.fst R S) I : Ideal R) (map (RingHom.snd R S) I) := by
  apply Ideal.ext
  rintro ⟨r, s⟩
  rw [mem_prod, mem_map_iff_of_surjective (RingHom.fst R S) Prod.fst_surjective,
    mem_map_iff_of_surjective (RingHom.snd R S) Prod.snd_surjective]
  refine' ⟨fun h => ⟨⟨_, ⟨h, rfl⟩⟩, ⟨_, ⟨h, rfl⟩⟩⟩, _⟩
  rintro ⟨⟨⟨r, s'⟩, ⟨h₁, rfl⟩⟩, ⟨⟨r', s⟩, ⟨h₂, rfl⟩⟩⟩
  simpa using I.add_mem (I.mul_mem_left (1, 0) h₁) (I.mul_mem_left (0, 1) h₂)
#align ideal.ideal_prod_eq Ideal.ideal_prod_eq

@[simp]
theorem map_fst_prod (I : Ideal R) (J : Ideal S) : map (RingHom.fst R S) (prod I J) = I := by
  ext x
  rw [mem_map_iff_of_surjective (RingHom.fst R S) Prod.fst_surjective]
  exact
    ⟨by
      rintro ⟨x, ⟨h, rfl⟩⟩
      exact h.1, fun h => ⟨⟨x, 0⟩, ⟨⟨h, Ideal.zero_mem _⟩, rfl⟩⟩⟩
#align ideal.map_fst_prod Ideal.map_fst_prod

@[simp]
theorem map_snd_prod (I : Ideal R) (J : Ideal S) : map (RingHom.snd R S) (prod I J) = J := by
  ext x
  rw [mem_map_iff_of_surjective (RingHom.snd R S) Prod.snd_surjective]
  exact
    ⟨by
      rintro ⟨x, ⟨h, rfl⟩⟩
      exact h.2, fun h => ⟨⟨0, x⟩, ⟨⟨Ideal.zero_mem _, h⟩, rfl⟩⟩⟩
#align ideal.map_snd_prod Ideal.map_snd_prod

@[simp]
theorem map_prodComm_prod :
    map ((RingEquiv.prodComm : R × S ≃+* S × R) : R × S →+* S × R) (prod I J) = prod J I := by
  refine' Trans.trans (ideal_prod_eq _) _
  simp [map_map]
#align ideal.map_prod_comm_prod Ideal.map_prodComm_prod

/-- Ideals of `R × S` are in one-to-one correspondence with pairs of ideals of `R` and ideals of
    `S`. -/
def idealProdEquiv : Ideal (R × S) ≃ Ideal R × Ideal S
    where
  toFun I := ⟨map (RingHom.fst R S) I, map (RingHom.snd R S) I⟩
  invFun I := prod I.1 I.2
  left_inv I := (ideal_prod_eq I).symm
  right_inv := fun ⟨I, J⟩ => by simp
#align ideal.ideal_prod_equiv Ideal.idealProdEquiv

@[simp]
theorem idealProdEquiv_symm_apply (I : Ideal R) (J : Ideal S) :
    idealProdEquiv.symm ⟨I, J⟩ = prod I J :=
  rfl
#align ideal.ideal_prod_equiv_symm_apply Ideal.idealProdEquiv_symm_apply

theorem prod.ext_iff {I I' : Ideal R} {J J' : Ideal S} :
    prod I J = prod I' J' ↔ I = I' ∧ J = J' := by
  simp only [← idealProdEquiv_symm_apply, idealProdEquiv.symm.injective.eq_iff, Prod.mk.inj_iff]
#align ideal.prod.ext_iff Ideal.prod.ext_iff

theorem isPrime_of_isPrime_prod_top {I : Ideal R} (h : (Ideal.prod I (⊤ : Ideal S)).IsPrime) :
    I.IsPrime := by
  constructor
  · contrapose! h
    rw [h, prod_top_top, isPrime_iff]
    simp [isPrime_iff, h]
  · intro x y hxy
    have : (⟨x, 1⟩ : R × S) * ⟨y, 1⟩ ∈ prod I ⊤ := by
      rw [Prod.mk_mul_mk, mul_one, mem_prod]
      exact ⟨hxy, trivial⟩
    simpa using h.mem_or_mem this
#align ideal.is_prime_of_is_prime_prod_top Ideal.isPrime_of_isPrime_prod_top

theorem isPrime_of_isPrime_prod_top' {I : Ideal S} (h : (Ideal.prod (⊤ : Ideal R) I).IsPrime) :
    I.IsPrime := by
  apply @isPrime_of_isPrime_prod_top _ R
  rw [← map_prodComm_prod]
  exact map_isPrime_of_equiv _
#align ideal.is_prime_of_is_prime_prod_top' Ideal.isPrime_of_isPrime_prod_top'

theorem isPrime_ideal_prod_top {I : Ideal R} [h : I.IsPrime] : (prod I (⊤ : Ideal S)).IsPrime := by
  constructor
  · rcases h with ⟨h, -⟩
    contrapose! h
    rw [← prod_top_top, prod.ext_iff] at h
    exact h.1
  rintro ⟨r₁, s₁⟩ ⟨r₂, s₂⟩ ⟨h₁, _⟩
  cases' h.mem_or_mem h₁ with h h
  · exact Or.inl ⟨h, trivial⟩
  · exact Or.inr ⟨h, trivial⟩
#align ideal.is_prime_ideal_prod_top Ideal.isPrime_ideal_prod_top

theorem isPrime_ideal_prod_top' {I : Ideal S} [h : I.IsPrime] : (prod (⊤ : Ideal R) I).IsPrime := by
  letI : IsPrime (prod I (⊤ : Ideal R)) := isPrime_ideal_prod_top
  rw [← map_prodComm_prod]
  apply map_isPrime_of_equiv _
#align ideal.is_prime_ideal_prod_top' Ideal.isPrime_ideal_prod_top'

theorem ideal_prod_prime_aux {I : Ideal R} {J : Ideal S} :
    (Ideal.prod I J).IsPrime → I = ⊤ ∨ J = ⊤ := by
  contrapose!
  simp only [ne_top_iff_one, isPrime_iff, not_and, not_forall, not_or]
  exact fun ⟨hI, hJ⟩ _ => ⟨⟨0, 1⟩, ⟨1, 0⟩, by simp, by simp [hJ], by simp [hI]⟩
#align ideal.ideal_prod_prime_aux Ideal.ideal_prod_prime_aux

/-- Classification of prime ideals in product rings: the prime ideals of `R × S` are precisely the
    ideals of the form `p × S` or `R × p`, where `p` is a prime ideal of `R` or `S`. -/
theorem ideal_prod_prime (I : Ideal (R × S)) :
    I.IsPrime ↔
      (∃ p : Ideal R, p.IsPrime ∧ I = Ideal.prod p ⊤) ∨
        ∃ p : Ideal S, p.IsPrime ∧ I = Ideal.prod ⊤ p := by
  constructor
  · rw [ideal_prod_eq I]
    intro hI
    rcases ideal_prod_prime_aux hI with (h | h)
    · right
      rw [h] at hI ⊢
      exact ⟨_, ⟨isPrime_of_isPrime_prod_top' hI, rfl⟩⟩
    · left
      rw [h] at hI ⊢
      exact ⟨_, ⟨isPrime_of_isPrime_prod_top hI, rfl⟩⟩
  · rintro (⟨p, ⟨h, rfl⟩⟩ | ⟨p, ⟨h, rfl⟩⟩)
    · exact isPrime_ideal_prod_top
    · exact isPrime_ideal_prod_top'
#align ideal.ideal_prod_prime Ideal.ideal_prod_prime

end Ideal
```
