/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Source: Connes--Consani--Moscovici, "Zeta Spectral Triples",
arXiv:2511.22755v1, equations (3.19)--(3.20).
Exact original source: WeilDirichletStageChain and
WeilConductorThreeRadiusFourInventory (chi3 conductor3, parity1),
with the physical odd form conventions of
WeilConductorThreeRadiusFourEdgeSchur.
Predecessor: WeilConductorThreeRadiusFourNarrowCollar.
Base source pin grwtsk/math@4e1c06f5bb81dfb984d84bc8ec28abfce0b02316.

AI-assisted analysis; independent integer/Fraction and BigInt exact
finite computations were executed. All continuum analytic source
returns remain WRITTEN mathematical arguments. No automatic proof
execution or root promotion occurred.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_HUMAN_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourNarrowCollar
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourInventory
import Mathlib.Tactic

/-!
# Uniform signed Weil positivity for every short moving odd collar

## Original theorem and what is (not) being proved

Let h=1/96 and choose ANY real a with 3<=a, a+h<=4.
Take EVERY original REAL ODD C2 test f with
  supp f subset [a,a+h] union [-a-h,-a].
Require the unchanged native
  DirichletStageChain.Admissible modThreeQuadratic 4 f,
with its finite parity-one gamma integral and physical Lebesgue norm
  E(f)=energy (DirichletStageChain.liftReal f).

The WRITTEN ANALYTIC theorem, uniform over BOTH a and ALL such f, is

  Q_chi3,4(f) >= (1/20)*E(f),                          (A)

where Q is EXACTLY the original
  primitiveArithmeticValue modThreeQuadratic
    modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
    4 (liftReal f).

This is a genuinely INFINITE-DIMENSIONAL all-input statement on each
moving collar support class, not a finite positive eigenvalue,
independently constructed operator, or one favorable vector.
The arbitrary linear superposition of vectors with DIFFERENT a is
NOT covered, as their cross-prime/gamma interactions must still be
paid. The original universal stage-three target Q>=-E/8 for
EVERY test supported anywhere in [-4,4] remains OPEN.

## 1. All original arithmetic phases and the support geometry

The actual 458-atom (93 old + 365 new) raw source is

  Q4(f)=c3 E(f)+Gamma1(f)
      -2 sum_(n=p^e<=2980,p!=3)
       [log(p)/sqrt(n)] chi3(p^e) C_f(log n),
  C_f(r)=int_R f(t)f(t+r)dt,
  c3=log(3/pi)+psi(3/4),
  Gamma1(f)=int_(r>0) kappa1(r)||f(.+r)-f||² dr,
  kappa1(r)=exp(-3r/2)/(1-exp(-2r)).

For the specified odd support, same-side correlations can be
nonzero only when |r|<=h; cross-origin correlations only when
2a<=|r|<=2a+2h. Hence every native prime power n with
log n in (h,2a) or above 2a+2h has EXACTLY zero correlation.
Because log2>h and 2a>=6, all 93 old atoms vanish.
All potentially active atoms have
  403<n<=2980 and 2a<=log n<=2a+1/48.
The endpoint sets are null; the strict native support cutoff
and all zero-extension conditions are preserved.

For any r>=2a, write u=f|_(a,a+h), extended by zero.
Oddness gives the ORIGINAL cross-origin sign

   C_f(r)=-int_R u(t)u(r-t)dt.
Thus, by physical Cauchy--Schwarz,

   |C_f(r)|<=||u||²=E(f)/2.                           (1)

The true chi3(p^e) phases remain +1 or -1 as originally tagged.
Only the inequality's adverse error takes absolute values.

## 2. Entire family of prime weights, certified by exact sliding windows

If two distinct prime powers n_min<=n_max both contribute to the
same physical test, then
  n_max/n_min <= exp(2h)=exp(1/48).
For x=1/48, the positive exponential series has the COMPLETE
geometric ratio upper bound

 exp(x) <= 1+x+(x²/2)/(1-x/3)
        =14017/13728 < 511/500.                        (2)

The complete ORIGINAL inventory
  ConductorThreeRadiusFourInventory.inventory 2980
contains 458 unramified tagged atoms (prime,exponent,power), of
which exactly 365 have power>403.

The static source-linked certificate records EVERY ONE of those 365
atoms with a rational UPWARD weight price. For p integer write
p=2^k v, 1<=v<2 and y=(v-1)/(v+1), 0<=y<=1/3. The exact
16-term upper atanh estimate is

 U16(y)=2 sum_(j=0)^15 y^(2j+1)/(2j+1)
                  +2*y^33/[33*(1-y²)].
 log(p)<=k*U16(1/3)+U16(y).

With H_n=floor(sqrt(n*10^18)) and exact integer square checks,
sqrt(n)>=H_n/10^9. Define the stored integer price

  u_(p,e)=ceil(10^12*logUpper(p)*10^9/H_n).
Then log(p)/sqrt(n)<=u_(p,e)/10^12 for EVERY original atom.
All arithmetic is integer/unbounded Fraction or BigInt: no float
rounding is used to certify an upper price.

Now for each of the 365 sorted power records n_i, sum the actual
UPWARD prices for ALL n_j>=n_i with 500*n_j<=511*n_i.
These are ALL possible prime-power windows of multiplicative
ratio at most 511/500, with no sampled frequency. The exhaustive
check performed 2004 comparisons and found

  max_i sum_window u_(p,e) = 1980769065252 < 199*10^10.  (3)

The attained worst rational window is from 2657 to 2713,
with exactly 13 prime atoms:
  2657,2659,2663,2671,2677,2683,2687,
  2689,2693,2699,2707,2711,2713.

The full 365 upper prices and their prime/exponent tags are
retained in the static JSON. An INDEPENDENT JavaScript BigInt
rational algorithm reproduced the Python Fraction maximum and
the exact 2004 addends, including all square-root checks. The
exact finite data/algorithm establish the all-a bound

  W(a,h)=sum_(n:2a<=log n<=2a+2h)
                 log(p)/sqrt(n) <199/100.                 (4)

This is an absolute half-mass bound, not a vanishing signed
character phase or a stochastic/heat positivity assertion.
Combining (1),(4) on the literal original source yields

  DeltaPrime4(f) >= -(199/100)*E(f).                  (5)

## 3. A uniform full-gamma lower bound

For every h<=r<=1/2, neither same-side nor cross-origin support
overlaps, since h=1/96 and 2a>=6. Therefore

   ||f(.+r)-f||²=2E(f).

All other positive gamma jumps remain in the original integral.
Using 1-exp(-2r)<=2r and the exact cubic lower Taylor polynomial
of exp(-3r/2), as in NarrowCollar, gives

 Gamma1(f)>=E(f)*[
 log((1/2)/h) -(3/2)(1/2-h)
   +(9/16)((1/2)^2-h²) -(3/16)((1/2)^3-h³)].         (6)

Here log((1/2)/h)=log48.
Use 48=2^5*(3/2), the atanh variable 1/3 for log2 and 1/5
for log(3/2). Two strictly positive terms suffice:

 log48>5*(56/81)+2*(1/5+1/375)
      =39104/10125 >193/50.

Substitute h=1/96 into (6) to obtain the STRICT complete
rational minorant

   Gamma1(f)>= (382530553/117964800)*E(f).          (7)

Again, this is a piece of the ORIGINAL infinite archimedean
energy; none of the omitted positive r regions is charged
negatively.

## 4. Original gamma-conductor constant and the positive floor

As already source-proved in NarrowCollar/CollarWitness,
  c3=log(3/pi)+psi(3/4)>-6/5.
For clarity, this is a classical unconditional digamma identity,
with EulerGamma<3/5, pi<22/7, and the first30 positive terms
of psi(3/4)=-EulerGamma-4/3+
                sum_(m>=1)3/[m(4m+3)].
The EulerGamma bound itself has an elementary rational audit:
  EulerGamma<=H50-log50<3/5,
  log50=5log2+log(25/16)
     >5*(56/81)+2*(9/41+(9/41)^3/3).
No RH, root location or desired Weil source sign is assumed.

By (5),(7) and the original source equality,

   Q4(f) >=[382530553/117964800-6/5-199/100]E(f)
         =[6222841/117964800]E(f)
         >(1/20)E(f).                                 (8)

Use non-strict inequality when E=0. This proves (A).

## 5. Native finite-gamma and shifted edge-block return

The same support/correlation and positive-gamma argument holds
for ANY COMPLEX odd physical L² function in the ACTUAL finite-gamma
form domain, supported in those two symmetric intervals.
For such u supported in [a,a+h] subset(3,4), use the exact original
EdgeSchur normalization
 q4[u]=Q4(O4u)/2, E(O4u)=2||u||²,
 m11[u]=q4[u]+||u||²/8.

Equation (A) gives
    q4[u]>=(1/20)||u||²,
    m11[u]>=(1/20+1/8)||u||²=(7/40)||u||².            (9)

Thus every translated narrow shell carries the SAME strict
positive diagonal source floor on its full finite-gamma form
carrier. Different shells are not orthogonal in the gamma/prime
form; (9) cannot be summed without complete mixed-block
accounting. The source-specific necessary-and-sufficient edge
Schur target remains OPEN:
    m11[v] >= <Bv,A0^(-1)Bv> for ALL v in L²(3,4)
with finite gamma.

## 6. Formal/evidence and comparison boundary

The Lean declarations below retain the native target and support
types, the exact rational ratio and gamma/prime budget, and the
original-source conditional scalar consumer. They do NOT encode
all 365 upper weights as a compiled arithmetic proof or formalize
the whole gamma/physical Fourier integral. The complete finite
data reside in the static source-pinned manifest, not an oracle
or claim of a kernel theorem.

The all-a result is a genuine mathematical strengthening of the
single-position NarrowCollar theorem, conditional only on
source-equivalent standard analytic identities and independently
verified finite exact arithmetic. It neither supplies the mixed
off-diagonal source sign nor proves a cofinal stage, RH or GRH.
Independent human review, Lean compilation, fresh kernel replay
and transitive axiom audit remain NOT_RUN.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourMovingCollar

open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreePrimitiveGauss
open GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

/-- Geometric placement and EXACT physical support. This is NOT a
replacement for the native original `Admissible chi3 4 f` predicate. -/
def MovingCollarSupport (a : ℝ) (f : ℝ → ℝ) : Prop :=
  3 ≤ a ∧ a + (1 / 96 : ℝ) ≤ 4 ∧
    (∀ t, t ∉ ((Set.Icc (-(a + (1 / 96 : ℝ))) (-a)) ∪
                  (Set.Icc a (a + (1 / 96 : ℝ)))) → f t = 0)

/-- Exact exponential-series ratio upper guard for an interval of
logarithmic length 1/48; analytic comparison exp(x)<=the displayed
series/tail is written above and not assumed from the checked rational. -/
theorem exponential_window_rational_guard :
    (14017 / 13728 : ℚ) < 511 / 500 := by
  norm_num

/-- Two-term positive atanh lower bound on the physical jump
log48, used before the integral Taylor minorant. -/
theorem logarithm_48_rational_guard :
    (193 / 50 : ℚ) <
      5 * (56 / 81) + 2 * (1 / 5 + 1 / 375) := by
  norm_num

/-- Scalar assertion of the actual exhaustively computed FULL
365-atom window upper-price maximum; the maximum-over-all-starts
claim itself is retained as explicit finite source data in JSON. -/
def attainedWindowUpper : ℚ := 1980769065252 / 10 ^ (12 : ℕ)

theorem window_price_rational_guard :
    attainedWindowUpper < 199 / 100 := by
  norm_num [attainedWindowUpper]

/-- Source-true lower bound of the complete original gamma integral
after keeping only [1/96,1/2] and its full cubic Taylor minorant. -/
theorem moving_gamma_rational_guard :
    (193 / 50 : ℚ)
      - (3 / 2) * (1 / 2 - 1 / 96)
      + (9 / 16) * ((1 / 2)^2 - (1 / 96)^2)
      - (3 / 16) * ((1 / 2)^3 - (1 / 96)^3) =
        382530553 / 117964800 := by
  norm_num

/-- The complete native conductor/gamma/odd-edge budget. -/
theorem moving_original_source_budget :
    (1 / 20 : ℚ) <
      (382530553 / 117964800) - 6 / 5 - 199 / 100 := by
  norm_num

/-- The original `primitiveArithmeticValue` is used literally.
The unreplayed analytic source comparisons are explicit hypotheses,
not an axiom or a substitute stage target. -/
theorem native_moving_collar_positive_of_source_bounds
    (a : ℝ) (f : ℝ → ℝ)
    (_hadmissible : Admissible modThreeQuadratic 4 f)
    (_hsupport : MovingCollarSupport a f)
    (E gamma prime c : ℝ)
    (hE : 0 ≤ E)
    (hreturn : primitiveArithmeticValue modThreeQuadratic
        modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
        4 (liftReal f) = c * E + gamma + prime)
    (hc : -(6 / 5 : ℝ) ≤ c)
    (hgamma : (382530553 / 117964800 : ℝ) * E ≤ gamma)
    (hprime : -(199 / 100 : ℝ) * E ≤ prime) :
    (1 / 20 : ℝ) * E ≤
      primitiveArithmeticValue modThreeQuadratic
        modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
        4 (liftReal f) := by
  have hconstMul : -(6 / 5 : ℝ) * E ≤ c * E :=
    mul_le_mul_of_nonneg_right hc hE
  have hfloor :
      (1 / 20 : ℝ) ≤
        (382530553 / 117964800 : ℝ) - 6 / 5 - 199 / 100 := by
    norm_num
  have hfloorMul := mul_le_mul_of_nonneg_right hfloor hE
  rw [hreturn]
  nlinarith

/-- Original odd physical normalization: E(Ou)=2||u||² and
q4[u]=Q4(Ou)/2. The all-input moving-collar bound gives the
existing shifted edge form m11=q4+||u||²/8 a 7/40 floor
on every corresponding finite-gamma narrow shell. -/
theorem moving_edge_shell_shift_margin (normSquared q : ℝ)
    (hQ : (1 / 20 : ℝ) * (2 * normSquared) ≤ 2 * q) :
    (7 / 40 : ℝ) * normSquared ≤
      q + (1 / 8) * normSquared := by
  nlinarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourMovingCollar
