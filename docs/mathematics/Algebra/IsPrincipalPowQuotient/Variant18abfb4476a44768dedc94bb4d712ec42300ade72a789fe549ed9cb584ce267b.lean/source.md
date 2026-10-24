# Complete source: GRWTSK.Algebra.IsPrincipalPowQuotient.Variant18abfb4476a44768dedc94bb4d712ec42300ade72a789fe549ed9cb584ce267b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6878dfffaffeb7d01c2cfb63c2b85ef32ba7c42` · SHA-256 `88901b5d84e53e42aa84d241cd94584b29ef135bdabf745b4c6935edf5f06d23`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.QuotEquivPowQuotPowSucc.Variant05d4541a5b82489619cb0a21e7eb2bc7e284944e3c2856b2a90aa7cd94d18925","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05d4541a5b82489619cb0a21e7eb2bc7e284944e3c2856b2a90aa7cd94d18925","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.QuotEquivPowQuotPowSucc.Variant05d4541a5b82489619cb0a21e7eb2bc7e284944e3c2856b2a90aa7cd94d18925","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"05d4541a5b82489619cb0a21e7eb2bc7e284944e3c2856b2a90aa7cd94d18925","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Ideal/IsPrincipalPowQuotient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
import Mathlib.LinearAlgebra.Isomorphisms
import Mathlib.RingTheory.Ideal.Operations
import Mathlib.RingTheory.Ideal.Quotient.Defs

/-!
# Quotients of powers of principal ideals

This file deals with taking quotients of powers of principal ideals.

## Main definitions and results

* `Ideal.quotEquivPowQuotPowSucc`: for a principal ideal `I`, `R ⧸ I ≃ₗ[R] I ^ n ⧸ I ^ (n + 1)`

## Implementation details

At site of usage, calling `LinearEquiv.toEquiv` can cause timeouts in the search for a complex
synthesis like `Module 𝒪[K] 𝓀[k]`, so the plain equiv versions are provided.

These equivs are defined here as opposed to in the quotients file since they cannot be
formed as ring equivs.

-/



namespace GRWTSK.Algebra.QuotEquivPowQuotPowSucc.Variant05d4541a5b82489619cb0a21e7eb2bc7e284944e3c2856b2a90aa7cd94d18925

namespace Ideal

section IsPrincipal

variable {R : Type*} [CommRing R] [IsDomain R] {I : Ideal R}

/-- For a principal ideal `I`, `R ⧸ I ≃ₗ[R] I ^ n ⧸ I ^ (n + 1)`. To convert into a form
that uses the ideal of `R ⧸ I ^ (n + 1)`, compose with
`Ideal.powQuotPowSuccLinearEquivMapMkPowSuccPow`. -/
noncomputable
def quotEquivPowQuotPowSucc (h : I.IsPrincipal) (h' : I ≠ ⊥) (n : ℕ) :
    (R ⧸ I) ≃ₗ[R] (I ^ n : Ideal R) ⧸ (I • ⊤ : Submodule R (I ^ n : Ideal R)) := by
  let f : (I ^ n : Ideal R) →ₗ[R] (I ^ n : Ideal R) ⧸ (I • ⊤ : Submodule R (I ^ n : Ideal R)) :=
    Submodule.mkQ _
  let ϖ := h.principal.choose
  have hI : I = Ideal.span {ϖ} := h.principal.choose_spec
  have hϖ : ϖ ^ n ∈ I ^ n := hI ▸ (Ideal.pow_mem_pow (Ideal.mem_span_singleton_self _) n)
  let g : R →ₗ[R] (I ^ n : Ideal R) := (LinearMap.mulRight R ϖ^n).codRestrict _ fun x ↦ by
    simp only [LinearMap.pow_mulRight, LinearMap.mulRight_apply, Ideal.submodule_span_eq]
    -- TODO: change argument of Ideal.pow_mem_of_mem
    exact Ideal.mul_mem_left _ _ hϖ
  have : I = LinearMap.ker (f.comp g) := by
    ext x
    simp only [LinearMap.codRestrict, LinearMap.pow_mulRight, LinearMap.mulRight_apply,
      LinearMap.mem_ker, LinearMap.coe_comp, LinearMap.coe_mk, AddHom.coe_mk, Function.comp_apply,
      Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero, Submodule.mem_smul_top_iff, smul_eq_mul,
      f, g]
    constructor <;> intro hx
    · exact Submodule.mul_mem_mul hx hϖ
    · rw [← pow_succ', hI, Ideal.span_singleton_pow, Ideal.mem_span_singleton] at hx
      obtain ⟨y, hy⟩ := hx
      rw [mul_comm, pow_succ, mul_assoc, mul_right_inj' (pow_ne_zero _ _)] at hy
      · rw [hI, Ideal.mem_span_singleton]
        exact ⟨y, hy⟩
      · contrapose! h'
        rw [hI, h', Ideal.span_singleton_eq_bot]
  let e : (R ⧸ I) ≃ₗ[R] R ⧸ (LinearMap.ker (f.comp g)) :=
    Submodule.quotEquivOfEq I (LinearMap.ker (f ∘ₗ g)) this
  refine e.trans ((f.comp g).quotKerEquivOfSurjective ?_)
  refine (Submodule.mkQ_surjective _).comp ?_
  rintro ⟨x, hx⟩
  rw [hI, Ideal.span_singleton_pow, Ideal.mem_span_singleton] at hx
  refine hx.imp ?_
  simp [g, LinearMap.codRestrict, eq_comm, mul_comm]

/-- For a principal ideal `I`, `R ⧸ I ≃ I ^ n ⧸ I ^ (n + 1)`. Supplied as a plain equiv to bypass
typeclass synthesis issues on complex `Module` goals.  To convert into a form
that uses the ideal of `R ⧸ I ^ (n + 1)`, compose with
`Ideal.powQuotPowSuccEquivMapMkPowSuccPow`. -/
noncomputable
def quotEquivPowQuotPowSuccEquiv (h : I.IsPrincipal) (h' : I ≠ ⊥) (n : ℕ) :
    (R ⧸ I) ≃ (I ^ n : Ideal R) ⧸ (I • ⊤ : Submodule R (I ^ n : Ideal R)) :=
  quotEquivPowQuotPowSucc h h' n

end IsPrincipal

end Ideal
```
