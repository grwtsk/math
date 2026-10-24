/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

The coefficient matrix of the actual curve-monomial image frame. The
reciprocal determinant is NOT the common denominator of one coordinate
vector. The lattice-index consequence is documented separately; no index
cardinality theorem is smuggled into the definition of this matrix.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassIntegralImage
import Mathlib.LinearAlgebra.Matrix.Block

set_option autoImplicit false
noncomputable section

namespace GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassImageFrame

open Polynomial
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open WeierstrassRescaledJet

/-- Actual polynomial representative from the inherited normalized lift. -/
def branch (A B : ℤ) (N : ℕ) : ℚ[X] := rationalPolynomial A B (N+1)

theorem branch_square_dvd (A B : ℤ) (N : ℕ) : (X : ℚ[X])^2 ∣ branch A B N := by
  apply X_pow_dvd_iff.mpr
  intro k hk
  exact rational_low A B (N+1) k hk

/-- Only this leading coefficient is needed for the full-frame determinant. -/
theorem branch_second (A B : ℤ) (hB : B≠0) (N : ℕ) :
    (branch A B N).coeff 2=1/(B : ℚ) := by
  rw [branch,rational_coefficient A B hB (N+1) 2 (by decide)]
  rw [numerator_stable A B 1 (N+1) 2 (by omega) (by decide)]
  norm_num [numeratorPolynomial,iterate]

/-- A column is a genuine product of the two curve coordinates. -/
def framePolynomial (A B : ℤ) (N k : ℕ) : ℚ[X] :=
  (branch A B N)^(k/2)*X^(k%2)

/-- Divisibility and leading coefficient hold for every frame column. -/
theorem column_factor (A B : ℤ) (hB : B≠0) (N k : ℕ) :
    ∃ g : ℚ[X], framePolynomial A B N k=X^k*g ∧
      g.coeff 0=(1/(B : ℚ))^(k/2) := by
  obtain ⟨h,hh⟩ := branch_square_dvd A B N
  have hc : h.coeff 0=1/(B : ℚ) := by
    have hs := branch_second A B hB N
    rw [hh] at hs
    exact (Polynomial.coeff_X_pow_mul h 2 0).symm.trans hs
  refine ⟨h^(k/2),?_,?_⟩
  · have hk : 2*(k/2)+k%2=k := by omega
    calc
      framePolynomial A B N k = X^(2*(k/2)+k%2)*h^(k/2) := by
        simp only [framePolynomial,hh,mul_pow,pow_mul,pow_add]
        ring
      _ = X^k*h^(k/2) := by rw [hk]
  · change Polynomial.constantCoeff (h^(k/2))=(1/(B : ℚ))^(k/2)
    rw [map_pow]
    exact congrArg (fun z : ℚ => z^(k/2)) hc

theorem column_low (A B : ℤ) (hB : B≠0) (N k i : ℕ) (hi : i<k) :
    (framePolynomial A B N k).coeff i=0 := by
  obtain ⟨g,hg,_⟩ := column_factor A B hB N k
  rw [hg]
  exact (X_pow_dvd_iff.mp ⟨g,rfl⟩) i hi

theorem column_diagonal (A B : ℤ) (hB : B≠0) (N k : ℕ) :
    (framePolynomial A B N k).coeff k=(1/(B : ℚ))^(k/2) := by
  obtain ⟨g,hg,h0⟩ := column_factor A B hB N k
  rw [hg]
  simpa using (Polynomial.coeff_X_pow_mul g k 0).trans h0

/-- Rows are old parameter coefficients; columns are ordered curve monomials. -/
def frameMatrix (A B : ℤ) (N : ℕ) : Matrix (Fin (N+1)) (Fin (N+1)) ℚ :=
  Matrix.of (fun i j => (framePolynomial A B N j.val).coeff i.val)

def weightSum (N : ℕ) : ℕ := ∑ k : Fin (N+1), k.val/2

theorem weightSum_succ (N : ℕ) : weightSum (N+1)=weightSum N+(N+1)/2 := by
  simp [weightSum,Fin.sum_univ_castSucc]

theorem weightSum_even (m : ℕ) : weightSum (2*m)=m^2 := by
  induction m with
  | zero => simp [weightSum]
  | succ m ih =>
    rw [show 2*(m+1)=2*m+1+1 by omega,weightSum_succ,weightSum_succ,ih]
    simp
    ring

theorem weightSum_odd (m : ℕ) : weightSum (2*m+1)=m*(m+1) := by
  rw [weightSum_succ,weightSum_even]
  simp
  ring

/-- Equal to floor(N^2/4); this product form avoids truncated subtraction. -/
theorem weightSum_formula (N : ℕ) : weightSum N=(N/2)*((N+1)/2) := by
  have hp : N%2=0 ∨ N%2=1 := by omega
  rcases hp with hp | hp
  · have hn : N=2*(N/2) := by omega
    conv_lhs => rw [hn]
    rw [weightSum_even]
    have hq : (N+1)/2=N/2 := by omega
    rw [hq,pow_two]
  · have hn : N=2*(N/2)+1 := by omega
    conv_lhs => rw [hn]
    rw [weightSum_odd]
    have hq : (N+1)/2=N/2+1 := by omega
    rw [hq]

theorem frame_lower (A B : ℤ) (hB : B≠0) (N : ℕ) :
    (frameMatrix A B N).IsLowerTriangular := by
  intro i j hij
  exact column_low A B hB N j.val i.val hij

/-- Exact determinant of the actual frame, NOT a definition of an index. -/
theorem frame_determinant (A B : ℤ) (hB : B≠0) (N : ℕ) :
    (frameMatrix A B N).det=(1/(B : ℚ))^(weightSum N) := by
  rw [Matrix.det_of_isLowerTriangular _ (frame_lower A B hB N)]
  simp only [frameMatrix,Matrix.of_apply,column_diagonal A B hB]
  rw [← Finset.prod_pow_eq_pow_sum] <;> rfl

theorem frame_determinant_ne_zero (A B : ℤ) (hB : B≠0) (N : ℕ) :
    (frameMatrix A B N).det≠0 := by
  rw [frame_determinant A B hB N]
  apply pow_ne_zero
  exact one_div_ne_zero (by exact_mod_cast hB)

/-- Bind every polynomial column to the actual OLD parameter-ring image. -/
theorem frame_represents (A B : ℤ) (hB : B≠0) (N k : ℕ) :
    (framePolynomial A B N k).eval₂ (FreyJetQuotient.parameterScalar ℚ N)
      (FreyJetQuotient.parameter ℚ N)=
      WeierstrassIntegralImage.term
        (WeierstrassMixedLift.lift
          (FreyJetQuotient.parameterScalar ℚ N (A : ℚ))
          (FreyJetQuotient.parameterScalar ℚ N ((B : ℚ)⁻¹))
          (FreyJetQuotient.parameter ℚ N) (N+1))
        (FreyJetQuotient.parameter ℚ N) k := by
  simp only [framePolynomial,branch,eval₂_mul,eval₂_pow,eval₂_X,
    represents_old_lift A B hB N,WeierstrassIntegralImage.term]

end GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassImageFrame
