/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE; Lean v4.34.1, Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Lean elaboration, fresh kernel replay, axiom audit: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiThetaAntiPickSource
import Mathlib.Tactic

/-!
# Actual-Xi Newton moments and zero-free-source Hilbert-Polya target

The coefficients here are the original normalizedEvenXiTaylor of
the real completed zeta sourceXi, not a zero list. Their source
fidelity and infinite analytic theta formula are explicit premises.

Differentiate the actual xiSquareTaylorSeries and expand F'/F
at zero. The real coefficient of w^n is (-1)^n tau_(n+1).
If ALL finite Hankel matrices [tau_(i+j+1)] are PSD, the classical
Hamburger compact-moment theorem constructs a positive measure from
these coefficients alone. Its Cauchy transform equals F'/F, forcing
all actual zeros to be real; the true theta source excludes nonnegative
real zeros. Compact moment uniqueness and the source Hadamard product
then give atom masses equal to eigenvalue times analytic multiplicity,
hence an exact source-defined positive Fredholm operator with all
multiplicities. This analytic result is proved in the adjacent .md,
NOT in Lean here.

Full infinite positivity is RH-equivalent and OPEN independently.
The UNCONDITIONAL positive Hankel array of raw theta moments in
XiThetaMomentSpectralModel is a DISTINCT object. The finite rational
hostile source below guards against conflating them.

Alpoge's external final RH theorem and (M) are not imports,
axioms, hypotheses, or results of this file.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.XiNewtonMomentHilbertPolya

open GRWTSK.NumberTheory.XiToeplitzHilbertPolyaCriterion
open GRWTSK.NumberTheory.XiThetaAntiPickSource

/-- Signed Taylor coefficients of the ORIGINAL source logarithmic
derivative F'/F. The theorem identifying these as the Newton
power sums of the original complete divisor is analytic, not
Lean-proved here. n=0 gives tau_1, n=1 gives tau_2, etc. -/
def originalXiNewtonMoment (n : ℕ) : ℝ :=
  ((((-1 : ℂ) ^ n) *
      iteratedDeriv n
        (fun w : ℂ => deriv xiSquareTaylorSeries w / xiSquareTaylorSeries w)
        (0 : ℂ)) / (n.factorial : ℂ)).re

/-- Source-faithful RH-strength target: all finite Hankel PSD
forms of original-Xi logarithmic-derivative Newton moments. -/
def ActualXiNewtonHankelPSD : Prop :=
  XiTaylorSourceFaithful ∧
    ∀ n : ℕ, ∀ c : Fin n → ℝ,
      0 ≤ ∑ i : Fin n, ∑ j : Fin n,
        c i * originalXiNewtonMoment (i.val + j.val) * c j

/-- First elementary symmetric coefficient to first Newton trace. -/
def firstNewtonTrace (a : ℕ → ℝ) : ℝ := a 1

/-- Second true-Xi coefficient-polynomial Newton trace. -/
def secondNewtonTrace (a : ℕ → ℝ) : ℝ :=
  (a 1) ^ 2 - 2 * a 2

/-- Third true-Xi coefficient-polynomial Newton trace. -/
def thirdNewtonTrace (a : ℕ → ℝ) : ℝ :=
  (a 1) ^ 3 - 3 * a 1 * a 2 + 3 * a 3

/-- Exact first nontrivial principal Hankel determinant, before
any analytic assertion about its nonnegativity for actual Xi. -/
theorem two_by_two_newton_hankel_identity (a : ℕ → ℝ) :
    firstNewtonTrace a * thirdNewtonTrace a -
      (secondNewtonTrace a) ^ 2 =
        (a 1) ^ 2 * a 2 + 3 * a 1 * a 3 - 4 * (a 2) ^ 2 := by
  dsimp [firstNewtonTrace, secondNewtonTrace, thirdNewtonTrace]
  ring

/-- Positive theta/cosh coefficients do NOT imply Newton
Hankel PSD. For F_*(w)=3/4+1/4*cosh(sqrt w) the first
three positive coefficients are 1/8, 1/96 and 1/2880.
The actual Xi is not replaced by this hostile example. -/
theorem hostile_positive_cosh_two_by_two_det :
    (1 / 8 : ℚ) *
      ((1 / 8 : ℚ) ^ 3 -
        3 * (1 / 8 : ℚ) * (1 / 96 : ℚ) +
        3 * (1 / 2880 : ℚ)) -
      ((1 / 8 : ℚ) ^ 2 - 2 * (1 / 96 : ℚ)) ^ 2 =
      -(13 / 92160 : ℚ) := by
  norm_num

theorem hostile_positive_cosh_newton_hankel_not_psd :
    (1 / 8 : ℚ) *
      ((1 / 8 : ℚ) ^ 3 -
        3 * (1 / 8 : ℚ) * (1 / 96 : ℚ) +
        3 * (1 / 2880 : ℚ)) -
      ((1 / 8 : ℚ) ^ 2 - 2 * (1 / 96 : ℚ)) ^ 2 < 0 := by
  norm_num

end GRWTSK.NumberTheory.XiNewtonMomentHilbertPolya
