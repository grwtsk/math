import DAF.Hilbert.Bicomplex

/-!
# Finite harmonic terrain states

Harmonicity is the kernel of the exact finite Hodge Laplacian.  Positivity is
proved from the Hermitian Hodge--Dirac matrix; it is not a numerical
eigenvalue check.
-/

noncomputable section

namespace DAF.Hilbert

open scoped InnerProductSpace

universe u

variable {Index : Type u} [Fintype Index] [DecidableEq Index]

namespace FiniteDifferentialComplex

/-- A finite cochain is harmonic precisely when its Laplacian vanishes. -/
def IsHarmonic (complex : FiniteDifferentialComplex Index)
    (vector : FiniteHilbert Index) : Prop :=
  complex.laplacianOperator vector = 0

theorem harmonic_iff_mem_ker_laplacian
    (complex : FiniteDifferentialComplex Index)
    (vector : FiniteHilbert Index) :
    complex.IsHarmonic vector ↔
      vector ∈ LinearMap.ker complex.laplacianOperator :=
  Iff.rfl

/-- The finite Hodge Laplacian has nonnegative quadratic form. -/
theorem laplacian_positive
    (complex : FiniteDifferentialComplex Index)
    (vector : FiniteHilbert Index) :
    0 ≤ (inner ℂ (complex.laplacianOperator vector) vector).re := by
  let dirac := complex.hodgeDirac
  have symmetric : dirac.toLinearMap.IsSymmetric :=
    FiniteOperator.isSymmetric_toLinearMap_iff dirac |>.mpr
      complex.hodgeDirac_isHermitian
  change 0 ≤ (inner ℂ (complex.laplacian.toLinearMap vector) vector).re
  rw [← complex.hodgeDirac_square]
  have square_apply :
      FiniteOperator.toLinearMap (dirac * dirac) vector =
        dirac.toLinearMap (dirac.toLinearMap vector) := by
    apply PiLp.ext
    intro index
    change Matrix.mulVec (dirac * dirac) vector.ofLp index =
      Matrix.mulVec dirac (Matrix.mulVec dirac vector.ofLp) index
    rw [Matrix.mulVec_mulVec]
  rw [square_apply]
  rw [symmetric (dirac.toLinearMap vector) vector]
  exact inner_self_nonneg (𝕜 := ℂ) (x := dirac.toLinearMap vector)

end FiniteDifferentialComplex

end DAF.Hilbert
