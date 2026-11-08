/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Actual primitive conductor-three, parity-one source as in
Connes--Consani--Moscovici, "Zeta Spectral Triples",
arXiv:2511.22755v1, (3.19)--(3.20).
Prior complete source candidate:
WeilConductorThreeRadiusFourScalarObstruction, grwtsk/math
62dbab0bc33d4f4b6b16432efd2b9b316051fda4.
Analytic cosine/source comparisons are written proofs. The finite
signed scalar implication below is a Lean proof-script candidate only;
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN; independent human review NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourScalarObstruction
import Mathlib.Tactic

/-!
# A source-negative open interval beyond the radius-three frequency stop

The preceding module constructs a genuinely source-tagged rational
frequency xi_star=3806849122861433/1000000, with exact finite
arithmetic P_4(xi_star)>29 and source Binet A(xi_star)<24.
Here we prove the negativity is NOT confined to a single point.

## Entire original prime inventory, with power phases tied to their primes

The source radius-four symbol is
  s_4(xi)=A(xi)-P_4(xi),
  P_4(xi)=2 sum_(n=p^e<=2980,p!=3)
      w_n*chi3(n)*cos(xi*log n),
  w_n=log p/sqrt(p^e)>0.
There are exactly 458 original unramified atoms. Exact rational
logarithm/square-root summation from the preceding radius-four
odd-edge module gives W_core<40, W_early<27, W_late<43, hence

  sum_all w_n < 110.                                         (1)

The source interval is log n<8. Since
  |cos(x)-cos(y)|<=|x-y|
for all real x,y (ordinary mean-value theorem), retaining the
ACTUAL single frequency xi (rather than independently chosen prime
phases) gives the GLOBAL Lipschitz bound

  |P_4(xi)-P_4(eta)|
     <=2 sum_all w_n log n * |xi-eta|
     < 1760 |xi-eta|.                                       (2)

No independence of the 458 prime-power angles is used or needed.
The finite sum is exact, and every sign chi3(n) remains present;
absolute values occur only in the Lipschitz error bound.

For all |xi-xi_star|<=1/10000, one has 100<xi<4*10^9.
The existing source Binet estimate is
  A(xi) <= log xi + 1.
Because the positive Taylor partial sum of exp(23) exceeds 4*10^9,
we have log(4*10^9)<23, hence A(xi)<24 on this ENTIRE interval.

The previous fully exact rational certificate gives
  P_4(xi_star)>29.
By (2), P_4(xi)>29-1760/10000 =28.824,
so the ACTUAL raw symbol satisfies

  s_4(xi) < 24-28.824 = -4.824 < -4                        (3)

for EVERY frequency in
  [xi_star-1/10000,xi_star+1/10000].

This is a nonempty open-frequency obstruction to any assertion
that the new raw symbol is pointwise nonnegative beyond 3.5e9.
It does NOT give a negative admissible Weil quadratic form: an odd
compact physical test of support radius four cannot concentrate its
entire Fourier mass in an interval of width 1/5000, and the original
quadratic form integrates over the entire real frequency axis.
In particular this is neither a counterexample to RH nor an
obstruction to a correctly paid positive semidefinite PHYSICAL
operator or an effective whole-frequency filtered proof.

The original radius-three high-filter's tail, the literal annulus,
the gamma parity and the 93 previous source atoms must not be
substituted for the new radius-four 458-atom source. This new source
sign shows that the previous pointwise high-frequency argument
cannot be imported as a pointwise lemma without a new error
or source-specific non-pointwise return.

The analytic `cos` Lipschitz, atanh weight budgets, gamma Binet and
exponential threshold are written proofs with their original stated
scope; their Lean elaboration is NOT_RUN. The declarations below
record only the exact scalar small-window deduction, and keep the
analytic source identifications as explicit premises.
No global stage-three positivity or GRH/RH conclusion is claimed.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScalarWindow

open GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScalarObstruction
open GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeComplementTail

/-- The exact rational phase-stability allowance on a 1/10000 window. -/
theorem prime_phase_window_price :
    (1760 : ℚ) / 10000 = 22 / 125 := by
  norm_num

/-- A finite-dimensional scalar consequence of a source-true prime
Lipschitz estimate and a source-true archimedean upper bound.
Neither analytic premise is manufactured by an encoder or a sample. -/
theorem negative_window_from_bounds
    (p a : ℝ → ℝ) (xi xi0 : ℝ)
    (hP : 29 ≤ p xi0)
    (hLip : |p xi - p xi0| ≤ 1760 * |xi - xi0|)
    (hGamma : a xi < 24)
    (hNear : |xi - xi0| ≤ 1 / 10000) :
    a xi - p xi < -4 := by
  have hlocal : |p xi - p xi0| ≤ (1760 / 10000 : ℝ) :=
    hLip.trans (mul_le_mul_of_nonneg_left hNear (by norm_num))
  have hleft := (abs_le.mp hlocal).1
  linarith

/-- Source-specific consumer: the actual negative-window claim follows
ONLY AFTER the genuine T=4 prime value, gamma and Lipschitz sources
have been established. The hP/hLip/hGamma fields are not proved here. -/
theorem native_radius_four_negative_window
    (xi : ℝ)
    (hNear : |xi - obstructionFrequency| ≤ 1 / 10000)
    (hP : 29 ≤ radiusFourPrimeSymbol obstructionFrequency)
    (hLip : |radiusFourPrimeSymbol xi -
       radiusFourPrimeSymbol obstructionFrequency| ≤
         1760 * |xi - obstructionFrequency|)
    (hGamma : gammaSymbol xi < 24) :
    gammaSymbol xi - radiusFourPrimeSymbol xi < -4 := by
  exact negative_window_from_bounds radiusFourPrimeSymbol gammaSymbol
    xi obstructionFrequency hP hLip hGamma hNear

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScalarWindow
