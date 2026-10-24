# Complete source: GRWTSK.Algebra.LinearAlgebra.Permutation.Variant0001cac8612da6630b57fe9a4bc0b13355db879d823c2fe6a52fd93cccf3f81a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18ba1debfc75428d36699ea0b55b345f262d6fff` · SHA-256 `d2f2f0baf0a64073c5b14ccfda89c0152230eea5a9b6637a666ccbf41984f4bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.EquivPermPermMatrix.Variantc8a32d6b3ece7d9ce4ac12ee9771ed84d646d3fa1171461ddc114d5c6c85bddc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c8a32d6b3ece7d9ce4ac12ee9771ed84d646d3fa1171461ddc114d5c6c85bddc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.EquivPermPermMatrix.Variantc8a32d6b3ece7d9ce4ac12ee9771ed84d646d3fa1171461ddc114d5c6c85bddc","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"c8a32d6b3ece7d9ce4ac12ee9771ed84d646d3fa1171461ddc114d5c6c85bddc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Matrix/Permutation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/

import Mathlib.Data.Matrix.PEquiv
import Mathlib.Data.Set.Card
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.LinearAlgebra.Matrix.Trace

/-!
# Permutation matrices

This file defines the matrix associated with a permutation

## Main definitions

- `Equiv.Perm.permMatrix`: the permutation matrix associated with an `Equiv.Perm`

## Main results

- `Matrix.det_permutation`: the determinant is the sign of the permutation
- `Matrix.trace_permutation`: the trace is the number of fixed points of the permutation

-/


namespace GRWTSK.Algebra.LinearAlgebra.EquivPermPermMatrix.Variantc8a32d6b3ece7d9ce4ac12ee9771ed84d646d3fa1171461ddc114d5c6c85bddc

open Equiv

variable {n R : Type*} [DecidableEq n] (σ : Perm n)

variable (R) in
/-- the permutation matrix associated with an `Equiv.Perm` -/
abbrev Equiv.Perm.permMatrix [Zero R] [One R] : Matrix n n R :=
  σ.toPEquiv.toMatrix

namespace Matrix

@[simp]
lemma transpose_permMatrix [Zero R] [One R] : (σ.permMatrix R).transpose = (σ⁻¹).permMatrix R := by
  rw [← PEquiv.toMatrix_symm, ← Equiv.toPEquiv_symm, ← Equiv.Perm.inv_def]

@[simp]
lemma conjTranspose_permMatrix [NonAssocSemiring R] [StarRing R] :
    (σ.permMatrix R).conjTranspose = (σ⁻¹).permMatrix R := by
  simp only [conjTranspose, transpose_permMatrix, map]
  aesop

variable [Fintype n]

/-- The determinant of a permutation matrix equals its sign. -/
@[simp]
theorem det_permutation [CommRing R] : det (σ.permMatrix R) = Perm.sign σ := by
  rw [← Matrix.mul_one (σ.permMatrix R), PEquiv.toMatrix_toPEquiv_mul,
    det_permute, det_one, mul_one]

/-- The trace of a permutation matrix equals the number of fixed points. -/
theorem trace_permutation [AddCommMonoidWithOne R] :
    trace (σ.permMatrix R) = (Function.fixedPoints σ).ncard := by
  delta trace
  simp [toPEquiv_apply, ← Set.ncard_coe_Finset, Function.fixedPoints, Function.IsFixedPt]

end Matrix
```
