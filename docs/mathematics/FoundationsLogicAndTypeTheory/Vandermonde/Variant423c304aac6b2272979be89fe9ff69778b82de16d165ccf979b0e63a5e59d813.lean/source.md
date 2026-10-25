# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Vandermonde.Variant423c304aac6b2272979be89fe9ff69778b82de16d165ccf979b0e63a5e59d813

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56fb77c01f63c9641fea128ddf2d7cfd8e89e0bc` · SHA-256 `b217f0b114e4047f58161e49fdb463fd6b32a3a91f9b6b6ebf024a3bee846774`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.NatAddChooseEq.Variant3a8ff787167487b406c3311fb2efe98b04c5c9b8d39f4d2d3c1d88d90174d1d6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a8ff787167487b406c3311fb2efe98b04c5c9b8d39f4d2d3c1d88d90174d1d6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.NatAddChooseEq.Variant3a8ff787167487b406c3311fb2efe98b04c5c9b8d39f4d2d3c1d88d90174d1d6","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"3a8ff787167487b406c3311fb2efe98b04c5c9b8d39f4d2d3c1d88d90174d1d6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Choose/Vandermonde.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Algebra.Polynomial.Coeff
import Mathlib.Data.Nat.Choose.Basic

/-!

# Vandermonde's identity

In this file we prove Vandermonde's identity (`Nat.add_choose_eq`):
`(m + n).choose k = ∑ (i, j) ∈ antidiagonal k, m.choose i * n.choose j`

We follow the algebraic proof from
https://en.wikipedia.org/wiki/Vandermonde%27s_identity#Algebraic_proof .

-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.NatAddChooseEq.Variant3a8ff787167487b406c3311fb2efe98b04c5c9b8d39f4d2d3c1d88d90174d1d6

open Polynomial Finset Finset.Nat

/-- Vandermonde's identity -/
theorem Nat.add_choose_eq (m n k : ℕ) :
    (m + n).choose k = ∑ ij ∈ antidiagonal k, m.choose ij.1 * n.choose ij.2 := by
  calc
    (m + n).choose k = ((X + 1) ^ (m + n)).coeff k := by rw [coeff_X_add_one_pow, Nat.cast_id]
    _ = ((X + 1) ^ m * (X + 1) ^ n).coeff k := by rw [pow_add]
    _ = ∑ ij ∈ antidiagonal k, m.choose ij.1 * n.choose ij.2 := by
      rw [coeff_mul, Finset.sum_congr rfl]
      simp only [coeff_X_add_one_pow, Nat.cast_id, eq_self_iff_true, imp_true_iff]
```
