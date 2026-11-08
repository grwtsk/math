/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Mathematical source: Connes--Consani--Moscovici, "Zeta Spectral
Triples", arXiv:2511.22755v1, equations (3.19)--(3.20), and the
original primitive modulus-three character at gamma parity one.
Consumed exact source: WeilConductorThreeRadiusFourOddEdges and
CharacterWeilWindowBounds; no new arithmetic form or target.
Finite rational interval calculation: executed independently as
integer/Fraction arithmetic, not Lean verified.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_HUMAN_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourOddEdges
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.CharacterWeilWindowBounds
import Mathlib.Tactic

/-!
# An actual signed odd-prime collar witness, and its positive full Weil return

## Exact source and mathematical use

Let chi3 be the EXISTING real primitive nonprincipal character modulo 3.
For any original real odd C2 test supported in [-4,4], the ORIGINAL
primitive Weil form is
 Q_chi3,4(f) = c_chi E(f) + E_gamma,1(f) - 2 sum_(n=p^e<=2980,p!=3)
     [log p/sqrt(n)] chi3(n) C_f(log n),
where c_chi=log(3/pi)+digamma(3/4), E(f)=int_R f² dt, and
 C_f(r)=int_R f(t)f(t+r)dt. There is NO principal-character pole.

The old 93 atoms have n<=403. The genuinely NEW 365 atoms have
404<=n<=2980; 110 have 6<log n<7, and 255 have 7<log n<8.
Put Delta_new(f)=-2 sum_new w_n chi3(n) C_f(log n).
Positive odd magnetic edge squares always include the negative onsite
diagonal when returned to THIS original signed source.

## 1. Source-exact finite physical collar obstruction

Let I=(3,25/8), h=1/8, and define u0=sqrt(8)*1_I on (0,4).
Let f0(t)=u0(t)-u0(-t), a real odd L² test with E(f0)=2.
This indicator is NOT falsely claimed C2-admissible.
For every new r=log n in (6,8), odd reflection gives
 C_f0(r)= -int_R u0(t)u0(r-t)dt
        = -max(0,1-8*|r-49/8|).
Thus the ACTUAL new prime contribution is
 Delta_new(f0) = 2 sum_(404<=p^e<=2980,p!=3)
     [log p/sqrt(p^e)] chi3(p^e)
         max(0,1-8*|log(p^e)-49/8|).                     (1)

Notice: the sum is over original prime powers, NOT mixed prime
products; chi3(p^e) is the ORIGINAL power of chi3(p), including
the exponent-9 prime power 512. Exactly 19 original atoms meet
the nonzero tent, with n:
 409 419 421 431 433 439 443 449 457 461 463
 467 479 487 491 499 503 509 512.
Their original chi3 signs, in the same order, are
 + - + - + + - - + - + - - + - + - - -.

A complete EXACT OUTWARD RATIONAL calculation gives
 -709891560589388914047676/10^24
       <= Delta_new(f0)
       <= -709891560288124617293332/10^24.             (2)
In particular -71/100 < Delta_new(f0) < -709/1000.

The reproducible arithmetic (NOT a sampled physical eigenvalue):
for integer z>=2, write z=2^k v with 1<=v<2, set y=(v-1)/(v+1),
and enclose log(z) by k times the 16-term atanh series at 1/3 plus
the 16-term series at y. The exact residual is bounded by
2*y^33/[33*(1-y²)] for each. Bound sqrt(n) between
floor(sqrt(n*10^18))/10^9 and one more unit on that grid.
Round log(p)/sqrt(n) and the triangular tent (1) OUTWARD on S=10^12;
for each chi3 sign choose the minimum and maximum among all
endpoint products. Summing ALL 365 source occurrences (of which 19
have nonzero tent) gives the two INTEGER numerators in (2).
No independent phases, floating rounding, or omitted atom are used.

## 2. An ACTUAL smooth admissible negative-prime test

For delta=10^-12, choose any smooth increasing cutoff eta with
eta(x)=0 for x<=0, eta(x)=1 for x>=1, 0<=eta<=1. Let
 u_delta(t)=sqrt(8)*eta((t-3)/delta)*eta((25/8-t)/delta),
 f_delta(t)=u_delta(t)-u_delta(-t).

This is REAL, ODD, C-infinity, supported in the same two intervals
[3,25/8] and [-25/8,-3]. It is an original
DirichletStageChain.Admissible chi3 4 test: C2, compact, L2,
and the actual parity-one gamma-jump integral finite.
It obeys
 2-32*delta <= E(f_delta) <= 2,
 ||f_delta-f0||² <= 32*delta < (10^-5)^2.

For every r and real L2 f,g, ordinary translation Cauchy--Schwarz gives
 |C_f(r)-C_g(r)| <=(||f||+||g||)*||f-g||.
The NEW full positive half-mass is bounded by
 W_new=W_early+W_late<27+43=70; both input norms are <=sqrt(2)<3/2.
Therefore
 |Delta_new(f_delta)-Delta_new(f0)|
     <2*70*3*10^-5 = 21/5000.                             (3)
Combining (2)--(3) and E(f_delta) in (15/8,2] gives

 -(2/5)*E(f_delta) < Delta_new(f_delta)
                     < -(7/20)*E(f_delta) < 0.             (4)

This is a GENUINE C2-admissible signed NEGATIVE prime-source witness,
not a negative full Weil value or counterexample to Dirichlet GRH.

## 3. All OLD prime correlations are exactly zero

Every old n<=403 has 1/8<log n<6. On the actual support of f_delta,
two same-side points differ by at most 1/8, and any negative-to-positive
pair differs by at least 6. Hence
  C_f_delta(log n)=0 for EVERY old prime power.
No old atom is dropped: its original correlation is rigorously zero.
In particular the full radius-four source on THIS test is simply
  Q_chi3,4(f_delta)=c_chi*E(f_delta)
                +E_gamma,1(f_delta)+Delta_new(f_delta).       (5)

## 4. Complete archimedean compensation: a positive full-source test

The original gamma-parity-one kernel is
  kappa_1(r)=e^(-3r/2)/(1-e^(-2r))
            =sum_(j>=0)e^(-(2j+3/2)r), r>0.
For ALL r in [1/8,6] the physical correlation C_f_delta(r)=0;
therefore ||f_delta(.+r)-f_delta||²=2E(f_delta). Positivity
of all other jumps gives
  E_gamma,1(f_delta)>=2*E(f_delta)*int_(1/8)^6 kappa_1(r)dr.

An unconditional, FINITE lower bound is
 2*int_(1/8)^6 kappa_1(r)dr > 9/5.                    (6)
Proof: retain j=0,...,5 and integrate e^(-a_j r), a_j=2j+3/2.
The lower endpoint terms are bounded from below by the odd-degree
(through k=15) Taylor polynomial for e^(-a_j/8).
For the upper endpoint terms use e^(-6*a_j)<=e^(-9)<1/8000;
the latter follows from the positive sum
sum_(k=0)^20 9^k/k!>8000. Their entire six-term charge is <1/1000.
Exact rational arithmetic gives
 2*sum_(j=0)^5 [L15(a_j/8)/a_j] - 1/1000 > 9/5,
where L15(x)=sum_(k=0)^15 (-x)^k/k!. Thus (6) is fully
independent of the unknown Dirichlet-GRH sign.

The exact gamma constant also admits the unconditional rational bound
  c_chi=log(3/pi)+psi(3/4)>-6/5.                          (7)
Use pi<22/7, log(3/pi)>-1/21, and the classical convergent series
 psi(3/4)=-EulerGamma-4/3+sum_(n>=1)3/[n(4n+3)].
EulerGamma<3/5 follows from EulerGamma<=H50-log50<3/5,
with log50 bounded by the same positive 16-term atanh series.
The first 30 positive series terms already give
 -1/21-3/5-4/3+sum_(n=1)^30 3/[n(4n+3)]>-6/5.
This is a finite rational inequality plus standard analytic
identities; none assumes RH.

Finally, (4)--(7) prove the TRUE full-source inequality
  Q_chi3,4(f_delta) > (1/5)*E(f_delta) > 0.              (8)

This is a NONTRIVIAL full Weil sign for a specific infinite smooth
cutoff family, not the universal stage j=3 assertion. It pinpoints
the operative compensation: signed new prime edges can be negative,
while the genuine parity-one archimedean jump and conductor term
overcome that loss. Nothing in (8) proves the same domination
on other collar functions or the mixed core/collar carrier.

## Independent comparison and first remaining obligation

The arithmetic tent is a finite Hankel compression of the original
odd-reflected prime correlations. It is source-faithful because
the original old-prime test correlations vanish, rather than
because an invented positive graph Laplacian has the desired sign.
The true target remains
  PrimitiveStageLower modThreeQuadratic ... 3:
  Q_chi3,4(f)>=-E(f)/8 for ALL original Admissible chi3 4 f.
A successful specific test cannot establish that universal inequality.
The separate radius-three source certification remains at its
recorded WRITTEN COMPUTER-ASSISTED assurance; this new test uses
only finite prime tables and unconditional gamma calculus.

All continuum support, cutoff, Plancherel, gamma and smooth
approximation claims here are complete WRITTEN mathematical arguments.
The Lean declarations below cover only the source-typed finite
observation and explicit rational consequences. Neither Lean
elaboration nor independent analytic review was run.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourCollarWitness

open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur

/-- The genuine source coefficient includes the original chi3 value,
the original von Mangoldt weight, and EVERY newly active integer
inside the radius-four source. Non-prime powers have zero weight. -/
def oddTent (r : ℝ) : ℝ :=
  max 0 (1 - 8 * |r - 49 / 8|)

/-- Finite original 365-atom odd collar coefficient; no invented
Euler factor or independent character phases are inserted. -/
noncomputable def actualNewPrimeStep : ℝ :=
  2 * ∑ n ∈ (activePrimePowers (4 : ℝ)).filter (fun n => 403 < n),
    primeWeight n * (modThreeQuadratic n).re *
      oddTent (Real.log (n : ℝ))

theorem exact_step_interval_guard :
    (-71 / 100 : ℚ) <
      (-709891560589388914047676 : ℚ) / 10 ^ (24 : ℕ) ∧
      (-709891560288124617293332 : ℚ) / 10 ^ (24 : ℕ) <
        -(709 / 1000 : ℚ) := by
  norm_num

theorem smooth_error_price : (2 : ℚ) * 70 * 3 / 100000 = 21 / 5000 := by
  norm_num

theorem energy_mass_window :
    (2 : ℚ) - 32 / 10 ^ (12 : ℕ) > 15 / 8 := by
  norm_num

/-- The explicit odd-edge negative quadratic sign is stable under
any sufficiently close actual admissible smoothing, once the
finite source coefficient interval and translation error are supplied. -/
theorem smooth_signed_prime_bounds (E deltaPrime : ℝ)
    (hElo : 15 / 8 ≤ E) (hEhi : E ≤ 2)
    (hDlo : -(71 / 100 : ℝ) - 21 / 5000 < deltaPrime)
    (hDhi : deltaPrime < -(709 / 1000 : ℝ) + 21 / 5000) :
    -(2 / 5 : ℝ) * E < deltaPrime ∧
      deltaPrime < -(7 / 20 : ℝ) * E := by
  constructor <;> nlinarith

/-- A complete positive physical Weil VALUE on the selected narrow
smooth collar tests, conditional only on the explicitly separate
actual gamma-energy, constant and signed-new-prime comparisons. -/
theorem source_positive_of_collar_comparison
    (E c arch newPrime : ℝ)
    (hE : 0 < E) (hc : -(6 / 5 : ℝ) < c)
    (harch : (9 / 5 : ℝ) * E < arch)
    (hprime : -(2 / 5 : ℝ) * E < newPrime) :
    (1 / 5 : ℝ) * E < c * E + arch + newPrime := by
  nlinarith [mul_lt_mul_of_pos_right hc hE]

/-- The exact finite digamma/Euler constant comparison underlying
the written gamma-conductor lower bound. -/
theorem digamma_conductor_rational_guard :
    -(1 / 21 : ℚ) - 3 / 5 - 4 / 3 +
      (∑ n ∈ Finset.Icc 1 30, (3 : ℚ) / (n * (4 * n + 3))) >
        -(6 / 5 : ℚ) := by
  norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourCollarWitness
