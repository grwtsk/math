# Complete source: GRWTSK.Algebra.LinearAlgebra.Nondegenerate.Variant4018fe6c4f6bf0a5bd7bac91f57cf01c111b0f6afb7a0e5368cec84a32778036

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eeee281477147cb52ecc2b1433abb0e9c1f337b3` · SHA-256 `32748e25501347aa4eacb83d2f1df8972414a725c6e35d1ebb5618fe67a7cf78`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Nondegenerate.Variantf70ce77f9eba6fb084bd4f98eeb007692b59a5ca9e9c54448ba4b702944af60f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f70ce77f9eba6fb084bd4f98eeb007692b59a5ca9e9c54448ba4b702944af60f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Nondegenerate.Variantf70ce77f9eba6fb084bd4f98eeb007692b59a5ca9e9c54448ba4b702944af60f","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"f70ce77f9eba6fb084bd4f98eeb007692b59a5ca9e9c54448ba4b702944af60f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Matrix/Nondegenerate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.Data.Matrix.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.LinearAlgebra.Matrix.Adjugate

/-!
# Matrices associated with non-degenerate bilinear forms

## Main definitions

* `Matrix.Nondegenerate A`: the proposition that when interpreted as a bilinear form, the matrix `A`
  is nondegenerate.

-/



namespace GRWTSK.Algebra.LinearAlgebra.Nondegenerate.Variantf70ce77f9eba6fb084bd4f98eeb007692b59a5ca9e9c54448ba4b702944af60f

namespace Matrix

variable {m R A : Type*} [CommRing R]

/-- A matrix `M` is nondegenerate if for all `v ≠ 0`, there is a `w ≠ 0` with `w * M * v ≠ 0`. -/
def Nondegenerate [Finite m] (M : Matrix m m R) :=
  letI : Fintype m := Fintype.ofFinite m
  ∀ v, (∀ w, v ⬝ᵥ M *ᵥ w = 0) → v = 0

variable [Fintype m]

lemma nondegenerate_def {M : Matrix m m R} :
    M.Nondegenerate ↔ ∀ v, (∀ w, v ⬝ᵥ M *ᵥ w = 0) → v = 0 := by
  refine forall_congr' fun v ↦ ⟨fun hM hv ↦ hM ?_, fun hM hv ↦ hM ?_⟩ <;> convert hv

/-- If `M` is nondegenerate and `w * M * v = 0` for all `w`, then `v = 0`. -/
theorem Nondegenerate.eq_zero_of_ortho {M : Matrix m m R} (hM : Nondegenerate M) {v : m → R}
    (hv : ∀ w, v ⬝ᵥ M *ᵥ w = 0) : v = 0 :=
  nondegenerate_def.mp hM v hv

/-- If `M` is nondegenerate and `v ≠ 0`, then there is some `w` such that `w * M * v ≠ 0`. -/
theorem Nondegenerate.exists_not_ortho_of_ne_zero {M : Matrix m m R} (hM : Nondegenerate M)
    {v : m → R} (hv : v ≠ 0) : ∃ w, v ⬝ᵥ M *ᵥ w ≠ 0 :=
  not_forall.mp (mt hM.eq_zero_of_ortho hv)

variable [CommRing A] [IsDomain A]

/-- If `M` has a nonzero determinant, then `M` as a bilinear form on `n → A` is nondegenerate.

See also `BilinForm.nondegenerateOfDetNeZero'` and `BilinForm.nondegenerateOfDetNeZero`.
-/
theorem nondegenerate_of_det_ne_zero [DecidableEq m] {M : Matrix m m A} (hM : M.det ≠ 0) :
    Nondegenerate M := by
  refine nondegenerate_def.mpr fun v hv ↦ ?_
  ext i
  specialize hv (M.cramer (Pi.single i 1))
  refine (mul_eq_zero.mp ?_).resolve_right hM
  convert hv
  simp only [mulVec_cramer M (Pi.single i 1), dotProduct, Pi.smul_apply, smul_eq_mul]
  rw [Finset.sum_eq_single i, Pi.single_eq_same, mul_one]
  · intro j _ hj
    simp [hj]
  · intros
    have := Finset.mem_univ i
    contradiction

theorem eq_zero_of_vecMul_eq_zero [DecidableEq m] {M : Matrix m m A} (hM : M.det ≠ 0) {v : m → A}
    (hv : v ᵥ* M = 0) : v = 0 :=
  (nondegenerate_of_det_ne_zero hM).eq_zero_of_ortho fun w => by
    rw [dotProduct_mulVec, hv, zero_dotProduct]

theorem eq_zero_of_mulVec_eq_zero [DecidableEq m] {M : Matrix m m A} (hM : M.det ≠ 0) {v : m → A}
    (hv : M *ᵥ v = 0) : v = 0 :=
  eq_zero_of_vecMul_eq_zero (by rwa [det_transpose]) ((vecMul_transpose M v).trans hv)

end Matrix
```
