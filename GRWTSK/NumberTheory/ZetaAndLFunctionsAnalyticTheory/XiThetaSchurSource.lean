/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Root Lean 4.34.1 / Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Elaboration, independent kernel check and transitive axiom audit: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiToeplitzHilbertPolyaCriterion
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

/-!
# True Xi coefficient Schur minors and low-rank theta moment obligations

The ACTUAL Xi Taylor coefficients are inherited from
XiToeplitzHilbertPolyaCriterion.normalizedEvenXiTaylor. The classical
Riemann theta kernel supplies moments M_(2n)=integral Phi(u)*u^(2n) du,
and a_n=M_(2n)/((2n)! M_0) with M_0=xi(1/2).
This equality is an analytic supplier NOT FORMALIZED in this file.

For any partition lambda with length k, the ordinary Schur
specialization s_lambda[a] is the Jacobi-Trudi determinant
det(a_(lambda_i-i+j)), with a_negative=0. By the skew Jacobi-Trudi
and Littlewood-Richardson rules, positivity for ALL ordinary Schur
specializations is equivalent to the existing all-Toeplitz-minor PF
target. Those classical combinatorial equivalences are not imported
or claimed Lean-checked here.

The exact source multiple integral for each k-minor is a signed
determinant integral; positivity of individual Phi moments DOES NOT
make its integrand nonnegative. A 3x3 hostile counterexample is in
the existing XiToeplitzHilbertPolyaCriterion source.

Mathematical consumer: math #1849 / #124 / #1850 / #1828.
NO RH, Alpoge final proof, downloaded zero heights or synthetic
operator realization is imported or assumed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.XiThetaSchurSource

open GRWTSK.NumberTheory.XiToeplitzHilbertPolyaCriterion

/-- Genuine ordinary Jacobi-Trudi specialization, with real
coefficients and the correct zero entries at negative indices.
No positivity is inserted into the definition. -/
def schurJacobiTrudi (a : ℕ → ℝ) {k : ℕ}
    (lambda : Fin k → ℕ) : ℝ :=
  Matrix.det (fun i j : Fin k =>
    sourceToeplitzEntry a i.val (lambda i + j.val))

/-- The corresponding source-specialized Schur determinant of
the ACTUAL completed Riemann xi Taylor sequence. -/
def actualXiSchur {k : ℕ} (lambda : Fin k → ℕ) : ℝ :=
  schurJacobiTrudi normalizedEvenXiTaylor lambda

/-- Exactly the factorial moment normalizer used by the actual
theta-kernel source, without asserting that a generic sequence of
moments comes from Riemann's actual theta kernel. -/
def normalizedThetaMomentCoefficient
    (M : ℕ → ℝ) (n : ℕ) : ℝ :=
  M n / (((2 * n).factorial : ℝ) * M 0)

/-- The shape (1,1,1) is the first exact cubic obstruction.
This is an ordinary Schur determinant, not a Gram determinant.
All source coefficients appear at their true ranks. -/
theorem one_column_three_schur_formula (a : ℕ → ℝ) :
    schurJacobiTrudi a ![1, 1, 1] =
      (a 1) ^ 3 - 2 * a 0 * a 1 * a 2 + (a 0) ^ 2 * a 3 := by
  simp [schurJacobiTrudi, sourceToeplitzEntry,
    Matrix.det_fin_three]
  ring

/-- For the genuine normalized Xi Taylor sequence a0=1, the
third Schur specialization has the advertised cubic expression.
The exact source center-nonzero hypothesis is not discarded. -/
theorem one_column_three_schur_formula_of_normalization
    (a : ℕ → ℝ) (ha : a 0 = 1) :
    schurJacobiTrudi a ![1, 1, 1] =
      (a 1) ^ 3 - 2 * a 1 * a 2 + a 3 := by
  rw [one_column_three_schur_formula, ha]
  ring

/-- Rank-two theta-moment condition exactly equivalent to the
shape (1,1) inequality when M0>0. It is NOT inferred from
moment positivity alone. -/
theorem theta_second_schur_moment_numerator
    (m0 m2 m4 : ℝ) (h0 : m0 ≠ 0) :
    (m2 / (2 * m0)) ^ 2 - m4 / (24 * m0) =
      (6 * m2 ^ 2 - m0 * m4) / (24 * m0 ^ 2) := by
  field_simp [h0]
  ring

/-- Rank-three source shape (1,1,1) is the EXACT signed
moment polynomial shown here. Its source sign is the missing
actual-theta inequality, not a consequence of Phi>=0. -/
theorem theta_third_schur_moment_numerator
    (m0 m2 m4 m6 : ℝ) (h0 : m0 ≠ 0) :
    (m2 / (2 * m0)) ^ 3 -
      2 * (m2 / (2 * m0)) * (m4 / (24 * m0)) +
        m6 / (720 * m0) =
    (90 * m2 ^ 3 - 30 * m0 * m2 * m4 + m0 ^ 2 * m6) /
      (720 * m0 ^ 3) := by
  field_simp [h0]
  ring

/-- The second spectral inverse-square trace is a log coefficient:
Tr(K^2)=a1^2-2a2 IF the entire Xi determinant identity is supplied.
This definition itself is unconditional scalar algebra. -/
def secondLogarithmicTrace (a : ℕ → ℝ) : ℝ :=
  (a 1) ^ 2 - 2 * a 2

/-- For an actual two-eigenvalue POSITIVE factor product, the second
log trace equals the genuine sum of nonnegative squares. This is
a finite source-model equality, not an identity with Xi. -/
theorem two_factor_second_trace (u v : ℝ) :
    (u + v) ^ 2 - 2 * (u * v) = u ^ 2 + v ^ 2 := by
  ring

/-- A positive Fourier/cosh moment measure can violate the
second logarithmic trace required by a positive HP operator:
mu=3/4 delta_0+1/4 delta_1 gives a1=1/8,a2=1/96. -/
theorem positive_theta_moments_negative_second_trace :
    (1 / 8 : ℚ) ^ 2 - 2 * (1 / 96 : ℚ) = -(1 / 192 : ℚ) := by
  norm_num

/-- The same positive measure yields an explicitly NEGATIVE
ordinary Schur specialization of shape (1,1,1). -/
theorem positive_theta_moments_negative_schur_three :
    (1 / 8 : ℚ) ^ 3 -
      2 * (1 / 8 : ℚ) * (1 / 96 : ℚ) +
       (1 / 2880 : ℚ) = -(7 / 23040 : ℚ) := by
  norm_num

end GRWTSK.NumberTheory.XiThetaSchurSource
