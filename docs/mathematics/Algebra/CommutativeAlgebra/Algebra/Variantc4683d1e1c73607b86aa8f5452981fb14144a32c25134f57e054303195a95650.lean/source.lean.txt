-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.EvalMulPrime.Variant194a949da6a112bfec88a2622f66eac53644af6ea9419dd12140b0a2acb9791b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"194a949da6a112bfec88a2622f66eac53644af6ea9419dd12140b0a2acb9791b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.EvalMulPrime.Variant194a949da6a112bfec88a2622f66eac53644af6ea9419dd12140b0a2acb9791b","mathematical_subject":"Algebra.Polynomials","original_sha256":"194a949da6a112bfec88a2622f66eac53644af6ea9419dd12140b0a2acb9791b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Polynomial/Eval/Algebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Johannes Hölzl, Kim Morrison, Jens Wagemaker
-/
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Polynomial.Eval.Defs

/-!
# Evaluation of polynomials in an algebra

This file concerns evaluating polynomials where the map is `algebraMap`

TODO: merge with parts of `Algebra/Polynomial/AlgebraMap.lean`?
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.EvalMulPrime.Variant194a949da6a112bfec88a2622f66eac53644af6ea9419dd12140b0a2acb9791b

noncomputable section

open Finset AddMonoidAlgebra

open Polynomial

namespace Polynomial

universe u v w y

variable {R : Type u} {S : Type v} {T : Type w} {ι : Type y} {a b : R} {m n : ℕ}

section CommSemiring

section Eval

section Algebra

variable [CommSemiring R] [Semiring S] [Algebra R S] (x : S) (p q : R[X])

@[simp]
theorem eval₂_mul' :
    (p * q).eval₂ (algebraMap R S) x = p.eval₂ (algebraMap R S) x * q.eval₂ (algebraMap R S) x := by
  exact eval₂_mul_noncomm _ _ fun k => Algebra.commute_algebraMap_left (coeff q k) x

@[simp]
theorem eval₂_pow' (n : ℕ) :
    (p ^ n).eval₂ (algebraMap R S) x = (p.eval₂ (algebraMap R S) x) ^ n := by
  induction n with
  | zero => simp only [pow_zero, eval₂_one]
  | succ n ih => rw [pow_succ, pow_succ, eval₂_mul', ih]

@[simp]
theorem eval₂_comp' : eval₂ (algebraMap R S) x (p.comp q) =
    eval₂ (algebraMap R S) (eval₂ (algebraMap R S) x q) p := by
  induction p using Polynomial.induction_on' with
  | add r s hr hs => simp only [add_comp, eval₂_add, hr, hs]
  | monomial n a => simp only [monomial_comp, eval₂_mul', eval₂_C, eval₂_monomial, eval₂_pow']

end Algebra

end Eval

end CommSemiring

end Polynomial
