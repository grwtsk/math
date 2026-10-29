-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.QuotientMkCompCInjective.Variant6d25220ea73d42256c12e9ebabeb562e4e567f565059ea77414758a8f582f161","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d25220ea73d42256c12e9ebabeb562e4e567f565059ea77414758a8f582f161","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.QuotientMkCompCInjective.Variant6d25220ea73d42256c12e9ebabeb562e4e567f565059ea77414758a8f582f161","mathematical_subject":"Algebra.Polynomials","original_sha256":"6d25220ea73d42256c12e9ebabeb562e4e567f565059ea77414758a8f582f161","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/MvPolynomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
import Mathlib.Algebra.MvPolynomial.CommRing
import Mathlib.LinearAlgebra.Dimension.Finite
import Mathlib.LinearAlgebra.Dimension.StrongRankCondition
import Mathlib.LinearAlgebra.FreeModule.StrongRankCondition
import Mathlib.RingTheory.MvPolynomial.Basic

/-!
# Multivariate polynomials over fields

This file contains basic facts about multivariate polynomials over fields, for example that the
dimension of the space of multivariate polynomials over a field is equal to the cardinality of
finitely supported functions from the indexing set to `ℕ`.
-/



namespace GRWTSK.Algebra.CommutativeAlgebra.QuotientMkCompCInjective.Variant6d25220ea73d42256c12e9ebabeb562e4e567f565059ea77414758a8f582f161

noncomputable section

open Set LinearMap Submodule

universe u v

namespace MvPolynomial

variable (σ : Type u) (K : Type v)

theorem quotient_mk_comp_C_injective [Field K] (I : Ideal (MvPolynomial σ K)) (hI : I ≠ ⊤) :
    Function.Injective ((Ideal.Quotient.mk I).comp MvPolynomial.C) := by
  refine (injective_iff_map_eq_zero _).2 fun x hx => ?_
  rw [RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem] at hx
  refine _root_.by_contradiction fun hx0 => absurd (I.eq_top_iff_one.2 ?_) hI
  have := I.mul_mem_left (MvPolynomial.C x⁻¹) hx
  rwa [← MvPolynomial.C.map_mul, inv_mul_cancel₀ hx0, MvPolynomial.C_1] at this

variable {σ K} [CommRing K] [Nontrivial K]
open Cardinal

theorem rank_eq_lift : Module.rank K (MvPolynomial σ K) = lift.{v} #(σ →₀ ℕ) := by
  rw [← Cardinal.lift_inj, ← (basisMonomials σ K).mk_eq_rank, lift_lift, lift_umax.{u,v}]

theorem rank_eq {σ : Type v} : Module.rank K (MvPolynomial σ K) = #(σ →₀ ℕ) := by
  rw [← Cardinal.lift_inj, ← (basisMonomials σ K).mk_eq_rank]

@[deprecated (since := "2024-11-07")] alias rank_mvPolynomial := rank_eq

theorem finrank_eq_zero [Nonempty σ] : Module.finrank K (MvPolynomial σ K) = 0 :=
  (basisMonomials σ K).linearIndependent.finrank_eq_zero_of_infinite

omit [Nontrivial K] in
theorem finrank_eq_one [IsEmpty σ] : Module.finrank K (MvPolynomial σ K) = 1 :=
  Module.rank_eq_one_iff_finrank_eq_one.mp <| by
    cases subsingleton_or_nontrivial K <;> simp [rank_eq_lift]

end MvPolynomial
