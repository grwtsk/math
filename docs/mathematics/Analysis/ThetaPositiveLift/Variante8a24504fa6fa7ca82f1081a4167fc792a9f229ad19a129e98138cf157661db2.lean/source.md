# Complete source: GRWTSK.Analysis.ThetaPositiveLift.Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70fa868eeeeca69d6ff9079aead2bab2c3ea6eb3` · SHA-256 `e8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPhiInvolutionCompression
import FormalResearch.PositiveAtlas.Grassmannian.PivotExistence
import Mathlib.Analysis.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.LinearAlgebra.Vandermonde

/-!
# Nondegeneracy of the theta positive Krylov frame

The involution-compression route separates the theta signed moments into a
positive magnitude frame and a fixed parity involution.  This module proves
that the positive frame is genuinely nondegenerate on every finite cutoff with

* at least one literal theta mode, and
* at least as many signed-moment support points as the requested rank.

The proof is source-specific.  The first `k` support columns factor as a
transpose Vandermonde matrix on the arithmetic nodes `4*l+5`, followed by a
strictly positive diagonal square-root weight.  Their determinant is therefore
nonzero.  This supplies full row rank and a positive-definite frame Gram
matrix, which is the finite gateway to orthogonal-polynomial/Jacobi
coordinates.

No sign is asserted for the parity-involution compression itself.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open FormalResearch.PositiveAtlas.Grassmannian
open scoped BigOperators
noncomputable section

/-- With at least one literal theta mode, every unsigned moment magnitude is
strictly positive. -/
theorem thetaPhiBaseMomentMagnitude_pos
    {N : ℕ} (hN : 0 < N) (t : ℝ) (l : ℕ) :
    0 < thetaPhiBaseMomentMagnitude N t l := by
  unfold thetaPhiBaseMomentMagnitude
  apply Finset.sum_pos'
  · intro m hm
    have hy : 0 ≤ thetaModeY m.val t :=
      (thetaModeY_pos_signedMoment m.val t).le
    positivity
  · let m0 : Fin N := ⟨0, hN⟩
    refine ⟨m0, Finset.mem_univ _, ?_⟩
    have hy : 0 < thetaModeY m0.val t :=
      thetaModeY_pos_signedMoment m0.val t
    positivity

/-- With at least one literal theta mode, every Christoffel magnitude is
strictly positive. -/
theorem thetaPhiBaseChristoffelMagnitude_pos
    {N : ℕ} (hN : 0 < N) (t : ℝ) (l : ℕ) :
    0 < thetaPhiBaseChristoffelMagnitude N t l := by
  unfold thetaPhiBaseChristoffelMagnitude
  exact mul_pos
    (thetaPhiBaseMomentMagnitude_pos hN t l)
    (thetaPhiSignedMomentNode_add_one_pos l)

/-- The arithmetic signed-moment support has no repeated nodes. -/
theorem thetaPhiSignedMomentNode_injective :
    Function.Injective thetaPhiSignedMomentNode := by
  intro a b h
  have hn : 4 * a + 5 = 4 * b + 5 := by
    change ((4 * a + 5 : ℕ) : ℝ) =
      ((4 * b + 5 : ℕ) : ℝ) at h
    exact_mod_cast h
  omega

/-- The first `k` columns of the positive Krylov frame are a transpose
Vandermonde matrix times the diagonal square-root Christoffel weights. -/
theorem thetaPhiSignedMomentKrylovPivot_submatrix_eq
    {k L N : ℕ} (hk : k ≤ L) (t : ℝ) :
    columnSubmatrix
        (thetaPhiSignedMomentKrylovFrame k L N t)
        (Fin.castLE hk) =
      (Matrix.vandermonde
          (fun j : Fin k =>
            thetaPhiSignedMomentNode j.val)).transpose *
        Matrix.diagonal
          (fun j : Fin k =>
            Real.sqrt
              (thetaPhiBaseChristoffelMagnitude
                N t j.val)) := by
  ext i j
  simp [columnSubmatrix,
    thetaPhiSignedMomentKrylovFrame,
    Matrix.mul_apply,
    Matrix.vandermonde_apply,
    Matrix.diagonal_apply]
  ring

/-- The first `k` columns form a genuine nonzero pivot whenever there is at
least one theta mode and `k <= L`. -/
theorem thetaPhiSignedMomentKrylovPivot_minor_ne_zero
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    columnMinor
        (thetaPhiSignedMomentKrylovFrame k L N t)
        (Fin.castLE hk) ≠ 0 := by
  unfold columnMinor
  rw [thetaPhiSignedMomentKrylovPivot_submatrix_eq hk t,
    Matrix.det_mul, Matrix.det_transpose,
    Matrix.det_diagonal]
  apply mul_ne_zero
  · apply Matrix.det_vandermonde_ne_zero_iff.mpr
    intro i j hij
    apply Fin.ext
    exact thetaPhiSignedMomentNode_injective hij
  · apply Finset.prod_ne_zero_iff.mpr
    intro j hj
    exact Real.sqrt_ne_zero'.mpr
      (thetaPhiBaseChristoffelMagnitude_pos
        hN t j.val)

/-- The positive theta Krylov frame has full row rank on every nondegenerate
finite cutoff. -/
theorem thetaPhiSignedMomentKrylovFrame_rank
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    (thetaPhiSignedMomentKrylovFrame k L N t).rank = k := by
  apply
    (rank_eq_iff_exists_columnMinor_ne_zero
      (thetaPhiSignedMomentKrylovFrame k L N t)).mpr
  exact
    ⟨Fin.castLE hk,
      thetaPhiSignedMomentKrylovPivot_minor_ne_zero
        hk hN t⟩

/-- Ordinary positive-frame Gram matrix for the theta Krylov frame. -/
def thetaPhiSignedMomentKrylovGram
    (k L N : ℕ) (t : ℝ) :
    Matrix (Fin k) (Fin k) ℝ :=
  thetaPhiSignedMomentKrylovFrame k L N t *
    (thetaPhiSignedMomentKrylovFrame k L N t).transpose

/-- The Gram matrix has the same rank as the positive Krylov frame. -/
theorem thetaPhiSignedMomentKrylovGram_rank
    (k L N : ℕ) (t : ℝ) :
    (thetaPhiSignedMomentKrylovGram k L N t).rank =
      (thetaPhiSignedMomentKrylovFrame k L N t).rank := by
  unfold thetaPhiSignedMomentKrylovGram
  exact
    Matrix.rank_self_mul_transpose
      (thetaPhiSignedMomentKrylovFrame k L N t)

/-- Every theta Krylov Gram matrix is positive semidefinite. -/
theorem thetaPhiSignedMomentKrylovGram_posSemidef
    (k L N : ℕ) (t : ℝ) :
    (thetaPhiSignedMomentKrylovGram k L N t).PosSemidef := by
  unfold thetaPhiSignedMomentKrylovGram
  simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
    (Matrix.posSemidef_self_mul_conjTranspose
      (thetaPhiSignedMomentKrylovFrame k L N t))

/-- Full row rank forces the positive-frame Gram determinant to be nonzero. -/
theorem thetaPhiSignedMomentKrylovGram_det_ne_zero
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    Matrix.det
        (thetaPhiSignedMomentKrylovGram k L N t) ≠ 0 := by
  let G := thetaPhiSignedMomentKrylovGram k L N t
  have hGrank : G.rank = k := by
    dsimp [G]
    rw [thetaPhiSignedMomentKrylovGram_rank]
    exact thetaPhiSignedMomentKrylovFrame_rank hk hN t
  have hli : LinearIndependent ℝ G.row := by
    apply (linearIndependent_iff_card_eq_finrank_span).mpr
    rw [Set.finrank, ← Matrix.rank_eq_finrank_span_row,
      hGrank]
    simp
  have hunit : IsUnit G :=
    Matrix.linearIndependent_rows_iff_isUnit.mp hli
  have hdetunit : IsUnit G.det :=
    (Matrix.isUnit_iff_isUnit_det G).mp hunit
  exact hdetunit.ne_zero

/-- On every cutoff with `N > 0` and `k <= L`, the positive theta Krylov
Gram matrix is positive definite.  This is the finite nondegeneracy input for
Jacobi orthogonalization. -/
theorem thetaPhiSignedMomentKrylovGram_posDef
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    (thetaPhiSignedMomentKrylovGram k L N t).PosDef := by
  have hpsd :=
    thetaPhiSignedMomentKrylovGram_posSemidef
      k L N t
  exact
    (hpsd.posDef_iff_det_ne_zero).mpr
      (thetaPhiSignedMomentKrylovGram_det_ne_zero
        hk hN t)

/-- The positive theta Krylov Gram determinant is strictly positive on
every nondegenerate finite cutoff. -/
theorem thetaPhiSignedMomentKrylovGram_det_pos
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    0 <
      Matrix.det
        (thetaPhiSignedMomentKrylovGram k L N t) :=
  (thetaPhiSignedMomentKrylovGram_posDef hk hN t).det_pos

/-- On a nondegenerate cutoff, projective normalization does not change the
sign question: its denominator is the strictly positive Krylov Gram
determinant. -/
theorem thetaPhiNormalizedParityCompression_nonnegative_iff
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    0 ≤ thetaPhiNormalizedParityCompression k L N t ↔
      0 ≤
        Matrix.det
          (thetaPhiChristoffelHankel k
            (fun n =>
              thetaPhiBaseSignedMomentTruncation
                L N n t)) := by
  rw [thetaPhiNormalizedParityCompression_eq]
  have hden :
      0 <
        Matrix.det
          (thetaPhiSignedMomentKrylovFrame
              k L N t *
            (thetaPhiSignedMomentKrylovFrame
              k L N t).transpose) := by
    simpa [thetaPhiSignedMomentKrylovGram] using
      thetaPhiSignedMomentKrylovGram_det_pos
        hk hN t
  rw [div_nonneg_iff]
  constructor
  · rintro (h | h)
    · exact h.1
    · exact False.elim ((not_le_of_gt hden) h.2)
  · intro h
    exact Or.inl ⟨h, hden.le⟩

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
