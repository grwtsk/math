# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant8b55e80f4c6dc5e9d9596330665743af3a6d414d6b603fbb0ae9786b499f2067

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36bc0e9c7eeaf9f0771143217f9d9596d8ddcb2b` · SHA-256 `9745e2b4cb2abf35004bb5877461cb88e018431a41186a6bcde926264da85842`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.RootPolynomialAdjoinX.Variantdb1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.RootPolynomialAdjoinX.Variantdb1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac","mathematical_subject":"Algebra.Polynomials","original_sha256":"db1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Adjoin/Polynomial/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Johannes Hölzl, Kim Morrison, Jens Wagemaker
-/
module

public import Mathlib.Algebra.MvPolynomial.Eval
public import Mathlib.Algebra.Polynomial.AlgebraMap

/-!
# Polynomials and adjoining roots

## Main results

* `Algebra.instCommSemiringAdjoinSingleton, Algebra.instCommRingAdjoinSingleton`:
  adjoining an element to a commutative (semi)ring gives a commutative (semi)ring
* `Algebra.adjoin_singleton_induction`:
  proving a fact about `a : adjoin R {x}` is the same as proving it for `aeval x p` where `p`
  is an arbitrary polynomial
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.RootPolynomialAdjoinX.Variantdb1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac

public section

noncomputable section

open Finset

open Polynomial

namespace Algebra

universe u v w z

variable {R : Type u} {S : Type v} {A : Type z} {B : Type*} {a b : R} {n : ℕ}

section aeval

open Algebra

variable [CommSemiring R] [Semiring A] [Semiring B]
variable [Algebra R A] [Algebra R B]
variable {p q : R[X]} (x : A)

@[simp]
theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.RootPolynomialAdjoinX.Variantdb1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac.Polynomial.adjoin_X : adjoin R ({X} : Set R[X]) = ⊤ := by
  refine top_unique fun p _hp => ?_
  set S := adjoin R ({X} : Set R[X])
  rw [← sum_monomial_eq p]; simp only [← smul_X_eq_monomial]
  exact S.sum_mem fun n _hn => S.smul_mem (S.pow_mem (subset_adjoin rfl) _) _

variable (R)
theorem adjoin_singleton_eq_range_aeval (x : A) :
    adjoin R {x} = (aeval x).range := by
  rw [← Algebra.map_top, ← adjoin_X, AlgHom.map_adjoin, Set.image_singleton, aeval_X]

@[simp]
theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.RootPolynomialAdjoinX.Variantdb1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac.Polynomial.aeval_mem_adjoin_singleton : aeval x p ∈ adjoin R {x} := by
  simp [adjoin_singleton_eq_range_aeval]

instance {A B : Type*} [CommSemiring A] [Semiring B] [Algebra A B] (x : B) (p : Polynomial A) :
    CoeDep B (p.aeval x) (Algebra.adjoin A {x}) where
  coe := ⟨p.aeval x, aeval_mem_adjoin_singleton A x⟩

theorem adjoin_mem_exists_aeval {a : A} (h : a ∈ R[x]) :
    ∃ p : R[X], aeval x p = a := by
  rw [Algebra.adjoin_singleton_eq_range_aeval] at h
  simp_all

theorem adjoin_eq_exists_aeval (a : R[x]) :
    ∃ p : R[X], aeval x p = a := by
  have : (a : A) ∈ R[x] := by simp
  set y := (a : A) with h
  rw [Algebra.adjoin_singleton_eq_range_aeval] at this
  simp_all

lemma exists_mvPolynomial_aeval_eq_of_mem_adjoin {R A σ : Type*}
    [CommSemiring R] [CommSemiring A] [Algebra R A]
    {S : Set A} {a : A} {f : σ → A} (hS : S ⊆ Set.range f)
    (ha : a ∈ adjoin R S) : ∃ p : MvPolynomial σ R, p.aeval f = a := by
  have ha : a ∈ adjoin R (Set.range f) := adjoin_mono hS ha
  rw [Algebra.adjoin_range_eq_range_aeval] at ha
  simp_all

lemma exists_mvPolynomial_eq_of_adjoin {R A σ : Type*}
    [CommSemiring R] [CommSemiring A] [Algebra R A]
    {S : Set A} {f : σ → A} (hS : S ⊆ Set.range f)
    (a : adjoin R S) : ∃ p : MvPolynomial σ R, p.aeval f = a :=
  exists_mvPolynomial_aeval_eq_of_mem_adjoin hS a.2

/--
Proving a fact about `a : adjoin R {x}` is the same as proving it for
`aeval x p` where `p`is an arbitrary polynomial. -/
@[elab_as_elim]
theorem adjoin_singleton_induction {M : (adjoin R {x}) → Prop}
    (a : adjoin R {x}) (f : ∀ (p : Polynomial R), M (aeval x p : adjoin R {x})) : M a := by
  obtain ⟨p, hp⟩ := Algebra.adjoin_eq_exists_aeval _ x a
  grind

instance instCommSemiringAdjoinSingleton :
    CommSemiring <| adjoin R {x} where
  mul_comm := fun ⟨p, hp⟩ ⟨q, hq⟩ ↦ by
      obtain ⟨p', rfl⟩ := Algebra.adjoin_singleton_eq_range_aeval R x ▸ hp
      obtain ⟨q', rfl⟩ := Algebra.adjoin_singleton_eq_range_aeval R x ▸ hq
      simp only [AlgHom.toRingHom_eq_coe, RingHom.coe_coe, MulMemClass.mk_mul_mk, ← map_mul,
        mul_comm p' q']

instance instCommRingAdjoinSingleton {R A : Type*} [CommRing R] [Ring A] [Algebra R A] (x : A) :
    CommRing <| R[x] where

end aeval

end Algebra
```
