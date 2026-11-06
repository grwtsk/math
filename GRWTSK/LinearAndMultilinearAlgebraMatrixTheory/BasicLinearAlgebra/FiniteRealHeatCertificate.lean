/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSignCertificates
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.QuadraticCertificateCore

/-!
# Return the existing complex Euler-heat certificate to a real quadratic form

Reuse `FiniteSignCertificates.eulerHeat_posDef`; do not introduce another
sign checker. A real matrix is included coefficientwise in the complex
matrix algebra. Evaluating its Hermitian form on an included real vector
is exactly the included real quadratic value. Positivity therefore returns
to every real vector, including zero. The trace is ordinary and unnormalized.

Consumer: the literal odd Weil lower-matrix assembly. No source comparison,
passing trace, or cofinal arithmetic sign is produced by this adapter.
The strict trace guard excludes a zero eigenvalue; replacing it by `<= 1`
would be unsound for a strict certificate. Singular signs may instead use
the existing Gram checker. This is interoperability, not a new criterion.

Baseline: grwtsk/math c5648c5a280d1cbdf4f98b594a450aaa5e4969c9;
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
AI-assisted manual source. Elaboration, kernel replay, transitive axiom
audit and independent mathematical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Matrix
open scoped BigOperators ComplexOrder

namespace GRWTSK.Algebra.LinearAlgebra.FiniteRealHeatCertificate

open QuadraticCertificates FiniteSignCertificates

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

def complexify (M : Matrix ι ι ℝ) : Matrix ι ι ℂ := M.map Complex.ofReal

/-- Equality of the two actual quadratic evaluations, not an analogy of signs. -/
theorem complexify_quadratic (M : Matrix ι ι ℝ) (v : ι → ℝ) :
    star (fun i => (v i : ℂ)) ⬝ᵥ
      (complexify M).mulVec (fun i => (v i : ℂ)) = (quadratic M v : ℂ) := by
  simp only [complexify, quadratic, dotProduct, Matrix.mulVec, Matrix.map_apply,
    Pi.star_apply, Complex.star_def, Complex.conj_ofReal,
    Complex.ofReal_sum, Complex.ofReal_mul]

theorem quadratic_nonneg_of_complexify_posSemidef (M : Matrix ι ι ℝ)
    (hM : (complexify M).PosSemidef) (v : ι → ℝ) : 0 ≤ quadratic M v := by
  have h := hM.dotProduct_mulVec_nonneg (fun i => (v i : ℂ))
  rw [complexify_quadratic] at h
  simpa [Complex.nonneg_iff] using h

/-- The already-proved finite heat theorem now has the real source consumer. -/
theorem quadratic_nonneg_of_eulerHeat (M : Matrix ι ι ℝ)
    (hM : (complexify M).IsHermitian) (h : ℚ) (hh : 0 < h)
    (k : ℕ) (hk : 0 < k)
    (hTrace : ((1 - (h : ℂ) • complexify M) ^ (2 * k)).trace.re < 1)
    (v : ι → ℝ) : 0 ≤ quadratic M v :=
  quadratic_nonneg_of_complexify_posSemidef M
    (eulerHeat_posDef (complexify M) hM h hh k hk hTrace).posSemidef v

/-- Keep the tested data and every guard; do not store the desired sign as a field. -/
structure Witness (M : Matrix ι ι ℝ) where
  step : ℚ
  iterations : ℕ
  step_pos : 0 < step
  iterations_pos : 0 < iterations
  hermitian : (complexify M).IsHermitian
  trace_lt_one : ((1 - (step : ℂ) • complexify M) ^ (2 * iterations)).trace.re < 1

theorem Witness.nonnegative {M : Matrix ι ι ℝ} (w : Witness M) (v : ι → ℝ) :
    0 ≤ quadratic M v :=
  quadratic_nonneg_of_eulerHeat M w.hermitian w.step w.step_pos
    w.iterations w.iterations_pos w.trace_lt_one v

end GRWTSK.Algebra.LinearAlgebra.FiniteRealHeatCertificate
