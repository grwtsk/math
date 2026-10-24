# Complete source: GRWTSK.Algebra.LinearAlgebra.PivotFixtures.Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0017abf6ab8f869a94f88536adaa70553428dcb` · SHA-256 `f6b244221a62248066899c23590ea3f1f13d4c4d929c2d72907ed8d86803559b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PivotSubmatrixEqOne.Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.PivotSubmatrixEqOne.Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/3da8af94064932a6214c76009e48ba10493c5bb51eddbd89b2f601a63b3ec122/FormalResearch/PositiveAtlas/Grassmannian/PivotFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.PivotNormalization
import FormalResearch.PositiveAtlas.Grassmannian.Plucker24
import Mathlib.Tactic.NormNum

/-!
# Genuine subspace charts and a nonnegative pivot-failure family

The existing normalized Gr(2,4) chart now maps injectively to actual real
2-dimensional subspaces. The boundary family has rank two for every real
parameter. Its (1,2) pivot fails at zero while its (1,3) pivot remains one.
This is an exact algebraic boundary example, not a proof about global
Grassmannian topology or an identification with the quotient-rank convention.
-/


namespace GRWTSK.Algebra.LinearAlgebra.PivotSubmatrixEqOne.Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

namespace Chart24

/-- The first two columns of the existing chart are exactly the identity matrix. -/
theorem pivotSubmatrix_eq_one (x : Chart24) :
    columnSubmatrix x.matrix ![0, 1] = 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;> norm_num [columnSubmatrix, matrix, Matrix.one_apply]

/-- The explicit chart matrix determines its four parameters. -/
theorem matrix_injective : Function.Injective matrix := by
  intro x y h
  apply coordinates_injective
  exact congrArg PluckerCoordinates24.ofMatrix h

/-- Every chart matrix has genuine matrix rank two. -/
theorem matrix_rank (x : Chart24) : x.matrix.rank = 2 := by
  apply rank_eq_of_columnMinor_ne_zero x.matrix ![0, 1]
  rw [pivot_eq_one]
  norm_num

/-- Distinct chart parameters give distinct actual row subspaces. -/
theorem rowSpace_injective : Function.Injective (fun x : Chart24 => frameRowSpace x.matrix) := by
  intro x y h
  apply matrix_injective
  exact normalized_eq_of_frameRowSpace_eq x.matrix y.matrix ![0, 1]
    (pivotSubmatrix_eq_one x) (pivotSubmatrix_eq_one y) h

/-- A chart point as an actual dimension-two real subspace, without quotient-rank ambiguity. -/
def toSubspace (x : Chart24) :
    {S : Submodule ℝ (Fin 4 → ℝ) // Module.finrank ℝ S = 2} :=
  ⟨frameRowSpace x.matrix, finrank_frameRowSpace_of_columnMinor_ne_zero
    x.matrix ![0, 1] (by rw [pivot_eq_one]; norm_num)⟩

/-- Recognition reaches the ordinary subspace convention of the Grassmannian. -/
theorem toSubspace_injective : Function.Injective toSubspace := by
  intro x y h
  exact rowSpace_injective (congrArg Subtype.val h)

end Chart24

/-- A polynomial frame whose first pivot vanishes without any loss of row rank. -/
def boundaryPivotFamily (eps : ℝ) : Matrix (Fin 2) (Fin 4) ℝ :=
  !![1, 0, -1, -1; 0, eps, 1, 1]

/-- All six determinants are calculated from the frame, including their zero boundary values. -/
theorem boundaryPivotFamily_coordinates (eps : ℝ) :
    PluckerCoordinates24.ofMatrix (boundaryPivotFamily eps) = ⟨eps, 1, 1, eps, eps, 0⟩ := by
  apply PluckerCoordinates24.ext <;>
    norm_num [PluckerCoordinates24.ofMatrix, minor₂, boundaryPivotFamily,
      Matrix.cons_val_zero, Matrix.cons_val_succ]

/-- The first pivot is precisely the parameter and therefore vanishes at zero. -/
theorem boundaryPivotFamily_firstPivot (eps : ℝ) :
    columnMinor (boundaryPivotFamily eps) ![0, 1] = eps := by
  rw [← minor₂_eq_columnMinor]
  norm_num [minor₂, boundaryPivotFamily, Matrix.cons_val_zero, Matrix.cons_val_succ]

/-- An overlapping pivot stays nonzero at every parameter, including zero. -/
theorem boundaryPivotFamily_secondPivot (eps : ℝ) :
    columnMinor (boundaryPivotFamily eps) ![0, 2] = 1 := by
  rw [← minor₂_eq_columnMinor]
  norm_num [minor₂, boundaryPivotFamily, Matrix.cons_val_zero, Matrix.cons_val_succ]

/-- The original frame never loses row rank, even when the first chart fails. -/
theorem boundaryPivotFamily_rank (eps : ℝ) : (boundaryPivotFamily eps).rank = 2 := by
  apply rank_eq_of_columnMinor_ne_zero (boundaryPivotFamily eps) ![0, 2]
  rw [boundaryPivotFamily_secondPivot]
  norm_num

/-- The entire nonnegative parameter half-line stays in the ordered-minor nonnegative locus. -/
theorem boundaryPivotFamily_nonnegative (eps : ℝ) (heps : 0 ≤ eps) :
    AllOrderedMinorsNonneg (boundaryPivotFamily eps) := by
  apply PluckerCoordinates24.allOrderedMinorsNonneg_of_nonnegative
  rw [boundaryPivotFamily_coordinates]
  exact ⟨heps, by norm_num, by norm_num, heps, heps, le_rfl⟩

/-- The failed pivot and a valid overlapping pivot coexist on a full-rank boundary frame. -/
theorem boundaryPivotFamily_zero_witness :
    columnMinor (boundaryPivotFamily 0) ![0, 1] = 0 ∧
      columnMinor (boundaryPivotFamily 0) ![0, 2] = 1 ∧
      (boundaryPivotFamily 0).rank = 2 ∧
      AllOrderedMinorsNonneg (boundaryPivotFamily 0) := by
  exact ⟨boundaryPivotFamily_firstPivot 0, boundaryPivotFamily_secondPivot 0,
    boundaryPivotFamily_rank 0, boundaryPivotFamily_nonnegative 0 (le_refl 0)⟩

/-- The singular-looking coordinate is an exact reciprocal of the vanishing pivot. -/
theorem boundaryPivotFamily_firstChart_entry (eps : ℝ) (heps : eps ≠ 0) :
    pivotNormalize (boundaryPivotFamily eps) ![0, 1] 1 2 = 1 / eps := by
  have hp : columnMinor (boundaryPivotFamily eps) ![0, 1] ≠ 0 := by
    rw [boundaryPivotFamily_firstPivot]
    exact heps
  have hr := congrFun (congrFun
    (pivot_mul_pivotNormalize (boundaryPivotFamily eps) ![0, 1] hp) (1 : Fin 2))
    (2 : Fin 4)
  have he : eps * pivotNormalize (boundaryPivotFamily eps) ![0, 1] 1 2 = 1 := by
    simpa [columnSubmatrix, boundaryPivotFamily, Matrix.mul_apply, Fin.sum_univ_two] using hr
  apply (eq_div_iff heps).mpr
  simpa only [mul_comm] using he

/-- The overlapping normalized frame is polynomial and is valid even at the failed first pivot. -/
theorem boundaryPivotFamily_secondChart (eps : ℝ) :
    pivotNormalize (boundaryPivotFamily eps) ![0, 2] =
      !![1, eps, 0, 0; 0, eps, 1, 1] := by
  have hp : columnMinor (boundaryPivotFamily eps) ![0, 2] ≠ 0 := by
    rw [boundaryPivotFamily_secondPivot]
    norm_num
  apply normalized_eq_of_frameRowSpace_eq _ _ ![0, 2]
    (pivotNormalize_pivot _ _ hp)
  · ext i j
    fin_cases i <;> fin_cases j <;>
      norm_num [columnSubmatrix, Matrix.one_apply, Matrix.cons_val_zero, Matrix.cons_val_succ]
  · rw [frameRowSpace_pivotNormalize _ _ hp]
    have he : (!![1, 1; 0, 1] : Matrix (Fin 2) (Fin 2) ℝ) * boundaryPivotFamily eps =
        !![1, eps, 0, 0; 0, eps, 1, 1] := by
      ext i j
      fin_cases i <;> fin_cases j <;>
        norm_num [boundaryPivotFamily, Matrix.mul_apply, Fin.sum_univ_two]
    rw [← he, frameRowSpace_mul_left_eq _ _ (by norm_num [Matrix.det_fin_two])]

end

end FormalResearch.PositiveAtlas.Grassmannian
```
