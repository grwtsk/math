/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Actual source: Connes--Consani--Moscovici, "Zeta Spectral Triples",
arXiv:2511.22755v1, (3.19)--(3.20).
Native Weil types: DirichletStageChain, ConductorFrontier,
WeilConductorThreeRadiusFourInventory, WeilConductorThreeRadiusFourEdgeSchur.
Consumes genuine narrow moving-collar source positivity:
WeilConductorThreeRadiusFourMovingCollar, grwtsk/math
b86bc4330da68dfbbe5e3cbf24df5c4575973138.
Independent integer prime-power inventory and rational atanh comparisons
were performed; full source gamma/mixed integration is written mathematics.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_HUMAN_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourMovingCollar
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourInventory
import Mathlib.Tactic

/-!
# Pay a genuine odd-prime AND gamma mixed block between two collar shells

## Original mathematical theorem and scope

Fix h=1/96 and the ACTUAL ORIGINAL two positive-half support intervals

  I0=[3,3+h],
  I1=[7577/2000,7577/2000+h].

Let f0,f1 be arbitrary REAL odd C2 physical tests, each supported in
the corresponding positive interval AND its reflected negative interval.
Both are original
  DirichletStageChain.Admissible modThreeQuadratic 4,
with chi3=(0,1,-1), conductor3, parity1 and physical Lebesgue norm.
Take the original unmodified primitive nonprincipal radius-four form Q4.
The written full-source theorem is

  Q4(f0+f1) >= (1/25)*E(f0+f1),                       (T)

where E(f)=int_R |f|²dt. Thus the DIRECT SUM of these two
infinite-dimensional original odd support classes is source-positive,
not only each diagonal shell individually.

This is NOT positivity on arbitrary unions of the 96 moving shell
positions, the full collar (3,4), or all radius-four admissible tests.
The result pays one ACTUAL signed prime-and-gamma mixed block, but
the remaining full edge/core Schur inequality is still OPEN.

## 1. The ORIGINAL 458-atom signed prime mixed form vanishes exactly

A positive-r original prime correlation between f0 and f1 can only
arise from two geometric types:

* Same-side positive-positive or negative-negative interaction:
  r in [b-a-h,b-a+h], a=3,b=7577/2000;
* Odd-reflected cross-origin interaction:
  r in [a+b,a+b+2h].

The first interval is strictly contained in (7/10,1). This is a
prime-free LOG interval, since log2<7/10, and log3>1, hence
no integer n>=2 has log n in it. Therefore every SAME-SIDE mixed
prime correlation is exactly zero, even before using chi3(n).

The second interval has exact rational endpoints
  a+b=13577/2000=6.7885,
  a+b+2h=5107/750=6.809333... .

The complete original unramified inventory has TWO consecutive
native prime powers 887 and 907 with NO intervening prime-power
occurrence in integers 888,...,906. The existing finite typed
source `ConductorThreeRadiusFourInventory.inventory` satisfies
  inventory 906 = inventory 887,
independently checkable by finite enumeration.

Exact 16-term atanh logarithm brackets, with the complete
positive remainder 2*y^33/[33*(1-y²)] and the original 2^k
binary normalization, prove
   log 887 < 1697/250 = 6.788 < 13577/2000,
   5107/750 < 681/100 = 6.81 < log 907.
The verified rational comparisons do not use a decimal approximation
as a proof. Therefore no native n=p^e has logarithm in the
reflected cross-origin interval either. In particular all 458
original chi3 prime-power terms have ZERO MIXED correlation here:
the original arithmetic source is exactly ADDITIVE between f0
and f1, not bounded by an invented positive magnetic edge.

## 2. Exact gamma mixed kernel and its physical norm

The actual primitive parity-one gamma jump has
  kappa(r)=exp(-3r/2)/(1-exp(-2r))
          =exp(-r/2)/(2*sinh r), r>0.

Use the EXISTING odd half-line q4=Q4/2 convention and
the source-derived `WeilConductorThreeRadiusFourEdgeSchur`
mixed gamma kernel: for x in I0, y in I1,

  B_gamma(x,y)=-kappa(y-x)+kappa(y+x).

This is the true same-side minus reflected odd-origin contribution,
not a new positive graph kernel. Since y-x>=g=b-a-h>0,
kappa is positive and decreasing, with
  |B_gamma(x,y)|<=kappa(y-x)<=1/(2(y-x))<=1/(2g),
using sinh(r)>=r. The intervals each have physical length h.
The COMPLETE mixed operator Hilbert--Schmidt norm satisfies

  ||B_gamma||_(L2(I1)->L2(I0)) <= h/(2g).               (1)

No external high-frequency tail, boundary operator row, or test
derivative enters this bound; the source kernel is continuous
off the two disjoint intervals. The actual Q4 MIXED contribution
is 4 Re<u0,B_gamma u1>, with u_i=f_i restricted to positive half.

With E_i=E(f_i)=2||u_i||², (1) and Cauchy--Schwarz give

  |Q4(f0+f1)-Q4(f0)-Q4(f1)|
     <=(h/g)*sqrt(E0 E1)
     <=(h/(2g))*(E0+E1).                              (2)

The exact support gap is
  g=b-a-h=7577/2000-3-1/96 > 50h,
hence h/(2g)<1/100. Thus the entire TRUE signed
gamma-and-prime mixed source costs LESS THAN

    (1/100)*(E0+E1).                                   (3)

The conductor diagonal term has zero mixed product because the
two original physical support sets are disjoint. No zeta pole
occurs in the primitive nonprincipal chi3 sector.

## 3. Consume the independently source-proved positive diagonal blocks

The genuine MovingCollar source theorem gives
  Q4(f_i)>=(1/20)*E_i
for BOTH centers a=3 and b=7577/2000; note b+h<4.
Physical supports are disjoint, so E(f0+f1)=E0+E1 exactly.

Combining (2)--(3), without assuming any global arithmetic sign:

  Q4(f0+f1)
     >=(1/20-1/100)*(E0+E1)
      =(1/25)*E(f0+f1).                                (4)

This closes ONE nontrivial mixed source block on all vectors in a
two-component INFINITE-DIMENSIONAL physical support class.

The same argument extends to COMPLEX odd finite-gamma L2 inputs,
using real parts in the original correlations and the SAME
Hilbert--Schmidt estimate. In the native shifted edge form
  m11=q4+||u||²/8,
the exact physical L2 return is

  m11[u0+u1] >=(1/25+1/8)*||u0+u1||²
               =(33/200)*||u0+u1||².                    (5)

This is an actual strictly positive 2-shell source block, not a
finite observation matrix. It does not control interactions with
the REST of the radius-four edge carrier or the inner core H0.

## 4. Mathematical comparison and trust boundary

The analytic mechanism is exact source support geometry, finite
prime-power GAP verification, the actual gamma odd-reflection
kernel, Hilbert--Schmidt/Cauchy--Schwarz and the already proved
full-domain narrow-shell diagonal. No source coefficient, parity
or norm is substituted; no freedom to choose independent magnetic
prime-power angles is assumed. The two arithmetic gaps are
checked against the ORIGINAL finite prime-power inventory, not
only against primality or a sampled signed symbol.

The finite Lean declarations below cover the actual typed inventory
gap, rational interval separation, margin and a scalar ORIGINAL
`primitiveArithmeticValue` consumer. The rigorous real logarithm
atanh/source equality and gamma Hilbert--Schmidt comparisons above
are WRITTEN mathematical arguments, not Lean-kernel claims.
Fresh compilation, kernel, transitive axioms and independent human
source review remain NOT_RUN. RH, Dirichlet GRH and the complete
radius-four `PrimitiveStageLower` still OPEN.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourTwoShell

open GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourInventory
open GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourMovingCollar
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreePrimitiveGauss
open GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

def secondShellStart : ℝ := 7577 / 2000

/-- Original possible prime-power source: ALL unramified atoms in
the integers 888,...,906 are absent. Primes alone would not suffice. -/
theorem original_prime_power_gap :
    inventory 906 = inventory 887 := by
  decide

theorem same_side_distance_guards :
    (7 / 10 : ℚ) <
        7577 / 2000 - 3 - 1 / 96 ∧
      7577 / 2000 - 3 + 1 / 96 < (1 : ℚ) := by
  norm_num

theorem reflected_distance_guards :
    (1697 / 250 : ℚ) < 3 + 7577 / 2000 ∧
      3 + 7577 / 2000 + 2 / 96 < (681 / 100 : ℚ) := by
  norm_num

/-- The shell separation makes the ENTIRE gamma mixed block cheap
in the physical Hilbert metric; the actual norm proof remains
an analytic source comparison. -/
theorem gamma_mixed_gap_budget :
    (50 / 96 : ℚ) <
      7577 / 2000 - 3 - 1 / 96 := by
  norm_num

/-- Strict original-source scalar return after paying BOTH gamma
mixed orientations; none of the 458 prime mixed entries is dropped
without the exact inventory gap proof. -/
theorem two_shell_rational_margin :
    (1 / 25 : ℚ) = 1 / 20 - 1 / 100 ∧
      (33 / 200 : ℚ) = 1 / 25 + 1 / 8 := by
  norm_num

/-- The TRUE source Loewner floor follows once the already-proved
two shell diagonal input and the genuine mixed/source comparison
are furnished. The conclusion is still the NATIVE chi3 form. -/
theorem native_two_shell_floor_of_source_bounds
    (f0 f1 : ℝ → ℝ)
    (_h0 : Admissible modThreeQuadratic 4 f0)
    (_h1 : Admissible modThreeQuadratic 4 f1)
    (_hs0 : MovingCollarSupport 3 f0)
    (_hs1 : MovingCollarSupport secondShellStart f1)
    (E0 E1 : ℝ)
    (hE0 : 0 ≤ E0) (hE1 : 0 ≤ E1)
    (hdiag0 : (1 / 20 : ℝ) * E0 ≤
      primitiveArithmeticValue modThreeQuadratic
        modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
        4 (liftReal f0))
    (hdiag1 : (1 / 20 : ℝ) * E1 ≤
      primitiveArithmeticValue modThreeQuadratic
        modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
        4 (liftReal f1))
    (hcross :
      -((1 / 100 : ℝ) * (E0 + E1)) ≤
       primitiveArithmeticValue modThreeQuadratic
        modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
        4 (liftReal (fun t => f0 t + f1 t)) -
       primitiveArithmeticValue modThreeQuadratic
        modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
        4 (liftReal f0) -
       primitiveArithmeticValue modThreeQuadratic
        modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
        4 (liftReal f1)) :
    (1 / 25 : ℝ) * (E0 + E1) ≤
      primitiveArithmeticValue modThreeQuadratic
        modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
        4 (liftReal (fun t => f0 t + f1 t)) := by
  linarith

/-- Physical odd half-line q4=Q4/2 and the original target shift 1/8.
A source-two-shell Q>=E/25 floor gives m11>=33/200, with no
change of norm, pole convention or Dirichlet sector. -/
theorem native_two_shell_shifted_margin (normSquared q : ℝ)
    (hQ : (1 / 25 : ℝ) * (2 * normSquared) ≤ 2 * q) :
    (33 / 200 : ℝ) * normSquared ≤
      q + (1 / 8) * normSquared := by
  nlinarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourTwoShell
