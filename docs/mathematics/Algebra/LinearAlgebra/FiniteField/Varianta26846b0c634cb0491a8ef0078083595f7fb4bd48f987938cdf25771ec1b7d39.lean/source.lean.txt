-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FiniteFieldMatrixCharpolyPowCard.Variant7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.FiniteFieldMatrixCharpolyPowCard.Variant7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/LinearAlgebra/Matrix/Charpoly/FiniteField.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Aaron Anderson, Jalex Stark. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson, Jalex Stark
-/
import Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff
import Mathlib.FieldTheory.Finite.Basic
import Mathlib.Data.Matrix.CharP


namespace GRWTSK.Algebra.LinearAlgebra.FiniteFieldMatrixCharpolyPowCard.Variant7a8425f0bad271f725b46c42f8809745862be9c22f52fd56f01431077b853c78

#align_import linear_algebra.matrix.charpoly.finite_field from "leanprover-community/mathlib"@"b95b8c7a484a298228805c72c142f6b062eb0d70"

/-!
# Results on characteristic polynomials and traces over finite fields.
-/


noncomputable section

open Polynomial Matrix

open scoped Polynomial

variable {n : Type*} [DecidableEq n] [Fintype n]

@[simp]
theorem FiniteField.Matrix.charpoly_pow_card {K : Type*} [Field K] [Fintype K] (M : Matrix n n K) :
    (M ^ Fintype.card K).charpoly = M.charpoly := by
  cases (isEmpty_or_nonempty n).symm
  · cases' CharP.exists K with p hp; letI := hp
    rcases FiniteField.card K p with ⟨⟨k, kpos⟩, ⟨hp, hk⟩⟩
    haveI : Fact p.Prime := ⟨hp⟩
    dsimp at hk; rw [hk]
    apply (frobenius_inj K[X] p).iterate k
    repeat' rw [iterate_frobenius (R := K[X])]; rw [← hk]
    rw [← FiniteField.expand_card]
    unfold charpoly
    rw [AlgHom.map_det, ← coe_detMonoidHom, ← (detMonoidHom : Matrix n n K[X] →* K[X]).map_pow]
    apply congr_arg det
    refine' matPolyEquiv.injective _
    rw [AlgEquiv.map_pow, matPolyEquiv_charmatrix, hk, sub_pow_char_pow_of_commute, ← C_pow]
    · exact (id (matPolyEquiv_eq_x_pow_sub_c (p ^ k) M) : _)
    · exact (C M).commute_X
  · exact congr_arg _ (Subsingleton.elim _ _)
#align finite_field.matrix.charpoly_pow_card FiniteField.Matrix.charpoly_pow_card

@[simp]
theorem ZMod.charpoly_pow_card {p : ℕ} [Fact p.Prime] (M : Matrix n n (ZMod p)) :
    (M ^ p).charpoly = M.charpoly := by
  have h := FiniteField.Matrix.charpoly_pow_card M
  rwa [ZMod.card] at h
#align zmod.charpoly_pow_card ZMod.charpoly_pow_card

theorem FiniteField.trace_pow_card {K : Type*} [Field K] [Fintype K] (M : Matrix n n K) :
    trace (M ^ Fintype.card K) = trace M ^ Fintype.card K := by
  cases isEmpty_or_nonempty n
  · simp [Matrix.trace]; rw [zero_pow Fintype.card_pos]
  rw [Matrix.trace_eq_neg_charpoly_coeff, Matrix.trace_eq_neg_charpoly_coeff,
    FiniteField.Matrix.charpoly_pow_card, FiniteField.pow_card]
#align finite_field.trace_pow_card FiniteField.trace_pow_card

theorem ZMod.trace_pow_card {p : ℕ} [Fact p.Prime] (M : Matrix n n (ZMod p)) :
    trace (M ^ p) = trace M ^ p := by have h := FiniteField.trace_pow_card M; rwa [ZMod.card] at h
#align zmod.trace_pow_card ZMod.trace_pow_card
