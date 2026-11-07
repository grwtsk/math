/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE. Lean elaboration/compilation: NOT_RUN.
Fresh kernel replay: NOT_RUN. Transitive axiom audit: NOT_RUN.
Independent analytical review: NOT_RUN. Novelty: NOT_ASSESSED.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimeOrbitWeightedWeilBridge
import Mathlib.Tactic

/-!
# Theta polarization and the signed pole return to the weighted Weil form

This module connects the existing finite-sheet arithmetic edges to the
algebraic part of the project-normalized theta-weighted derivation. The
source is the original full, pole-inclusive Connes--Consani--Moscovici Weil
form (arXiv:2511.22755v1, (3.19)--(3.20)); the theta normalization, explicit
formula inputs, and all-sector derivation appear in the project source
`theta-weighted-arithmetic-jump-heat-and-the-hot-spots-comparison.md`,
2026-11-06, sections 2--7. No theorem of RH/GRH is assumed.

Use the physical compact test `f=phi*g`, with positive even normalized
`phi` whose Fourier transform is `Xi` and moments are 1/2. The full
physical zeta source is

  Q_zeta(f) = c_0 ||f||_2^2 + E_0(f)
     - 2 sum_(n>=2) (Lambda(n)/sqrt(n)) Re C_f(log n)
     + 2 Re(M_+(f) * conj(M_-(f))).

For nonprincipal primitive Dirichlet characters, use the native real
conjugate-pair response `Re(chi(n))`, conductor `q`, gamma parity `a`, and NO
zeta pole. For each fixed supported physical test the prime correlations
vanish beyond twice the support width. After theta polarization the
positive jump form has infinitely many nonnegative diagonal prime terms:
these must not be silently truncated to the original compact-source list.

The pointwise polarization identity proved below is the actual algebraic
engine that converts an archimedean or zeta prime shift into a squared
increment after subtracting the theta radical pairing:

  (a*x-b*y)^2 - (a-b)*(a*x^2-b*y^2) = a*b*(x-y)^2.

For dnu=2 phi(t) cosh(t/2) dt, a probability measure, and
`tau=tanh(t/2)`, the zeta pole produces exactly

  Q_zeta(phi*g) = J_0(g) - Var_nu(g)/2 - <tau,g>_nu^2/2.

The `poleDefect_as_variance` and `poleDefect_odd` theorems formalize the
FINITE REAL ALGEBRA of that passage, not the integral identity itself.
For odd g, the mean vanishes, so

  Q_zeta(phi*g) = J_0(g) - ||g||_nu^2/2 - <tau,g>_nu^2/2.

For primitive nonprincipal chi (paired with its conjugate), the intended
identity, after gamma parity and the theta reference return, is

  Q_chi(phi*g) = R_chi(g) - ||g||_nu^2/2,
  R_chi(g) = J_chi,a(g) + integral V_chi*g^2 dnu,
  V_chi(t) = (log(q)*phi(t)+a*(k*phi)(t))/(2*cosh(t/2)),
  k(t)=1/(2*cosh(t/2)).

The exact parity relation is `kappa_0-kappa_1=k`, and its digamma
counterpart is `psi(3/4)-psi(1/4)=pi`. It is not proved by a finite
character-phase identity. The correct common Hilbert carrier is L2(nu),
with unitary `u=sqrt(2 phi cosh(t/2))*g` and PHYSICAL test
`f=sigma*u`, `sigma=sqrt(phi/(2 cosh(t/2)))`. It is not legitimate to
replace the weighted norm `||u||_2` by `||f||_2` uniformly in support.

## Analytical gates NOT discharged by this file

* Theta positivity/evenness, Xi transform, moments and derivative radical.
* The full polarized Weil explicit formula, convergence, cutoffs and form
  closure, including the original negative zeta pole.
* The trace-class prime circle resolvent and its identity-subtracted trace.
* Character-specific conductor, gamma-parity and unramified Frobenius return
  beyond the finite algebra available in PrimeOrbitCharacterReturn.
* Unitary operator realization, infinite prime-tail allowance, all-sector
  root-return, and the sharp odd reference bound `L_kappa >= (1/2) I`.

The finite identities below demonstrate the correct sign accounting. Their
ultimate consumer is the actual odd half-gap, NOT the mere nonnegativity of
individual edge contributions. A nonnegative reference energy may be zero,
while the scalar target subtracts half the positive norm. The derivative
saturation step requires a separate functional-analytic Cauchy--Schwarz
argument; its exact consumed scalar bound is explicit here rather than
postulated to follow from nonnegativity alone.

This is a source-aware algebraic formalization candidate. It creates no
surrogate zeta or Dirichlet L-function, and makes no new analytic spectral
or originality claim. Formal checking and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ThetaPolarization

/-- Exact source-shift polarization; the `a,b` values are the two theta
weights, not independent replacement L-function coefficients. -/
theorem shift_polarization (a b x y : ℝ) :
    (a * x - b * y) ^ 2 - (a - b) * (a * x ^ 2 - b * y ^ 2) =
      a * b * (x - y) ^ 2 := by
  ring

/-- A positive theta multiplier converts each radical-subtracted shift
into nonnegative square energy. -/
theorem shift_polarization_nonneg {a b : ℝ} (ha : 0 ≤ a) (hb : 0 ≤ b)
    (x y : ℝ) :
    0 ≤ (a * x - b * y) ^ 2 - (a - b) * (a * x ^ 2 - b * y ^ 2) := by
  rw [shift_polarization]
  exact mul_nonneg (mul_nonneg ha hb) (sq_nonneg _)

/-- The real zeta pole correction in terms of the normalized theta-measure
mean, odd moment, and total squared mass. This is NOT a positive sum of two
squared pole moments. -/
def poleDefect (mean tauMoment mass : ℝ) : ℝ :=
  2 * (mean / 2) ^ 2 - 2 * (tauMoment / 2) ^ 2 - mass / 2

/-- Exact variance/pole identity; `Var = mass - mean^2` after `nu` has
been proved a probability measure on the original analytical carrier. -/
theorem poleDefect_as_variance (mean tauMoment mass : ℝ) :
    poleDefect mean tauMoment mass =
      -(mass - mean ^ 2) / 2 - tauMoment ^ 2 / 2 := by
  unfold poleDefect
  ring

/-- On odd tests the normalized even theta measure has zero mean. -/
theorem poleDefect_odd (tauMoment mass : ℝ) :
    poleDefect 0 tauMoment mass = -(mass + tauMoment ^ 2) / 2 := by
  rw [poleDefect_as_variance]
  ring

/-- Exact scalar consumer for the *proved* rank-one saturation bound.
The premise must come from the actual theta derivative / closed form,
not from mere nonnegativity of `J`. -/
theorem zeta_nonneg_of_saturated_half_gap {J mass tauMoment : ℝ}
    (h : tauMoment ^ 2 ≤ 2 * J - mass) :
    0 ≤ J - mass / 2 - tauMoment ^ 2 / 2 := by
  linarith

/-- The nonprincipal paired sector has no negative zeta rank-one pole;
its source positivity follows once the ACTUAL weighted half-gap is proved. -/
theorem paired_nonneg_of_half_gap {R mass : ℝ}
    (h : mass / 2 ≤ R) : 0 ≤ R - mass / 2 := by
  linarith

/-- A nonnegative reference cannot by itself establish the sharp half-gap.
This blocks a tempting but incorrect inference from local sheet energies. -/
theorem reference_nonneg_not_half_gap :
    (0 : ℝ) ≤ 0 ∧ ¬ (0 : ℝ) ≤ 0 - 1 / 2 := by
  norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.ThetaPolarization
