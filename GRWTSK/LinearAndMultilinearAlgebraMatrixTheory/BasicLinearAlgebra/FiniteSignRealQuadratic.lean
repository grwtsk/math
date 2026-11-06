/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSignCertificates
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.QuadraticCertificateCore

/-!
# Real quadratic returns from finite complex sign certificates

Embed each real vector coordinate into the complex field. Conjugation fixes
the embedded coordinates, and the entrywise embedding commutes with the two
finite sums in the quadratic value. Taking the real part of complex
nonnegativity therefore returns exactly the real quadratic inequality.
This supplies the sign premise for the finite lower matrix in the odd
Weil window. The LDL return allows zero pivots and does not require an
invertible factor. The Euler heat return keeps the original strict test and
positive step and iteration hypotheses.

These implications assume the exact matrix identities or inequalities
checked by their respective certificate theorems. The arithmetic
observations and independent mathematical review remain separate.
-/

set_option autoImplicit false

open Matrix
open scoped ComplexOrder

namespace GRWTSK.Algebra.LinearAlgebra.FiniteSignCertificates

open QuadraticCertificates

variable {ι : Type*} [Fintype ι]

/-- Complex positive semidefiniteness of the entrywise real embedding
implies nonnegativity on every real trial vector. -/
theorem nonnegative_real_quadratic_of_complex_posSemidef (lower : Matrix ι ι ℝ)
    (hLower : (lower.map Complex.ofReal).PosSemidef) (v : ι → ℝ) :
    0 ≤ quadratic lower v := by
  let z : ι → ℂ := fun i => (v i : ℂ)
  have hz := hLower.dotProduct_mulVec_nonneg z
  have hcast : star z ⬝ᵥ (lower.map Complex.ofReal *ᵥ z) =
      Complex.ofReal (quadratic lower v) := by
    simp [z, quadratic, dotProduct, Matrix.mulVec, Complex.ofReal_sum]
  rw [hcast, Complex.nonneg_iff] at hz
  simpa using hz.1

variable [DecidableEq ι]

/-- An exact LDL certificate with nonnegative rational pivots returns the
real quadratic premise of a finite lower-matrix comparison. -/
theorem nonnegative_real_quadratic_of_ldl (lower : Matrix ι ι ℝ)
    (L : Matrix ι ι ℂ) (pivots : ι → ℚ) (hPivots : ∀ i, 0 ≤ pivots i)
    (hLDL : lower.map Complex.ofReal = L * diagonal (fun i => (pivots i : ℂ)) * Lᴴ)
    (v : ι → ℝ) :
    0 ≤ quadratic lower v :=
  nonnegative_real_quadratic_of_complex_posSemidef lower
    (ldl_posSemidef _ L pivots hPivots hLDL) v

/-- The squared-entry Euler heat certificate returns the same real
quadratic premise via its strict complex positivity theorem. -/
theorem nonnegative_real_quadratic_of_eulerHeat (lower : Matrix ι ι ℝ)
    (hLower : (lower.map Complex.ofReal).IsHermitian)
    (h : ℚ) (hh : 0 < h) (k : ℕ) (hk : 0 < k)
    (hSum : (∑ i, ∑ j,
      Complex.normSq (((1 - (h : ℂ) • lower.map Complex.ofReal) ^ k) i j)) < 1)
    (v : ι → ℝ) :
    0 ≤ quadratic lower v :=
  nonnegative_real_quadratic_of_complex_posSemidef lower
    (eulerHeat_frobenius_posDef _ hLower h hh k hk hSum).posSemidef v

end GRWTSK.Algebra.LinearAlgebra.FiniteSignCertificates
