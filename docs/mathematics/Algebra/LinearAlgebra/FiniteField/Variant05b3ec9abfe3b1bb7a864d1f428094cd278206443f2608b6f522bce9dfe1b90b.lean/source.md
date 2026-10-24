# Complete source: GRWTSK.Algebra.LinearAlgebra.FiniteField.Variant05b3ec9abfe3b1bb7a864d1f428094cd278206443f2608b6f522bce9dfe1b90b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ce3170e226c2c776e04772e185222c2f8bdd5bb` · SHA-256 `9379cbab08fc4aaba47364cdc21dea3614ebe76adaa8620793ff16a5019fce06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FiniteFieldMatrixCharpolyPowCard.Variant98230f7c0b0b96027453c13e1acf626628b2435561fe3aff9c314c3cab282674","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98230f7c0b0b96027453c13e1acf626628b2435561fe3aff9c314c3cab282674","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.FiniteFieldMatrixCharpolyPowCard.Variant98230f7c0b0b96027453c13e1acf626628b2435561fe3aff9c314c3cab282674","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"98230f7c0b0b96027453c13e1acf626628b2435561fe3aff9c314c3cab282674","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Matrix/Charpoly/FiniteField.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Aaron Anderson, Jalex Stark. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson, Jalex Stark
-/
import Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff
import Mathlib.FieldTheory.Finite.Basic
import Mathlib.Data.Matrix.CharP

/-!
# Results on characteristic polynomials and traces over finite fields.
-/



namespace GRWTSK.Algebra.LinearAlgebra.FiniteFieldMatrixCharpolyPowCard.Variant98230f7c0b0b96027453c13e1acf626628b2435561fe3aff9c314c3cab282674

noncomputable section

open Polynomial Matrix

open scoped Polynomial

variable {n : Type*} [DecidableEq n] [Fintype n]

@[simp]
theorem FiniteField.Matrix.charpoly_pow_card {K : Type*} [Field K] [Fintype K] (M : Matrix n n K) :
    (M ^ Fintype.card K).charpoly = M.charpoly := by
  cases (isEmpty_or_nonempty n).symm
  · obtain ⟨p, hp⟩ := CharP.exists K; letI := hp
    rcases FiniteField.card K p with ⟨⟨k, kpos⟩, ⟨hp, hk⟩⟩
    haveI : Fact p.Prime := ⟨hp⟩
    dsimp at hk; rw [hk]
    apply (frobenius_inj K[X] p).iterate k
    repeat' rw [iterate_frobenius (R := K[X])]; rw [← hk]
    rw [← FiniteField.expand_card]
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
