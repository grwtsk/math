/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors
Original source inspected: grwtsk/math c779a67fa824da8f9b75384f7d61c46baeb2ce1f.
Canonical Noe proof-automation and structural-intelligence skills read.
WRITTEN_ANALYTIC_PROOF_WITH_COMPLETE_EXACT_FINITE_SCHUR_DATA.
Scalar Lean declarations below are separate from the written analytic proof.
FINITE_SCALAR_LEAN_ELABORATION_PASS; UNIVERSAL_ANALYTIC_FORMALIZATION_NOT_RUN.
FRESH_ENVIRONMENT_KERNEL_REPLAY_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
INDEPENDENT_HUMAN_REVIEW_NOT_RUN / WORLDWIDE_NOVELTY_NOT_ASSESSED.
-/
import Mathlib.Tactic

/-!
# The original conductor-three radius-four prime bound and entire high source

## Actual target and source

The target is the EXISTING
  DirichletStageChain.PrimitiveStageLower modThreeQuadratic
    modThreeQuadratic_primitive modThreeQuadratic_nonprincipal 3.
Its inputs are EVERY original DirichletStageChain.Admissible chi3 4 f:
real odd compact C2 functions supported in [-4,4], with physical Lebesgue
L2(dt) energy E and the original finite parity-one gamma form. The branch
identifiers remain obl.stage and cert.all-small-conductor-stages.
This file does NOT prove that stage or assume its missing middle sign.

Retain chi3=(0,1,-1) modulo 3, primitive nonprincipal, conductor 3, parity 1,
and the original source. There is no principal pole in this sector.
For the angular Fourier transform F(xi)=integral f(t)exp(-i*xi*t)dt, put

 J_D(b)=integral_D b(xi)|F(xi)|^2 dxi/(2*pi),
 A(xi)=log(3/pi)+Re psi(3/4+i*xi/2),
 P4(xi)=2 sum_(n=p^e<=2980,p!=3) log(p)/sqrt(n)*chi3(n)*cos(xi*log n),
 s4=A-P4.

The SAME gamma/digamma and correlation identities used in
WeilConductorThreeRawSourceReturn give the literal native source identity

 primitiveArithmeticValue chi3 hp hn 4 (liftReal f)=J_R(s4).       (1)

The source is not replaced by an independently named GRH predicate. The
gamma multiplier is 2 integral_0^infty exp(-3r/2)/(1-exp(-2r))
*(1-cos(xi*r))dr; its constant supplies log(3/pi)+psi(3/4).
The jump-energy/digamma identity is DLMF 5.9.16. Physical correlations at
log n supply precisely the displayed factor TWO and character signs.
Compact C2 gives absolute integrability, since F=O((1+|xi|)^(-2)),
A=O(log(2+|xi|)), and P4 is a finite sum.

## Complete original arithmetic inventory and exact physical Schur theorem

Put Tstar=400001/100000, N=4096, price grid G=10^8, square-root grid U=10^12.
The complete exact intervals prove

 log(2980)<8<log(2981)<2*Tstar<log(2982).

The only newly possible integer 2981=11*271 is not a prime power.
Thus Tstar and the ORIGINAL radius four have the SAME 458 active
unramified prime powers, the largest 2971. The first next active atom is
2999; it must not be silently introduced by an enlarged low filter.
For example, the old radius-three low support addition .00612 would
cross log(2999)/2 and cannot be reused with this unchanged inventory.

The complete finite witness is retained in grwtsk/noeaaeue:
 .cache/chi3-radius-four-20261107/complete_physical_schur_and_high_filter.json
SHA256 5cb6a042e50bc702bf367b406d0f1c49d328e8259e2a36341e98b2e1b44b95f4.
It contains ALL 458 tagged atoms, exact logarithm/weight/root intervals,
every upward-price error, ALL 4096 positive heights, and ALL 4096 complete
source rows. The actual standalone exact checker is
 .cache/chi3-radius-four-20261107/replay_radius_four_high_filter.py
SHA256 48009fc956e58ebd8bea81e73411cab06c645b075984b13ebcb81d46d3cc5022.
The artifact is retained locally; no remote artifact availability or Noe
job is asserted. Complete finite data, not only digests or a recipe, are saved.

For reproducibility, write log n=k*log2+log(n/2^k), and for x in [1,2] use
z=(x-1)/(x+1), the first 24 terms of
2 sum_(j>=0) z^(2j+1)/(2j+1), and the ENTIRE remainder bound
2*z^49/[49*(1-z^2)]. All arithmetic is rational or unbounded integer.
The source intervals enclose log n/(Tstar/N) strictly in one cell (d,d+1).
Use sqrt(n) between floor(sqrt(n*U^2))/U and that value+1/U. Price
log(p)/sqrt(n) UPWARD on G; both weight endpoints and the full price
surplus are retained for every atom.

Start every height at 10^6. Repeat twelve times:
row_i=sum_atoms price_n *
 [max(h_(i+d),h_(i+d+1))
  +max(h_reflect(i-d-1),h_reflect(i-d))],
 h_i=floor(10^6*row_i/max(row)).
Here reflect(j)=-j-1 for j<0; heights outside 0..4095 are zero.
Recompute every row from the final heights. The exact result is

 min h_i=225108>0,
 max_i row_i/(G*h_i)
     =18053610188579/312600000000 <58, attained at cell 297.     (2)

This covers every physical cell and every original atom, without sampling.
Let omega(t) be the even positive step function of these heights on
[-Tstar,Tstar], extended by zero. Translated heights at log n fall in
exactly the neighboring cells charged in the maxima. Consequently (2)
implies, almost everywhere on the physical support,

 sum_n w_n[omega(t+log n)+omega(t-log n)] <=58*omega(t),
 w_n=log(p)/sqrt(n).

On the overlap where both endpoint weights are positive, the weighted inequality
2|f(t)f(t+r)| <= |f(t)|^2 omega(t+r)/omega(t)
                   +|f(t+r)|^2 omega(t)/omega(t+r),
integrated by Lebesgue translation, gives for EVERY complex physical
L2 test g supported in [-Tstar,Tstar]

 J_R(P4;g) <=58*||g||_2^2.                                  (3)

Character signs are bounded absolutely only in this upper estimate.
Omega is an auxiliary Schur weight: the OUTPUT norm in (3) is the
ORIGINAL physical L2(dt) norm, not a weighted norm. Zero-extension
killing, reflection, both shifts and all cell boundaries are accounted
for; boundary points have measure zero. No derivative premise is used.

The exact upward half-mass is 10530513442/10^8. The existing Binet and
quarter-value proof gives A>=-2 globally; hence s4>-213 globally.       (4)

## Constructed high filter and whole-frequency analytic return

Take M=7990, K=2820, epsilon=10^-10 and

 h=1/(5*2^82),
 X=2^85=38685626227668133590597632,
 R=35*2^80=42312403686512021114716160,
 t(xi)=sinc(h*xi)^2,
 p(t)=sum_(j=K)^M choose(M,j)t^j(1-t)^(M-j),
 PH(xi)=p(t(xi)), H=1-PH^2.

Then hX=8/5 and hR=7/4. The dimensionless original all-lobe argument
from WeilConductorThreeComplementTail applies with EXACTLY those values.
For completeness, sinc is positive decreasing on [0,2]. Its alternating
polynomial through degree six at 8/5 is positive and has square >39/100;
the polynomial through degree eight at 7/4 has square <317/1000.
Beyond 2, |sinc x|<=1/|x|, whose square is <=1/4<317/1000.
Thus t>=39/100 below X and t<=317/1000 on the ENTIRE set |xi|>=R,
including all unobserved lobes.

For Z~Bin(M,t), Markov with 17/20 and 47/40 gives
 Pr(Z<=K-1) <=(1-t+17t/20)^M/(17/20)^(K-1),
 Pr(Z>=K) <=(1-t+47t/40)^M/(47/40)^K.
The retained checker verifies BOTH exact integer guards

 1883^7990 *20^2819 *10^10 <2000^7990 *17^2819,
 42219^7990*40^2820 *10^10 <40000^7990*47^2820.

Monotonicity in t follows by coupling Bernoulli trials. Therefore

 0<=PH,H<=1,
 |xi|<=X implies H<=2*epsilon,
 |xi|>=R implies PH<=epsilon.                               (5)

This is a constructed variance family, not a hard frequency projection.
Let eta be the probability box of radius h. Then t=|etahat|^2 and
1-t=E_(S~eta)|exp(i*xi*S)-etahat(xi)|^2.
Write L=1-p. Both L and p have nonnegative Bernstein coefficients and
H=L+Lp. Every monomial t^a(1-t)^b is the average squared transform of
a convolution of a copies of eta and b copies of delta_S-eta, with
radius at most (a+b)h<=2Mh. All coefficient and parameter measures
are finite and nonnegative; each signed convolution has uniformly finite
total variation. Thus, for original f, the actual functions g_theta satisfy

 E_theta |G_theta(xi)|^2=H(xi)|F(xi)|^2,
 E_theta ||g_theta||_2^2=J_R(H)<=E,
 supp(g_theta) subset [-4-2Mh,4+2Mh] subset [-Tstar,Tstar].     (6)

No smoothness is lost: convolution by these finite signed measures
preserves C2 and finite gamma. More generally its L2 and gamma bounds
follow from the finite total-variation bound. For the original C2
domain, ||tau_r g-g||^2<=min(r^2||g'||^2,4||g||^2) justifies the
gamma integrals, all positive averages and signed Fubini operations.
There is no added H1 ratio hypothesis on the original test.

Average (3) over (6):
 J_R(P4*H)<=58 J_R(H).
The native Binet bound A>=log|xi|-3/4 for |xi|>=100, together with
log2>693/1000, gives A>58 on |xi|>=X. On its complement A-58>=-60.
Using (5), the ENTIRE high source therefore obeys

 J_R(s4*H)>=-120*epsilon*E=-(3/250000000)*E.                  (7)

This is a joint gamma-and-signed-prime lower bound, returned to the
actual arithmetic source. No positivity of a reference heat or a coverage
weight supplies the sign in (7).

On the ENTIRE exterior |xi|>=R, (4)--(5) imply
 J_(|xi|>=R)(s4*PH^2)>=-213*epsilon^2*E.
Combine with the exact partition s4=s4*H+s4*PH^2 to obtain, for EVERY
original admissible radius-four test,

 Q_chi3,4(f)>=J_(|xi|<=R)(s4*PH^2)-tau*E,
 tau=3/250000000+213/10^20.                                  (8)

There is no unobserved frequency tail in (8). Equality endpoints are
Lebesgue-null, all primes through the actual cutoff remain present,
and the entire continuous gamma source is retained.

The precise NEXT MISSING LEMMA is

 J_(|xi|<=R)(s4*PH^2)>=-(1/8-tau)*E
 for EVERY original DirichletStageChain.Admissible chi3 4 f.   (9)

If (9) is proved, substitution into (8) gives EXACTLY the original
PrimitiveStageLower at j=3. This file neither supplies nor assumes (9).
The existing completed chi3 j=2 calculation has a different radius and
93-atom inventory and does not imply (9). Every other cofinal coordinate,
primitive sector and the independent zeta/RH branch remain necessary.

## A genuine joint gamma/near-cycle estimate without a derivative hypothesis

This additional source estimate uses the SAME physical metric and parity-one
gamma, and is separate from the high-filter construction. Let

 Gamma1(f)=integral_0^infty exp(-3r/2)/(1-exp(-2r))
                          *||tau_r f-f||_2^2 dr,
 D_d(f)=||tau_d f-f||_2^2.

For EVERY complex physical L2 function with finite Gamma1 and |d|<=10^-11,

                         Gamma1(f)>=6 D_d(f).               (10)

Here is a whole-frequency proof, with no H1 ratio or band limit. The exact
gamma multiplier is
 g1(xi)=2 sum_(j>=0) xi^2/[alpha_j*(alpha_j^2+xi^2)],
 alpha_j=2j+3/2. All summands are positive by the geometric expansion of
the original kernel and Tonelli. Its first term gives
 g1(xi)>=(4/3)*xi^2/(xi^2+9/4).
The translation multiplier q_d=|exp(i*d*xi)-1|^2 satisfies
0<=q_d<=min(d^2*xi^2,4).

On |xi|<=2^35 the exact rational inequality
 6/10^22 <(4/3)/(2^70+9/4)
therefore proves g1>=6q_d. On |xi|>=2^35, use the existing native
Binet lower bound A>=log|xi|-3/4 and A(0)<-1. The latter needs no
numerical digamma assumption: psi(3/4)=-gamma_E-3log2+pi/2,
gamma_E>=H6-log7>1/2 (log7<39/20), log2>693/1000,
pi/2<11/7, and log(3/pi)<0 give A(0)<-7053/7000<-1.
The harmonic comparison gamma_E>=H6-log7 follows by integrating 1/x
between successive integers and passing to its defining limit.
The retained logarithm enclosure at prime 7 verifies log7<39/20.
Thus g1=A-A(0)>=log|xi|+1/4, and
 g1>=35log2>24>=6q_d on this ENTIRE unbounded region.
Plancherel proves (10) on the full finite-gamma domain.

Apply this interface to the ACTUAL odd-character word in
WeilConductorThreeAntiNearCycle, with
 d=log(100004958529/100004958530).
The exact factorizations, ordered word, nine reflected/rotated safe cores,
prefix extrema and exhaustive physical coverage are unchanged: every
path prime is among the new 458 source atoms, the same nine cores cover
[-T,T] for EVERY T>=3, the total character sign is -1, and |d|<10^-11.
Every path-prime half-weight is >=39/100 and the squared multiplicity
sum is 21. These are the existing source-bound exact word/core checks,
not an assumed arithmetic sign.

Use the NEW actual radius-four Schur weight omega=h/10^6 from the complete
payload. It has 9/40<omega<=1. Put u=f/omega on physical support and zero
outside, and retain all 458 actual weighted magnetic-edge energies

 D_n=w_n integral_(t,t+r_n inside support) omega(t)omega(t+r_n)
                            |u(t+r_n)-chi3(n)u(t)|^2 dt.

Direct expansion returns
 sum_n D_n=integral V_omega |f|^2-Pchi4(f)
          <=Wrow*E-Pchi4(f)=S,
 Wrow=18053610188579/312600000000.
No edge diagonal or cross-origin sign is dropped. On each actual safe core,
telescoping the original prime word, grouping repetitions and applying
Cauchy--Schwarz gives

 S>=c integral_core |u(t+sigma*d)+u(t)|^2 dt,
 c=(9/40)^2*(39/100)/21=1053/1120000.

Assign every point to its first covering core. The resulting nine measurable
sets are disjoint and cover the ENTIRE physical interval. On each,
|u(t+sigma*d)+u(t)|^2
 >=2|f(t)|^2-(40/9)^2 |f(t+sigma*d)-f(t)|^2.
The sigma=+1 and sigma=-1 error regions each cost at most D_d.
Summing all nine core bounds therefore proves, with exact constants,

 Pchi4(f)<=(Wrow-117/560000)E+(13/3150)D_d(f).                (11)

Only bounded translations and bounded omega and reciprocal are used;
the original f remains physical L2. No derivative is asserted for the
discontinuous Schur weight. Combining (10)--(11) gives the genuine JOINT law

 Gamma1(f)-Pchi4(f)
   >=(1-13/18900)Gamma1(f)-(Wrow-117/560000)E.                (12)

For native Q, add its ACTUAL constant A(0)E to both sides.
Equation (12) is a quantitative source estimate on all the stated
physical inputs. It is still too weak to imply Q>=-E/8; no completion
of the stage or of the remaining middle inequality (9) is claimed.
Its benefit over a derivative-only near-cycle return is the explicit
parity-one gamma interface (10), including all high frequencies.

## Interfaces, complete retained evidence and scope

Each analytical type has its actual carrier: physical a.e.-quotient L2
with Lebesgue metric; its odd subspace and finite-gamma form domain;
the original compact C2 admissible core; real Fourier multipliers with
measure dxi/(2pi); finite signed convolution measures with total variation;
and dependent finite atom/cell/error data at the exact source parameters.
All their source/domain/metric returns are (1), (3), (6), (7) and (8).

For representable descriptions reuse the dependent context/source codec
of WeilDirichletCompactFilterReturn and WeightedStage.dependentProofCodec.
The retained concrete JSON contains only finite integer/string/list/dictionary
data, with rationals as reduced numerator/positive-denominator pairs. Its
encoder uses sorted unique string keys, exact unbounded integer decimal
encoding, ASCII string escaping, canonical separators and one final newline.
Its decoder uses exact integer parsing and checks byte-identical re-encoding.
Structural induction on that finite JSON grammar proves
decode(encode x)=x; list lengths/source tags carry the dependent context.
The actual complete payload passed that roundtrip. Verification regenerates
and compares EVERY retained field, interval, height and row; it is distinct
from merely comparing their digests. No arbitrary semantic L2 function is
finitely encoded, and no infinite gamma/variance limit is proved just by a recipe.
Those analytic obligations were discharged above.

Coverage heat remains the existing exhaustive enumeration of representable
typed descriptions, code n of weight 2^(-n-1), invalid/status entries retained,
and exact full tail 2^(-J) after J entries. Its source-recovery/inverse laws
are separate from an arithmetic sign and from spectral semigroup heat.
The actual gamma form is closed and positive: its graph map sends f to
tau_r f-f in the positive kernel-weighted L2(dr dt); bounded translations
identify the graph limit and Fatou preserves its domain. Compact smooth
odd tests give a dense physical domain. P4 is a bounded
self-adjoint perturbation by (3). A(0)>-2 gives Q>=-60E, so the physical
Friedrichs realization H4 has a genuine coarse semigroup
||exp[-t(H4+60I)]||<=1. Neither that coarse bound nor finite description
coverage proves the desired H4+1/8 spectral bound; the latter still needs (9).

The complete written Schur/variance argument is an application of standard
Schur testing, Plancherel, binomial Markov bounds and compact convolution.
The finite construction and whole-tail return are new at these recorded
source parameters; worldwide theorem-level novelty is NOT_ASSESSED.
Independent human review, universal analytic formalization, fresh-environment
kernel replay and transitive axiom checks remain NOT_RUN. Only the finite
scalar declarations below passed local Lean elaboration; no integral or
universal physical-source theorem is promoted to that formal scope.
The finite exact program is a local calculation, not a dispatched Noe job.
It does not prove RH or DirichletGRH. The exact latter family remains all
complex Dirichlet characters modulo every positive integer, with zeros in
0<Re(s)<1, using the original native inducing-character/Euler return.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourHighFilter

def physicalRadiusUpper : ℚ := 400001 / 100000
def schurRowMaximum : ℚ := 18053610188579 / 312600000000
def halfMassUpper : ℚ := 10530513442 / 10 ^ 8
def highBoxRadius : ℚ := 1 / (5 * 2 ^ 82)
def highPassCutoff : ℚ := 2 ^ 85
def highStopCutoff : ℚ := 35 * 2 ^ 80
def highSourcePrice : ℚ := 3 / 250000000
def fullReturnPrice : ℚ := highSourcePrice + 213 / 10 ^ 20
def remainingMiddleBudget : ℚ := 1 / 8 - fullReturnPrice

/-- These scalar facts do not themselves certify any source row. -/
theorem finite_schur_and_mass_guards :
    schurRowMaximum < 58 ∧ 2 * halfMassUpper + 2 < 213 := by
  norm_num [schurRowMaximum, halfMassUpper]

theorem positive_height_guard :
    (9 / 40 : ℚ) < 225108 / 10 ^ 6 := by
  norm_num

theorem entire_variance_support :
    (4 : ℚ) + 2 * 7990 * highBoxRadius < physicalRadiusUpper := by
  norm_num [highBoxRadius, physicalRadiusUpper]

theorem dimensionless_pass_stop :
    highBoxRadius * highPassCutoff = 8 / 5 ∧
      highBoxRadius * highStopCutoff = 7 / 4 := by
  norm_num [highBoxRadius, highPassCutoff, highStopCutoff]

theorem binet_threshold_scalar :
    (58 : ℚ) < 85 * (693 / 1000) - 3 / 4 := by
  norm_num

theorem gamma_translation_low_guard :
    (6 / 10 ^ 22 : ℚ) < (4 / 3) / ((2 : ℚ) ^ 70 + 9 / 4) := by
  norm_num

theorem gamma_translation_high_guard :
    (24 : ℚ) < 35 * (693 / 1000) := by
  norm_num

theorem quarter_value_upper_guard :
    -(1 / 2 : ℚ) - 3 * (693 / 1000) + 11 / 7 < -1 := by
  norm_num

theorem actual_cycle_constants :
    (9 / 40 : ℚ) ^ 2 * (39 / 100) / 21 = 1053 / 1120000 ∧
      2 * (1053 / 1120000 : ℚ) / 9 = 117 / 560000 ∧
      2 * (1053 / 1120000 : ℚ) / (9 * (9 / 40) ^ 2) = 13 / 3150 ∧
      (13 / 3150 : ℚ) / 6 = 13 / 18900 := by
  norm_num

theorem highSourcePrice_exact :
    highSourcePrice = 2 * (58 + 2) * (1 / 10 ^ 10 : ℚ) := by
  norm_num [highSourcePrice]

theorem remainingMiddleBudget_pos : 0 < remainingMiddleBudget := by
  norm_num [remainingMiddleBudget, fullReturnPrice, highSourcePrice]

/-- Pure scalar return. Its two analytic hypotheses are (8) and the
explicitly unproved original-domain middle inequality (9). -/
theorem eighth_stage_of_actual_middle
    (E Qvalue Jmiddle : ℝ)
    (hsource : Jmiddle - (fullReturnPrice : ℝ) * E ≤ Qvalue)
    (hmiddle : -(remainingMiddleBudget : ℝ) * E ≤ Jmiddle) :
    -(1 / 8 : ℝ) * E ≤ Qvalue := by
  norm_num [remainingMiddleBudget, fullReturnPrice, highSourcePrice] at hsource hmiddle ⊢
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourHighFilter
