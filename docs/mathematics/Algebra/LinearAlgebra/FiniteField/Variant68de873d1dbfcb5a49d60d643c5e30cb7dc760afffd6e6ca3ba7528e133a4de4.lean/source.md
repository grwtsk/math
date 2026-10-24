# Complete source: GRWTSK.Algebra.LinearAlgebra.FiniteField.Variant68de873d1dbfcb5a49d60d643c5e30cb7dc760afffd6e6ca3ba7528e133a4de4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4681139cf24b9f6161bb2f4c1a521118a38904d0` · SHA-256 `effeed54dd1968ba43da8c1d1252e27f9b90f36e18883a499f8a87a5cfc07022`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FiniteFieldMatrixCharpolyPowCard.Varianta0da82c4d40490b9e7d1b5e91ba4bf8b740baadb1e93640a53c5e12a4b76fb84","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a0da82c4d40490b9e7d1b5e91ba4bf8b740baadb1e93640a53c5e12a4b76fb84","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.FiniteFieldMatrixCharpolyPowCard.Varianta0da82c4d40490b9e7d1b5e91ba4bf8b740baadb1e93640a53c5e12a4b76fb84","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"a0da82c4d40490b9e7d1b5e91ba4bf8b740baadb1e93640a53c5e12a4b76fb84","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/Matrix/Charpoly/FiniteField.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Aaron Anderson, Jalex Stark. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson, Jalex Stark
-/
module

public import Mathlib.FieldTheory.Finite.Basic
public import Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff
public import Mathlib.LinearAlgebra.Matrix.CharP

/-!
# Results on characteristic polynomials and traces over finite fields.
-/


namespace GRWTSK.Algebra.LinearAlgebra.FiniteFieldMatrixCharpolyPowCard.Varianta0da82c4d40490b9e7d1b5e91ba4bf8b740baadb1e93640a53c5e12a4b76fb84

public section


noncomputable section

open Polynomial Matrix

open scoped Polynomial

variable {n : Type*} [DecidableEq n] [Fintype n]

@[simp]
theorem FiniteField.Matrix.charpoly_pow_card {K : Type*} [Field K] [Fintype K] (M : Matrix n n K) :
    (M ^ Fintype.card K).charpoly = M.charpoly := by
  cases (isEmpty_or_nonempty n).symm
  · obtain ⟨p, hp⟩ := CharP.exists K
    rcases FiniteField.card K p with ⟨⟨k, kpos⟩, ⟨hp, hk⟩⟩
    have : Fact p.Prime := ⟨hp⟩
    dsimp at hk; rw [hk]
    apply (frobenius_inj K[X] p).iterate k
    repeat' rw [iterate_frobenius (R := K[X])]; rw [← hk]
    rw [← FiniteField.Polynomial.expand_card]
    unfold charpoly
    rw [AlgHom.map_det, ← coe_detMonoidHom, ← (detMonoidHom : Matrix n n K[X] →* K[X]).map_pow]
    apply congr_arg det
    refine matPolyEquiv.injective ?_
    rw [map_pow, matPolyEquiv_charmatrix, hk, sub_pow_char_pow_of_commute, ← C_pow]
    · exact (id (matPolyEquiv_eq_X_pow_sub_C (p ^ k) M) :)
    · exact (C M).commute_X
  · exact congr_arg _ (Subsingleton.elim _ _)

@[simp]
theorem ZMod.charpoly_pow_card {p : ℕ} [Fact p.Prime] (M : Matrix n n (ZMod p)) :
    (M ^ p).charpoly = M.charpoly := by
  have h := FiniteField.Matrix.charpoly_pow_card M
  rwa [ZMod.card] at h

theorem FiniteField.trace_pow_card {K : Type*} [Field K] [Fintype K] (M : Matrix n n K) :
    trace (M ^ Fintype.card K) = trace M ^ Fintype.card K := by
  cases isEmpty_or_nonempty n
  · simp [Matrix.trace]
  rw [Matrix.trace_eq_neg_charpoly_coeff, Matrix.trace_eq_neg_charpoly_coeff,
    FiniteField.Matrix.charpoly_pow_card, FiniteField.pow_card]

theorem ZMod.trace_pow_card {p : ℕ} [Fact p.Prime] (M : Matrix n n (ZMod p)) :
    trace (M ^ p) = trace M ^ p := by have h := FiniteField.trace_pow_card M; rwa [ZMod.card] at h
```
