# Complete source: GRWTSK.Algebra.LinearAlgebra.DualNumber.Variant059bfdc1dc1cec6d0948854494404cb840064e61723fc2294cb15d5c2464dbe2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3075777a7967cf9c922a3d77b8b9a70371abf51a` · SHA-256 `49ea3288079ad7235310ccf99ff3d3dca625826eb0e094adf4e189f7922bcb3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MatrixDualNumberEquiv.Variantd3ad80d88a42d50fbf35c530436cbd1f589435eb8115deca12ad2767962327d0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d3ad80d88a42d50fbf35c530436cbd1f589435eb8115deca12ad2767962327d0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MatrixDualNumberEquiv.Variantd3ad80d88a42d50fbf35c530436cbd1f589435eb8115deca12ad2767962327d0","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"d3ad80d88a42d50fbf35c530436cbd1f589435eb8115deca12ad2767962327d0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Matrix/DualNumber.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.DualNumber
import Mathlib.Data.Matrix.Basic


namespace GRWTSK.Algebra.LinearAlgebra.MatrixDualNumberEquiv.Variantd3ad80d88a42d50fbf35c530436cbd1f589435eb8115deca12ad2767962327d0

#align_import data.matrix.dual_number from "leanprover-community/mathlib"@"eb0cb4511aaef0da2462207b67358a0e1fe1e2ee"

/-!
# Matrices of dual numbers are isomorphic to dual numbers over matrices

Showing this for the more general case of `TrivSqZeroExt R M` would require an action between
`Matrix n n R` and `Matrix n n M`, which would risk causing diamonds.
-/


variable {R n : Type} [CommSemiring R] [Fintype n] [DecidableEq n]

open Matrix TrivSqZeroExt

/-- Matrices over dual numbers and dual numbers over matrices are isomorphic. -/
@[simps]
def Matrix.dualNumberEquiv : Matrix n n (DualNumber R) ≃ₐ[R] DualNumber (Matrix n n R) where
  toFun A := ⟨of fun i j => (A i j).fst, of fun i j => (A i j).snd⟩
  invFun d := of fun i j => (d.fst i j, d.snd i j)
  left_inv A := Matrix.ext fun i j => TrivSqZeroExt.ext rfl rfl
  right_inv d := TrivSqZeroExt.ext (Matrix.ext fun i j => rfl) (Matrix.ext fun i j => rfl)
  map_mul' A B := by
    ext
    · dsimp [mul_apply]
      simp_rw [fst_sum]
      rfl
    · simp_rw [snd_mul, smul_eq_mul, op_smul_eq_mul]
      simp [mul_apply, snd_sum, snd_mul]
      rw [← Finset.sum_add_distrib]
  map_add' A B := TrivSqZeroExt.ext rfl rfl
  commutes' r := by
    simp_rw [algebraMap_eq_inl', algebraMap_eq_diagonal, Pi.algebraMap_def,
      Algebra.id.map_eq_self, algebraMap_eq_inl, ← diagonal_map (inl_zero R), map_apply, fst_inl,
      snd_inl]
    rfl
#align matrix.dual_number_equiv Matrix.dualNumberEquiv
```
