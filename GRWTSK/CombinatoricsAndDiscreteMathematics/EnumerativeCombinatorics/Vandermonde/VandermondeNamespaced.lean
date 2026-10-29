-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.NatAddChooseEq.Variantff16011693392abf6f7433939ef894e9dd80bd13702770f4d37907474c1f6da4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff16011693392abf6f7433939ef894e9dd80bd13702770f4d37907474c1f6da4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.NatAddChooseEq.Variantff16011693392abf6f7433939ef894e9dd80bd13702770f4d37907474c1f6da4","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"ff16011693392abf6f7433939ef894e9dd80bd13702770f4d37907474c1f6da4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Nat/Choose/Vandermonde.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Data.Polynomial.Coeff
import Mathlib.Data.Nat.Choose.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.NatAddChooseEq.Variantff16011693392abf6f7433939ef894e9dd80bd13702770f4d37907474c1f6da4

#align_import data.nat.choose.vandermonde from "leanprover-community/mathlib"@"d6814c584384ddf2825ff038e868451a7c956f31"

/-!

# Vandermonde's identity

In this file we prove Vandermonde's identity (`Nat.add_choose_eq`):
`(m + n).choose k = ∑ (ij : ℕ × ℕ) in antidiagonal k, m.choose ij.1 * n.choose ij.2`

We follow the algebraic proof from
https://en.wikipedia.org/wiki/Vandermonde%27s_identity#Algebraic_proof .

-/


open BigOperators

open Polynomial Finset.Nat

/-- Vandermonde's identity -/
theorem Nat.add_choose_eq (m n k : ℕ) :
    (m + n).choose k = ∑ ij : ℕ × ℕ in antidiagonal k, m.choose ij.1 * n.choose ij.2 := by
  calc
    (m + n).choose k = ((X + 1) ^ (m + n)).coeff k := by rw [coeff_X_add_one_pow, Nat.cast_id]
    _ = ((X + 1) ^ m * (X + 1) ^ n).coeff k := by rw [pow_add]
    _ = ∑ ij : ℕ × ℕ in antidiagonal k, m.choose ij.1 * n.choose ij.2 := by
      rw [coeff_mul, Finset.sum_congr rfl]
      simp only [coeff_X_add_one_pow, Nat.cast_id, eq_self_iff_true, imp_true_iff]
#align nat.add_choose_eq Nat.add_choose_eq
