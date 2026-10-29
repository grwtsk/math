-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PivotTransition.Variant555a2b106f5a3876bbbfaa677f355dc9dbea1c4218a608cab8c2feacba7633ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"555a2b106f5a3876bbbfaa677f355dc9dbea1c4218a608cab8c2feacba7633ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.PivotTransition.Variant555a2b106f5a3876bbbfaa677f355dc9dbea1c4218a608cab8c2feacba7633ff","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"555a2b106f5a3876bbbfaa677f355dc9dbea1c4218a608cab8c2feacba7633ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/new-cache-source-audit/source/555a2b106f5a3876bbbfaa677f355dc9dbea1c4218a608cab8c2feacba7633ff.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.IntrinsicGrassmannian
import FormalResearch.PositiveAtlas.Grassmannian.QuotientConvention

/-!
# Actual pivot matrices and coefficient variance

The transition from the frame normalized at `c` to the frame normalized at `d`
is `A_d⁻¹ A_c`. Row coefficients transform in the opposite direction. All
identities retain nonzero determinants; equality of the actual row subspaces,
rather than an assumed gauge, proves independence of the presentation.

Human direction, theorem selection, and evaluation: grwtsk contributors.
AI-assisted formal implementation: OpenAI Codex, ATLAS-GHH-DESCENT-20261007.
-/


namespace GRWTSK.Algebra.LinearAlgebra.PivotTransition.Variant555a2b106f5a3876bbbfaa677f355dc9dbea1c4218a608cab8c2feacba7633ff

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

open scoped Matrix

variable {k n : ℕ}

/-- Matrix carrying the normalized frame at `c` to that at `d`. -/
def pivotTransition (A : Matrix (Fin k) (Fin n) ℝ) (c d : Fin k → Fin n) :
    Matrix (Fin k) (Fin k) ℝ :=
  (columnSubmatrix A d)⁻¹ * columnSubmatrix A c

/-- The transition can be read from the target normalized frame. -/
theorem pivotTransition_eq_normalized_submatrix (A : Matrix (Fin k) (Fin n) ℝ)
    (c d : Fin k → Fin n) :
    pivotTransition A c d = columnSubmatrix (pivotNormalize A d) c := by
  rw [pivotNormalize, columnSubmatrix_mul_left]
  rfl

/-- The actual realization of the changed normalized frame. -/
theorem pivotTransition_mul_normalize (A : Matrix (Fin k) (Fin n) ℝ)
    (c d : Fin k → Fin n) (hc : columnMinor A c ≠ 0) :
    pivotTransition A c d * pivotNormalize A c = pivotNormalize A d := by
  rw [pivotTransition, Matrix.mul_assoc, pivot_mul_pivotNormalize A c hc]
  rfl

/-- A valid pivot has identity self-transition. -/
theorem pivotTransition_self (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hc : columnMinor A c ≠ 0) :
    pivotTransition A c c = 1 :=
  Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.mpr hc)

/-- Three valid chart choices obey matrix multiplication in their actual order. -/
theorem pivotTransition_cocycle (A : Matrix (Fin k) (Fin n) ℝ)
    (c d e : Fin k → Fin n) (hd : columnMinor A d ≠ 0) :
    pivotTransition A d e * pivotTransition A c d = pivotTransition A c e := by
  unfold pivotTransition
  rw [Matrix.mul_assoc, ← Matrix.mul_assoc (columnSubmatrix A d),
    Matrix.mul_nonsing_inv _ (isUnit_iff_ne_zero.mpr hd), Matrix.one_mul]

/-- Both orders of reverse chart transition cancel. -/
theorem pivotTransition_reverse_mul (A : Matrix (Fin k) (Fin n) ℝ)
    (c d : Fin k → Fin n) (hc : columnMinor A c ≠ 0)
    (hd : columnMinor A d ≠ 0) :
    pivotTransition A d c * pivotTransition A c d = 1 := by
  rw [pivotTransition_cocycle A c d c hd, pivotTransition_self A c hc]

/-- Every transition on the overlap is an actual nonsingular matrix. -/
theorem det_pivotTransition_ne_zero (A : Matrix (Fin k) (Fin n) ℝ)
    (c d : Fin k → Fin n) (hc : columnMinor A c ≠ 0)
    (hd : columnMinor A d ≠ 0) :
    (pivotTransition A c d).det ≠ 0 := by
  rw [pivotTransition, Matrix.det_mul, det_pivotInverse A d hd]
  exact mul_ne_zero (inv_ne_zero hd) hc

/-- Reverse transition is the nonsingular inverse, with no totalization gap. -/
theorem pivotTransition_reverse (A : Matrix (Fin k) (Fin n) ℝ)
    (c d : Fin k → Fin n) (hc : columnMinor A c ≠ 0)
    (hd : columnMinor A d ≠ 0) :
    pivotTransition A d c = (pivotTransition A c d)⁻¹ := by
  have h := pivotTransition_reverse_mul A c d hc hd
  calc
    pivotTransition A d c =
        (pivotTransition A d c * pivotTransition A c d) *
          (pivotTransition A c d)⁻¹ := by
      rw [Matrix.mul_assoc, Matrix.mul_nonsing_inv _
        (isUnit_iff_ne_zero.mpr (det_pivotTransition_ne_zero A c d hc hd)), Matrix.mul_one]
    _ = (pivotTransition A c d)⁻¹ := by rw [h, Matrix.one_mul]

/-- Determinant of a chart transition is the exact pivot ratio. -/
theorem det_pivotTransition (A : Matrix (Fin k) (Fin n) ℝ)
    (c d : Fin k → Fin n) (hd : columnMinor A d ≠ 0) :
    (pivotTransition A c d).det = columnMinor A c / columnMinor A d := by
  rw [pivotTransition, Matrix.det_mul, det_pivotInverse A d hd]
  simp only [columnMinor, div_eq_mul_inv, mul_comm]

/-- Positive pivot orientations give positive transition determinant. -/
theorem det_pivotTransition_pos (A : Matrix (Fin k) (Fin n) ℝ)
    (c d : Fin k → Fin n) (hc : 0 < columnMinor A c)
    (hd : 0 < columnMinor A d) :
    0 < (pivotTransition A c d).det := by
  rw [det_pivotTransition A c d (ne_of_gt hd)]
  exact div_pos hc hd

/-- Equal intrinsic planes have the same transition on any declared overlap. -/
theorem pivotTransition_eq_of_rowSpace_eq (A B : Matrix (Fin k) (Fin n) ℝ)
    (c d : Fin k → Fin n) (hAd : columnMinor A d ≠ 0)
    (hBd : columnMinor B d ≠ 0) (h : frameRowSpace A = frameRowSpace B) :
    pivotTransition A c d = pivotTransition B c d := by
  rw [pivotTransition_eq_normalized_submatrix, pivotTransition_eq_normalized_submatrix,
    (pivotNormalize_eq_iff_rowSpace A B d hAd hBd).mpr h]

/-- Replacement by any nonsingular row frame leaves normalization unchanged. -/
theorem pivotNormalize_mul_left (O : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin n) ℝ) (c : Fin k → Fin n)
    (hO : O.det ≠ 0) (hc : columnMinor A c ≠ 0) :
    pivotNormalize (O * A) c = pivotNormalize A c := by
  apply (pivotNormalize_eq_iff_rowSpace _ _ c ?_ hc).mpr
    (frameRowSpace_mul_left_eq O A hO)
  rw [columnMinor_mul_left]
  exact mul_ne_zero hO hc

/-- Transition matrices are invariant under orthogonal, and all invertible, row changes. -/
theorem pivotTransition_mul_left (O : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin n) ℝ) (c d : Fin k → Fin n)
    (hO : O.det ≠ 0) (hd : columnMinor A d ≠ 0) :
    pivotTransition (O * A) c d = pivotTransition A c d := by
  rw [pivotTransition_eq_normalized_submatrix, pivotTransition_eq_normalized_submatrix,
    pivotNormalize_mul_left O A d hO hd]

/-- A coefficient row in chart `c` transforms by the reverse frame transition. -/
def pivotCoefficientTransport (A : Matrix (Fin k) (Fin n) ℝ)
    (c d : Fin k → Fin n) (u : Fin k → ℝ) : Fin k → ℝ :=
  u ᵥ* pivotTransition A d c

/-- The coefficient diagram commutes with ambient vector realization. -/
theorem pivotCoefficientTransport_realize (A : Matrix (Fin k) (Fin n) ℝ)
    (c d : Fin k → Fin n) (hd : columnMinor A d ≠ 0) (u : Fin k → ℝ) :
    pivotCoefficientTransport A c d u ᵥ* pivotNormalize A d =
      u ᵥ* pivotNormalize A c := by
  rw [pivotCoefficientTransport, Matrix.vecMul_vecMul,
    pivotTransition_mul_normalize A d c hd]

/-- Coefficient transports compose with the variance required by realization. -/
theorem pivotCoefficientTransport_comp (A : Matrix (Fin k) (Fin n) ℝ)
    (c d e : Fin k → Fin n) (hd : columnMinor A d ≠ 0) (u : Fin k → ℝ) :
    pivotCoefficientTransport A d e (pivotCoefficientTransport A c d u) =
      pivotCoefficientTransport A c e u := by
  rw [pivotCoefficientTransport, pivotCoefficientTransport, pivotCoefficientTransport,
    Matrix.vecMul_vecMul, pivotTransition_cocycle A e d c hd]

/-- Actual invertible coefficient-coordinate changes on a valid overlap. -/
def pivotCoefficientEquiv (A : Matrix (Fin k) (Fin n) ℝ)
    (c d : Fin k → Fin n) (hc : columnMinor A c ≠ 0)
    (hd : columnMinor A d ≠ 0) : (Fin k → ℝ) ≃ₗ[ℝ] (Fin k → ℝ) where
  toFun := pivotCoefficientTransport A c d
  invFun := pivotCoefficientTransport A d c
  left_inv u := by
    rw [pivotCoefficientTransport_comp A c d c hd, pivotCoefficientTransport,
      pivotTransition_self A c hc, Matrix.vecMul_one]
  right_inv u := by
    rw [pivotCoefficientTransport_comp A d c d hc, pivotCoefficientTransport,
      pivotTransition_self A d hd, Matrix.vecMul_one]
  map_add' u v := Matrix.add_vecMul _ _ _
  map_smul' t u := Matrix.smul_vecMul _ _ _

/-- Rank-zero transition is identity, including the empty ambient space. -/
theorem pivotTransition_zero (A : Matrix (Fin 0) (Fin n) ℝ)
    (c d : Fin 0 → Fin n) : pivotTransition A c d = 1 := by
  ext i
  exact Fin.elim0 i

/-- Full-dimensional frames at the identity pivot normalize to the actual identity. -/
theorem pivotNormalize_whole (A : Matrix (Fin n) (Fin n) ℝ) (hA : A.det ≠ 0) :
    pivotNormalize A id = 1 := by
  change A⁻¹ * A = 1
  exact Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.mpr hA)

/-- The subspace chart locus is empty for `k > n`, unlike the truncated quotient convention. -/
theorem no_fullRankFrame_of_lt (h : n < k) : ¬ Nonempty (FullRankFrame k n) := by
  rintro ⟨A⟩
  exact no_intrinsicPlane_of_lt h ⟨representedPlane A⟩

end

end FormalResearch.PositiveAtlas.Grassmannian
