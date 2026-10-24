# Complete source: GRWTSK.Algebra.Ideal.Variant60e48a34c2b1f0b1c3aa5f37c0d7cb944eda65862064944b16970bb9940ba3aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7aea42f80c4113fbbac0d226c3a5e98fce88514a` · SHA-256 `093ea68bacbe4459302ee4cc9be8b2000f0e4ede972f2016f2dd07e9e56f6445`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IdealIsPrimeExistsMemPrimeOfNeBot.Variant5e134bb1bb21521e89a484cf1733d6387d5ad9381971872f9628617b4775a4a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e134bb1bb21521e89a484cf1733d6387d5ad9381971872f9628617b4775a4a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IdealIsPrimeExistsMemPrimeOfNeBot.Variant5e134bb1bb21521e89a484cf1733d6387d5ad9381971872f9628617b4775a4a9","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"5e134bb1bb21521e89a484cf1733d6387d5ad9381971872f9628617b4775a4a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/UniqueFactorizationDomain/Ideal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jens Wagemaker, Aaron Anderson
-/
import Mathlib.RingTheory.Ideal.Operations
import Mathlib.RingTheory.UniqueFactorizationDomain.Defs

/-!
# Unique factorization and ascending chain condition on ideals

## Main results
* `Ideal.setOf_isPrincipal_wellFoundedOn_gt`, `WfDvdMonoid.of_setOf_isPrincipal_wellFoundedOn_gt`
  in a domain, well-foundedness of the strict version of ∣ is equivalent to the ascending
  chain condition on principal ideals.
-/


namespace GRWTSK.Algebra.IdealIsPrimeExistsMemPrimeOfNeBot.Variant5e134bb1bb21521e89a484cf1733d6387d5ad9381971872f9628617b4775a4a9

variable {α : Type*}

open UniqueFactorizationMonoid in
/-- Every non-zero prime ideal in a unique factorization domain contains a prime element. -/
theorem Ideal.IsPrime.exists_mem_prime_of_ne_bot {R : Type*} [CommSemiring R] [IsDomain R]
    [UniqueFactorizationMonoid R] {I : Ideal R} (hI₂ : I.IsPrime) (hI : I ≠ ⊥) :
    ∃ x ∈ I, Prime x := by
  classical
  obtain ⟨a : R, ha₁ : a ∈ I, ha₂ : a ≠ 0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hI
  replace ha₁ : (factors a).prod ∈ I := by
    obtain ⟨u : Rˣ, hu : (factors a).prod * u = a⟩ := factors_prod ha₂
    rwa [← hu, mul_unit_mem_iff_mem _ u.isUnit] at ha₁
  obtain ⟨p : R, hp₁ : p ∈ factors a, hp₂ : p ∈ I⟩ :=
    (hI₂.multiset_prod_mem_iff_exists_mem <| factors a).1 ha₁
  exact ⟨p, hp₂, prime_of_factor p hp₁⟩

section Ideal

/-- The ascending chain condition on principal ideals holds in a `WfDvdMonoid` domain. -/
lemma Ideal.setOf_isPrincipal_wellFoundedOn_gt [CommSemiring α] [WfDvdMonoid α] [IsDomain α] :
    {I : Ideal α | I.IsPrincipal}.WellFoundedOn (· > ·) := by
  have : {I : Ideal α | I.IsPrincipal} = ((fun a ↦ Ideal.span {a}) '' Set.univ) := by
    ext
    simp [Submodule.isPrincipal_iff, eq_comm]
  rw [this, Set.wellFoundedOn_image, Set.wellFoundedOn_univ]
  convert wellFounded_dvdNotUnit (α := α)
  ext
  exact Ideal.span_singleton_lt_span_singleton

/-- The ascending chain condition on principal ideals in a domain is sufficient to prove that
the domain is `WfDvdMonoid`. -/
lemma WfDvdMonoid.of_setOf_isPrincipal_wellFoundedOn_gt [CommSemiring α] [IsDomain α]
    (h : {I : Ideal α | I.IsPrincipal}.WellFoundedOn (· > ·)) :
    WfDvdMonoid α := by
  have : WellFounded (α := {I : Ideal α // I.IsPrincipal}) (· > ·) := h
  constructor
  convert InvImage.wf (fun a => ⟨Ideal.span ({a} : Set α), _, rfl⟩) this
  ext
  exact Ideal.span_singleton_lt_span_singleton.symm

end Ideal
```
