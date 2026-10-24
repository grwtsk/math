# Complete source: GRWTSK.Algebra.UniversalAlgebra.Fin.Variant88681c9207aeb0b375e7ce3e6eb978190821e5d34ec42880c29ca3bdf381a92d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `114e6a87c7d7f743f293cc57a83e4f0244f913cd` · SHA-256 `6df3e720c79f5dc0a91839efedfe69b0e985cd6417a039c64b2fca724007f359`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.SumCons.Variant604a3503b6cc8feebacc003c4975bc41d50a9591eae78f07171544322d5e4d6e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"604a3503b6cc8feebacc003c4975bc41d50a9591eae78f07171544322d5e4d6e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.SumCons.Variant604a3503b6cc8feebacc003c4975bc41d50a9591eae78f07171544322d5e4d6e","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"604a3503b6cc8feebacc003c4975bc41d50a9591eae78f07171544322d5e4d6e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/BigOperators/Finsupp/Fin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Bolton Bailey. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bolton Bailey
-/
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Algebra.BigOperators.Finsupp.Basic
import Mathlib.Data.Finsupp.Fin

/-!
# `Finsupp.sum` and `Finsupp.prod` over `Fin`

This file contains theorems relevant to big operators in finitely supported functions over `Fin`.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.SumCons.Variant604a3503b6cc8feebacc003c4975bc41d50a9591eae78f07171544322d5e4d6e

namespace Finsupp

variable {M N : Type*}

lemma sum_cons [AddCommMonoid M] (n : ℕ) (σ : Fin n →₀ M) (i : M) :
    (sum (cons i σ) fun _ e ↦ e) = i + sum σ (fun _ e ↦ e) := by
  rw [sum_fintype _ _ (fun _ => rfl), sum_fintype _ _ (fun _ => rfl)]
  exact Fin.sum_cons i σ

lemma sum_cons' [Zero M] [AddCommMonoid N] (n : ℕ) (σ : Fin n →₀ M) (i : M)
    (f : Fin (n+1) → M → N) (h : ∀ x, f x 0 = 0) :
    (sum (Finsupp.cons i σ) f) = f 0 i + sum σ (Fin.tail f) := by
  rw [sum_fintype _ _ (fun _ => by apply h), sum_fintype _ _ (fun _ => by apply h)]
  simp_rw [Fin.sum_univ_succ, cons_zero, cons_succ]
  congr

end Finsupp
```
