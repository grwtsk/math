-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.EigenvalueMemBall.Varianta9140003c1269599af4522098500ed5cf3194671c766d6abf876642c4a9dd4e2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a9140003c1269599af4522098500ed5cf3194671c766d6abf876642c4a9dd4e2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.EigenvalueMemBall.Varianta9140003c1269599af4522098500ed5cf3194671c766d6abf876642c4a9dd4e2","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"a9140003c1269599af4522098500ed5cf3194671c766d6abf876642c4a9dd4e2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/LinearAlgebra/Matrix/Gershgorin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Xavier Roblot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Roblot
-/
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.LinearAlgebra.Eigenspace.Basic
import Mathlib.LinearAlgebra.Determinant

/-!
# Gershgorin's circle theorem

This file gives the proof of Gershgorin's circle theorem `eigenvalue_mem_ball` on the eigenvalues
of matrices and some applications.

## Reference

* https://en.wikipedia.org/wiki/Gershgorin_circle_theorem
-/


namespace GRWTSK.Algebra.LinearAlgebra.EigenvalueMemBall.Varianta9140003c1269599af4522098500ed5cf3194671c766d6abf876642c4a9dd4e2

open BigOperators

variable {K n : Type*} [NormedField K] [Fintype n] [DecidableEq n] {A : Matrix n n K}

/-- **Gershgorin's circle theorem**: for any eigenvalue `μ` of a square matrix `A`, there exists an
index `k` such that `μ` lies in the closed ball of center the diagonal term `A k k` and of
radius the sum of the norms `∑ j ≠ k, ‖A k j‖. -/
theorem eigenvalue_mem_ball {μ : K} (hμ : Module.End.HasEigenvalue (Matrix.toLin' A) μ) :
      ∃ k, μ ∈ Metric.closedBall (A k k) (∑ j in Finset.univ.erase k, ‖A k j‖) := by
  cases isEmpty_or_nonempty n
  · exfalso
    exact hμ (Submodule.eq_bot_of_subsingleton _)
  · obtain ⟨v, h_eg, h_nz⟩ := hμ.exists_hasEigenvector
    obtain ⟨i, -, h_i⟩ := Finset.exists_mem_eq_sup' Finset.univ_nonempty (fun i => ‖v i‖)
    have h_nz : v i ≠ 0 := by
      contrapose! h_nz
      ext j
      rw [Pi.zero_apply, ← norm_le_zero_iff]
      refine (h_i ▸ Finset.le_sup' (fun i => ‖v i‖) (Finset.mem_univ j)).trans ?_
      exact norm_le_zero_iff.mpr h_nz
    have h_le : ∀ j, ‖v j * (v i)⁻¹‖ ≤ 1 := fun j => by
      rw [norm_mul, norm_inv, mul_inv_le_iff' (norm_pos_iff.mpr h_nz), one_mul]
      exact h_i ▸ Finset.le_sup' (fun i => ‖v i‖) (Finset.mem_univ j)
    simp_rw [mem_closedBall_iff_norm']
    refine ⟨i, ?_⟩
    calc
      _ = ‖(A i i * v i - μ * v i) * (v i)⁻¹‖ := by congr; field_simp [h_nz]; ring
      _ = ‖(A i i * v i - ∑ j, A i j * v j) * (v i)⁻¹‖ := by
                rw [show μ * v i = ∑ x : n, A i x * v x by
                  rw [← Matrix.dotProduct, ← Matrix.mulVec]
                  exact (congrFun (Module.End.mem_eigenspace_iff.mp h_eg) i).symm]
      _ = ‖(∑ j in Finset.univ.erase i, A i j * v j) * (v i)⁻¹‖ := by
                rw [Finset.sum_erase_eq_sub (Finset.mem_univ i), ← neg_sub, neg_mul, norm_neg]
      _ ≤ ∑ j in Finset.univ.erase i, ‖A i j‖ * ‖v j * (v i)⁻¹‖ := by
                rw [Finset.sum_mul]
                exact (norm_sum_le _ _).trans (le_of_eq (by simp_rw [mul_assoc, norm_mul]))
      _ ≤ ∑ j in Finset.univ.erase i, ‖A i j‖ :=
                (Finset.sum_le_sum fun j _ => mul_le_of_le_one_right (norm_nonneg _) (h_le j))

/-- If `A` is a row strictly dominant diagonal matrix, then it's determinant is nonzero. -/
theorem det_ne_zero_of_sum_row_lt_diag (h : ∀ k, ∑ j in Finset.univ.erase k, ‖A k j‖ < ‖A k k‖) :
    A.det ≠ 0 := by
  contrapose! h
  suffices ∃ k, 0 ∈ Metric.closedBall (A k k) (∑ j in Finset.univ.erase k, ‖A k j‖) by
    exact this.imp (fun a h ↦ by rwa [mem_closedBall_iff_norm', sub_zero] at h)
  refine eigenvalue_mem_ball ?_
  rw [Module.End.HasEigenvalue,  Module.End.eigenspace_zero, ne_comm]
  exact ne_of_lt (LinearMap.bot_lt_ker_of_det_eq_zero (by rwa [LinearMap.det_toLin']))

/-- If `A` is a column strictly dominant diagonal matrix, then it's determinant is nonzero. -/
theorem det_ne_zero_of_sum_col_lt_diag (h : ∀ k, ∑ i in Finset.univ.erase k, ‖A i k‖ < ‖A k k‖) :
    A.det ≠ 0 := by
  rw [← Matrix.det_transpose]
  exact det_ne_zero_of_sum_row_lt_diag (by simp_rw [Matrix.transpose_apply]; exact h)
