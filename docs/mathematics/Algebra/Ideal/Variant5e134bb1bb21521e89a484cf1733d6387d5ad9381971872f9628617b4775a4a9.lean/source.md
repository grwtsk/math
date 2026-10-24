# Complete source: GRWTSK.Algebra.Ideal.Variant5e134bb1bb21521e89a484cf1733d6387d5ad9381971872f9628617b4775a4a9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76a9fb5c099410e97347b1b9993d3b2655270ebf` · SHA-256 `5e134bb1bb21521e89a484cf1733d6387d5ad9381971872f9628617b4775a4a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
