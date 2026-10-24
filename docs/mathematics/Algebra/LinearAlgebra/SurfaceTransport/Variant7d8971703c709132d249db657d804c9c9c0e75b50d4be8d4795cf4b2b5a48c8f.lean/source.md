# Complete source: GRWTSK.Algebra.LinearAlgebra.SurfaceTransport.Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `701f8920c676a3e4c1085cca1531e9a38e0bc7f3` · SHA-256 `7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Descent
import Mathlib.Geometry.Euclidean.Angle.Unoriented.CrossProduct
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.Analysis.Normed.Module.Normalize

/-!
# Local transport of tangent area in three dimensions

The area ratio is defined from the original and transformed tangent parallelograms,
using the Euclidean norm. Its inverse-transpose expression is a theorem derived from
the cross-product identity. These are local linear identities, not a global area
formula or a claim about existence or regularity of a fluid flow.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SurfaceBulk

open Matrix
open scoped RealInnerProductSpace

/-- Three-dimensional real space with its Euclidean, rather than coordinate supremum, norm. -/
abbrev Space := EuclideanSpace ℝ (Fin 3)

/-- A real linear deformation represented in the standard orthonormal basis. -/
abbrev Deformation := Matrix (Fin 3) (Fin 3) ℝ

/-- Matrix action transported to the Euclidean space type. -/
def act (F : Deformation) (v : Space) : Space :=
  WithLp.toLp 2 (F.mulVec (WithLp.ofLp v))

/-- The oriented cross product, with Euclidean input and output norms. -/
def cross (a b : Space) : Space :=
  WithLp.toLp 2 (WithLp.ofLp a ⨯₃ WithLp.ofLp b)

/-- Cofactors use the convention adjugate transpose. -/
def cofactor (F : Deformation) : Deformation := F.adjugate.transpose

/-- The Euclidean area of the parallelogram spanned by two tangents. -/
noncomputable def tangentArea (a b : Space) : ℝ := ‖cross a b‖

/-- The transformed tangent area divided by the original tangent area. -/
noncomputable def localAreaStretch (F : Deformation) (a b : Space) : ℝ :=
  tangentArea (act F a) (act F b) / tangentArea a b

/-- The area definition agrees with the usual length-times-length-times-sine formula. -/
theorem tangentArea_eq_norm_mul_sin (a b : Space) :
    tangentArea a b = ‖a‖ * ‖b‖ * Real.sin (InnerProductGeometry.angle a b) :=
  InnerProductGeometry.norm_ofLp_crossProduct a b

/-- An orthonormal tangent pair spans a parallelogram of area one. -/
theorem tangentArea_eq_one_of_unit_orthogonal (a b : Space)
    (ha : ‖a‖ = 1) (hb : ‖b‖ = 1) (hab : ⟪a, b⟫ = 0) :
    tangentArea a b = 1 := by
  rw [tangentArea_eq_norm_mul_sin, ha, hb,
    (InnerProductGeometry.inner_eq_zero_iff_angle_eq_pi_div_two a b).mp hab]
  simp

/-- The cross product of transformed tangents is the cofactor action on their cross product. -/
theorem cross_act (F : Deformation) (a b : Space) :
    cross (act F a) (act F b) = act (cofactor F) (cross a b) := by
  apply WithLp.ofLp_injective 2
  ext i
  fin_cases i <;>
    simp [cross, act, cofactor, cross_apply, Matrix.adjugate_fin_three,
      Matrix.mulVec, dotProduct, Fin.sum_univ_succ] <;> ring

/-- At determinant one the cofactor matrix is precisely the inverse transpose. -/
theorem cofactor_eq_inverse_transpose_of_det_one (F : Deformation) (hF : F.det = 1) :
    cofactor F = (F⁻¹).transpose := by
  simp [cofactor, Matrix.inv_def, hF]

/-- The unit-frame area ratio is the inverse-transpose norm of its oriented unit normal. -/
theorem localAreaStretch_eq_inverse_transpose (F : Deformation) (a b n₀ : Space)
    (hF : F.det = 1) (ha : ‖a‖ = 1) (hb : ‖b‖ = 1)
    (hab : ⟪a, b⟫ = 0) (hn : cross a b = n₀) :
    localAreaStretch F a b = ‖act (F⁻¹).transpose n₀‖ := by
  unfold localAreaStretch
  rw [tangentArea_eq_one_of_unit_orthogonal a b ha hb hab, div_one]
  unfold tangentArea
  rw [cross_act, cofactor_eq_inverse_transpose_of_det_one F hF, hn]

/-- Matrix action commutes with scalar multiplication on Euclidean vectors. -/
theorem act_smul (F : Deformation) (r : ℝ) (v : Space) :
    act F (r • v) = r • act F v := by
  simp [act, Matrix.mulVec_smul]

/-- The area ratio has a normalized-cross expression; both sides vanish for a degenerate pair. -/
theorem localAreaStretch_eq_normalized_inverse_transpose (F : Deformation) (a b : Space)
    (hF : F.det = 1) :
    localAreaStretch F a b =
      ‖act (F⁻¹).transpose (NormedSpace.normalize (cross a b))‖ := by
  rw [NormedSpace.normalize, act_smul, norm_smul, Real.norm_eq_abs, abs_inv,
    abs_of_nonneg (norm_nonneg _)]
  unfold localAreaStretch tangentArea
  rw [cross_act, cofactor_eq_inverse_transpose_of_det_one F hF]
  ring

/-- The transformed tangent area equals the original area times the inverse-normal factor. -/
theorem tangentArea_act_eq_normalized_inverse_transpose (F : Deformation) (a b : Space)
    (hF : F.det = 1) :
    tangentArea (act F a) (act F b) = tangentArea a b *
      ‖act (F⁻¹).transpose (NormedSpace.normalize (cross a b))‖ := by
  unfold tangentArea
  rw [cross_act, cofactor_eq_inverse_transpose_of_det_one F hF]
  have h : act (F⁻¹).transpose (cross a b) =
      ‖cross a b‖ • act (F⁻¹).transpose (NormedSpace.normalize (cross a b)) := by
    rw [← act_smul, NormedSpace.norm_smul_normalize]
  rw [h, norm_smul, Real.norm_eq_abs, abs_of_nonneg (norm_nonneg _)]

/-- Identity matrix action fixes every Euclidean vector. -/
@[simp] theorem act_one (v : Space) : act 1 v = v := by
  simp [act]

/-- Matrix action takes the zero Euclidean vector to zero. -/
@[simp] theorem act_zero (F : Deformation) : act F 0 = 0 := by
  simp [act]

/-- Composition of matrix actions agrees with multiplication of matrices. -/
theorem act_mul (F G : Deformation) (v : Space) :
    act F (act G v) = act (F * G) v := by
  simp [act, Matrix.mulVec_mulVec]

/-- A determinant-one cofactor cannot annihilate a nonzero vector. -/
theorem act_cofactor_ne_zero (F : Deformation) (hF : F.det = 1)
    (v : Space) (hv : v ≠ 0) : act (cofactor F) v ≠ 0 := by
  have hprod : F.transpose * cofactor F = 1 := by
    rw [cofactor, ← Matrix.transpose_mul, Matrix.adjugate_mul, hF]
    simp
  intro h
  apply hv
  calc
    v = act 1 v := (act_one v).symm
    _ = act F.transpose (act (cofactor F) v) := by rw [act_mul, hprod]
    _ = 0 := by rw [h, act_zero]

/-- Determinant-one transport preserves nondegeneracy of a tangent parallelogram. -/
theorem cross_act_ne_zero (F : Deformation) (hF : F.det = 1)
    (a b : Space) (hab : cross a b ≠ 0) : cross (act F a) (act F b) ≠ 0 := by
  rw [cross_act]
  exact act_cofactor_ne_zero F hF (cross a b) hab

/-- A nondegenerate tangent frame has strictly positive local area stretch at determinant one. -/
theorem localAreaStretch_pos (F : Deformation) (hF : F.det = 1)
    (a b : Space) (hab : cross a b ≠ 0) : 0 < localAreaStretch F a b := by
  exact div_pos (norm_pos_iff.mpr (cross_act_ne_zero F hF a b hab))
    (norm_pos_iff.mpr hab)

/-- The unit normal is constructed from the transformed tangents themselves. -/
noncomputable def transportedNormal (F : Deformation) (a b : Space) : Space :=
  NormedSpace.normalize (cross (act F a) (act F b))

/-- For nondegenerate tangents, the geometrically constructed transported normal has norm one. -/
theorem transportedNormal_norm (F : Deformation) (hF : F.det = 1)
    (a b : Space) (hab : cross a b ≠ 0) : ‖transportedNormal F a b‖ = 1 :=
  NormedSpace.norm_normalize (cross_act_ne_zero F hF a b hab)

/-- The tangent normal equals the normalized inverse-transpose image. -/
theorem transportedNormal_eq_inverse_transpose (F : Deformation) (a b n₀ : Space)
    (hF : F.det = 1) (hn : cross a b = n₀) :
    transportedNormal F a b = NormedSpace.normalize (act (F⁻¹).transpose n₀) := by
  unfold transportedNormal
  rw [cross_act, cofactor_eq_inverse_transpose_of_det_one F hF, hn]

/-- The standard Euclidean unit vector along a specified coordinate axis. -/
noncomputable def axis (i : Fin 3) : Space := EuclideanSpace.single i 1

/-- Each standard coordinate vector has Euclidean norm one. -/
@[simp] theorem axis_norm (i : Fin 3) : ‖axis i‖ = 1 := by
  simp [axis]

/-- The ordered third and first coordinate tangents have second coordinate unit normal. -/
theorem cross_axis_two_zero : cross (axis 2) (axis 0) = axis 1 := by
  apply WithLp.ofLp_injective 2
  ext i
  fin_cases i <;>
    norm_num [cross, axis, EuclideanSpace.single, PiLp.ofLp_single,
      Pi.single_apply, cross_apply] <;> decide

/-- The fixed coordinate tangents in the determinant obstruction are orthogonal. -/
theorem axis_two_zero_orthogonal : ⟪axis 2, axis 0⟫ = 0 := by
  simp [axis, EuclideanSpace.inner_single_left]

/-- A diagonal family expanding the first axis and contracting the second reciprocally. -/
noncomputable def diagonalStretch (r : ℝ) : Deformation :=
  Matrix.diagonal ![r, r⁻¹, 1]

/-- Every positive parameter in the diagonal family has determinant one. -/
theorem diagonalStretch_det (r : ℝ) (hr : 0 < r) : (diagonalStretch r).det = 1 := by
  simp [diagonalStretch, Matrix.det_diagonal, Fin.prod_univ_succ, hr.ne']

/-- The diagonal family fixes the third coordinate tangent. -/
theorem diagonalStretch_act_axis_two (r : ℝ) : act (diagonalStretch r) (axis 2) = axis 2 := by
  apply WithLp.ofLp_injective 2
  ext i
  fin_cases i <;>
    simp [act, diagonalStretch, axis]

/-- The diagonal family multiplies the first coordinate tangent by its parameter. -/
theorem diagonalStretch_act_axis_zero (r : ℝ) :
    act (diagonalStretch r) (axis 0) = r • axis 0 := by
  apply WithLp.ofLp_injective 2
  ext i
  fin_cases i <;>
    simp [act, diagonalStretch, axis]

/-- Cross products are linear in the second tangent. -/
theorem cross_smul_right (a b : Space) (r : ℝ) : cross a (r • b) = r • cross a b := by
  simp [cross]

/-- The diagonal family realizes every positive local area stretch at fixed determinant one. -/
theorem diagonalStretch_localAreaStretch (r : ℝ) (hr : 0 < r) :
    localAreaStretch (diagonalStretch r) (axis 2) (axis 0) = r := by
  unfold localAreaStretch tangentArea
  rw [diagonalStretch_act_axis_two, diagonalStretch_act_axis_zero,
    cross_smul_right, cross_axis_two_zero, norm_smul, axis_norm]
  simp [Real.norm_eq_abs, abs_of_pos hr]

/-- Identity has local area stretch one on the fixed coordinate tangents. -/
theorem identity_localAreaStretch : localAreaStretch 1 (axis 2) (axis 0) = 1 := by
  simp [localAreaStretch, tangentArea, cross_axis_two_zero]

/-- Two actual determinant-one linear maps disagree on the same local tangent area ratio. -/
noncomputable def determinantAreaObstruction :
    DescentObstruction (fun F : Deformation => F.det)
      (fun F => localAreaStretch F (axis 2) (axis 0)) where
  left := 1
  right := diagonalStretch 2
  sameCarrier := by rw [Matrix.det_one, diagonalStretch_det 2 (by norm_num)]
  targetSeparated := by
    rw [identity_localAreaStretch, diagonalStretch_localAreaStretch 2 (by norm_num)]
    norm_num

/-- The determinant alone cannot recover local tangent area stretch for all linear maps. -/
theorem localAreaStretch_not_determined_by_determinant :
    ¬DescendsThrough (fun F : Deformation => F.det)
      (fun F => localAreaStretch F (axis 2) (axis 0)) :=
  descent_obstruction_not_descends determinantAreaObstruction

/-- No scalar function of determinant reproduces the actual local tangent area ratio. -/
theorem no_determinant_area_decoder :
    ¬∃ recover : ℝ → ℝ, ∀ F : Deformation,
      recover F.det = localAreaStretch F (axis 2) (axis 0) :=
  descent_obstruction_no_factorization determinantAreaObstruction

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SurfaceBulk
```
