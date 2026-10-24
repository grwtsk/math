# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Monomial.Variantc606e481711c22893a8a68f6c82568f07ed35386646f790b89b44fa05e86c3d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f014f937902e9d267939226fe821325d5d6da9a` · SHA-256 `6867752d8dc6f1dfee87200b89369e6f6e768ba866d4627ba858204c5f197ae3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.NatDegreeLePred.Variant324bd36db2a68742f57833251fb363072d2e6e30ae9e418dc8c39bfb2fc33558","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"324bd36db2a68742f57833251fb363072d2e6e30ae9e418dc8c39bfb2fc33558","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.NatDegreeLePred.Variant324bd36db2a68742f57833251fb363072d2e6e30ae9e418dc8c39bfb2fc33558","mathematical_subject":"Algebra.Polynomials","original_sha256":"324bd36db2a68742f57833251fb363072d2e6e30ae9e418dc8c39bfb2fc33558","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Polynomial/Degree/Monomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Johannes Hölzl, Kim Morrison, Jens Wagemaker
-/
import Mathlib.Algebra.Polynomial.Degree.Definitions
import Mathlib.Algebra.Polynomial.Monomial
import Mathlib.Data.Nat.SuccPred

/-!
# Degree of univariate monomials
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.NatDegreeLePred.Variant324bd36db2a68742f57833251fb363072d2e6e30ae9e418dc8c39bfb2fc33558

noncomputable section

open Finsupp Finset Polynomial

namespace Polynomial

universe u v

variable {R : Type u} {S : Type v} {a b c d : R} {n m : ℕ}

section Semiring

variable [Semiring R] {p q : R[X]} {ι : Type*}

lemma natDegree_le_pred (hf : p.natDegree ≤ n) (hn : p.coeff n = 0) : p.natDegree ≤ n - 1 := by
  obtain _ | n := n
  · exact hf
  · refine (Nat.le_succ_iff_eq_or_le.1 hf).resolve_left fun h ↦ ?_
    rw [← Nat.succ_eq_add_one, ← h, coeff_natDegree, leadingCoeff_eq_zero] at hn
    aesop

theorem monomial_natDegree_leadingCoeff_eq_self (h : #p.support ≤ 1) :
    monomial p.natDegree p.leadingCoeff = p := by
  classical
  rcases card_support_le_one_iff_monomial.1 h with ⟨n, a, rfl⟩
  by_cases ha : a = 0 <;> simp [ha]

theorem C_mul_X_pow_eq_self (h : #p.support ≤ 1) : C p.leadingCoeff * X ^ p.natDegree = p := by
  rw [C_mul_X_pow_eq_monomial, monomial_natDegree_leadingCoeff_eq_self h]

end Semiring

end Polynomial
```
