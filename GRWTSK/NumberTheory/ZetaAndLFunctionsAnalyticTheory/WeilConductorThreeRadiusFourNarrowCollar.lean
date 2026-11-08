/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Actual arithmetic source: Connes--Consani--Moscovici,
"Zeta Spectral Triples", arXiv:2511.22755v1, (3.19)--(3.20).
Source read: grwtsk/math@4e1c06f5bb81dfb984d84bc8ec28abfce0b02316,
AGENTS.md, WeilDirichletStageChain, WeilConductorFrontier,
WeilConductorThreeRadiusFourInventory, WeilConductorThreeRadiusFourOddEdges,
WeilConductorThreeRadiusFourCollarWitness.

Source-level WRITTEN analytical theorem, with finite integer/rational
calculations independently executed. The Lean declarations formalize
the finite inventory and scalar consumer, not the integration theorem.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_HUMAN_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourInventory
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourOddEdges
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourCollarWitness
import Mathlib.Tactic

/-!
# A uniform positive original Weil floor on a narrow odd radius-four collar

## Exact target and useful strengthening of the prior one-test result

Keep the ORIGINAL chi3 (0,1,-1), primitive/nonprincipal conductor three,
parity-one gamma, and `DirichletStageChain.Admissible chi3 4 f`.
Let h=1/32. Consider EVERY original real odd C2 test f with support

  supp f subset [3,3+h] union [-3-h,-3].                    (S)

Set E=energy (liftReal f)=int_R f(t)^2 dt.
The written theorem, for ALL such original tests and with NO
new positivity premise about the stage-three source, is

  primitiveArithmeticValue chi3 hp hn 4 (liftReal f)
                                   >= (1/16)*E.              (T)

This is an INFINITE-DIMENSIONAL all-test subspace theorem: no
finite step function, eigenvector, sine-mode, derivative/frequency
cap or weighted norm is imposed. It is not
`PrimitiveStageLower chi3 hp hn 3`, which still asks
Q4>=-E/8 for ALL odd admissible tests on [-4,4].
No result for the mixed interaction with non-collar tests follows.

## 1. Exact source inventory becomes THREE prime powers

The exact primitive signed source is

  Q4(f)=c3 E + Gamma1(f)
       -2 sum_(n=p^e<=2980,p!=3) w_n beta_n C_f(log n),
  w_n=log(p)/sqrt(p^e)>0, beta_n=chi3(p^e)=+1 or -1,
  c3=log(3/pi)+psi(3/4),
  Gamma1(f)=int_(r>0) exp(-3r/2)/(1-exp(-2r))
                              *||f(.+r)-f||_2^2 dr,
  C_f(r)=int_R f(t)f(t+r)dt.

For f supported in (S), same-side overlaps have 0<=r<=h,
and negative-to-positive overlaps have 6<=r<=6+2h.
All other positive-r correlations vanish by disjoint supports
(the endpoints have zero Lebesgue measure). In particular

  C_f(r)=0 for every h<=r<=6,                       (1)
  C_f(r)=0 for every r>6+2h.

This pays, by EXACT ZERO rather than by sign, ALL 93 old
prime-power correlations: log2>h and log403<6.

The next active shifts satisfy
   6<log n<6+2h=97/16.
The exact bound exp(97/16)<430 limits their integers to 404..429.
The original `ConductorThreeRadiusFourInventory.inventory 429`
contains precisely THREE atoms above 403:

     (409,1,409), (419,1,419), (421,1,421).

This is an exact enumeration of all possible prime POWER occurrences,
not a sample or assumption that composite coefficients are zero
without retaining von Mangoldt. The unramified character signs
are respectively +1, -1, +1. Every other one of the original
458 source atoms has zero correlation on these actual tests.

Reproducible rational endpoint guards:
* exp(97/16)<430: the positive Taylor polynomial
  S11=sum_(k=0)^11 (97/16)^k/k! plus the COMPLETE remainder
  [ (97/16)^12/12! ]/[1-(97/16)/13] is <430.
* log2>56/81: take two positive atanh terms at y=1/3.
  Thus log2>h and log16=4log2>11/4.
* log421<121/20: the positive sum
  sum_(k=0)^13 (121/20)^k/k! is >421.
* sqrt409>101/5 since 409>(101/5)^2.
Therefore each of the three positive source half-weights obeys
     log(p)/sqrt(p) < (121/20)/(101/5)
                    =121/404 <3/10.
The EXACT TOTAL active prime half-mass is <9/10.

## 2. Signed odd edges have a uniform PHYSICAL mass price

Write u=f on the positive collar. For each r>6 the odd-cross
correlation has its original sign:

   C_f(r)=-int u(t)u(r-t)dt.

Cauchy--Schwarz, preserving odd extension and change of variables,
gives for ALL such r

   |C_f(r)|<=||u||_2^2=E/2.                         (2)

The real chi3 phase beta_n remains +/-1 in the original sum.
Use absolute values ONLY to price the adverse signed contribution.
With all three actual atoms and no other active source,

   Delta_prime(f)
     = -2 sum_{p in {409,419,421}}
                 (log p)/sqrt p * chi3(p) C_f(log p)
     >= -(9/10)*E.                                  (3)

This is an all-function bound for the literal original source.
It is not the assertion that the positive magnetic edge by itself
equals the Weil source; both diagonal and cross terms are retained.

## 3. Gamma jump pays the new prime penalty on EVERY collar function

For every h<=r<=1/2, (1) gives C_f(r)=0, and hence

    ||f(.+r)-f||_2^2=2E.

The original gamma kernel is positive. Consequently

  Gamma1(f) >= 2E*int_h^(1/2)
                    exp(-3r/2)/(1-exp(-2r))dr.       (4)

For r>0, 1-exp(-2r)<=2r. Taylor's theorem with positive
fourth remainder gives for all r>=0

 exp(-3r/2)>=1-(3/2)r+(9/8)r^2-(9/16)r^3.

Thus the RIGHT-HAND SIDE OF (4), divided by E, is at least

 log(16) - (3/2)(1/2-h)
         + (9/16)((1/2)^2-h^2)
         - (3/16)((1/2)^3-h^3).                    (5)

Since log16>11/4, at h=1/32 the complete strict rational
bound is

   Gamma1(f) >= (1134307/524288)*E.               (6)

No boundary term, old prime, unobserved gamma frequency, or
principal pole has been erased. This uses only ONE positive interval
of the complete infinite gamma integral; all remaining r>=0
contribute nonnegatively.

## 4. Actual parity-one conductor gamma constant and final sign

The existing original constant has the independent unconditional
lower bound c3>-6/5. For provenance, use

 psi(3/4)=-EulerGamma-4/3+
                sum_(n>=1) 3/[n(4n+3)],
 EulerGamma<3/5,
 log(3/pi)>-1/21 (pi<22/7).

The first 30 POSITIVE digamma summands suffice:
 -1/21 -3/5 -4/3 + sum_(n=1)^30 3/[n(4n+3)] > -6/5.
This is a strict rational inequality independently checked. It
does not assume RH, zeros or any positivity of the source Q4.

Combine (3),(6), c3>-6/5 and E>=0:

  Q4(f) >= [1134307/524288-6/5-9/10] E
         = [166511/2621440] E
         > (1/16) E.                              (7)

At E=0 use the non-strict >= interpretation. This proves (T)
for every ORIGINAL admissible test satisfying (S).

The previous `WeilConductorThreeRadiusFourCollarWitness`
constructs a particular negative-prime smooth collar test on
[3,25/8]. The theorem here is qualitatively different:
EVERY odd C2 function with the narrower support (S) has a
strictly positive whole Weil value. Its proof uses the actual
signed prime correlations and gamma jump, not a chosen favorable
test or a proxy graph Laplacian.

## 5. Native finite-gamma EDGE Schur block return

The same proof is valid on the original FINITE-GAMMA form domain,
not only on C2 compact tests: any complex odd L2 function supported
in (S) with Gamma1(f)<infinity has the same exact zero correlations,
the same Cauchy--Schwarz bound, and the positive jump contribution
on [1/32,1/2]. Truncation or smooth approximation is unnecessary for
this particular result, since the native integral and finite prime
terms are all defined on the stated original form domain.

For the original `WeilConductorThreeRadiusFourEdgeSchur` convention,
write u=f restricted to (0,4), q4[u]=Q4(O4 u)/2,
and m11[u]=q4[u]+||u||²/8 on the edge carrier H1=L2(3,4).
The physical norm is E(O4 u)=2||u||², with NO weighted metric.
For EVERY finite-gamma u supported in the first narrow shell
    3 <= t <= 3+1/32
the all-function bound (T) therefore gives

    q4[u] >= ||u||²/16,
    m11[u] >= (1/16+1/8)||u||² = (3/16)||u||².        (8)

This is a genuine POSITIVE diagonal edge-form restriction in the
ACTUAL radius-four source, not merely a finite matrix or a
specific test vector. The shell projection is a bounded physical
L2 projection, and its form-domain restriction consists exactly
of those finite-gamma functions whose support is in the shell.

However `m11` on the whole (3,4) edge and the source mixed block
B:H1->H0 are not proved positive by (8). In particular, the full
target Schur condition
    m11[v] >= <Bv,A0^(-1)Bv>
for EVERY v in H1 remains OPEN; gamma kernel interactions across
t=3+1/32 and the rest of the collar must be paid. This is a
new positive physical subspace available for a source-relative
three-block Schur or directional-resolvent comparison, not an
unjustified extension to the full collar.

## 6. Exact consumer and trust boundary

The original stage-three functional and physical norm are unchanged.
The Lean candidate below proves the exact three-prime-power
finite inventory (using the existing tagged inventory interface),
strict rational endpoint/gamma budget, and a scalar implication
on the actual original `primitiveArithmeticValue` type.
The analytical implications (1)--(6), source transform,
complete gamma integral, atanh/exponential and digamma comparisons
are WRITTEN above, not smuggled into the theorem as a claimed
Lean kernel result. They remain explicit hypotheses in the
formal scalar consumer.

The unproved extension is the MIXED physical core/collar sign,
including every original 458-term correlation and gamma cross
block. No cofinal stage, RH or Dirichlet GRH is inferred.
No theorem-level originality beyond the inspected sources is
asserted; independent human analytical review is NOT_RUN.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourNarrowCollar

open GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourInventory
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreePrimitiveGauss
open GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

/-- The genuine geometric support of the narrow collar, not a
replacement admissible test carrier. The actual native `Admissible`
condition is consumed separately. -/
def NarrowCollarSupport (f : ℝ → ℝ) : Prop :=
  ∀ t, t ∉ ((Set.Icc (-(3 + (1 / 32 : ℝ))) (-3)) ∪
      (Set.Icc (3 : ℝ) (3 + (1 / 32 : ℝ)))) → f t = 0

/-- The complete source inventory of prime-power tags in the only
possible new-correlation integer window, checked as FINITE arithmetic.
The original radius-four source has 458 atoms, but 455 correlations
vanish on this narrow support. -/
theorem only_three_possible_new_atoms :
    ((inventory 429).filter (fun a => decide (403 < a.2.2))) =
      [(409, 1, 409), (419, 1, 419), (421, 1, 421)] := by
  decide

/-- First positive atanh terms for log2, and hence the log16 lower
allowance used in the complete gamma integral. -/
theorem logarithm_rational_guard :
    (11 / 4 : ℚ) < 4 * (56 / 81) := by
  norm_num

/-- Three native prime half-weights, each bounded using
log421<121/20 and sqrt409>101/5. -/
theorem three_weights_rational_guard :
    (3 : ℚ) * ((121 / 20) / (101 / 5)) < 9 / 10 := by
  norm_num

/-- Strict gamma lower allowance after integrating the complete
cubic Taylor minorant on [1/32,1/2]. -/
theorem gamma_collar_rational_guard :
    (11 / 4 : ℚ)
        - (3 / 2) * (1 / 2 - 1 / 32)
        + (9 / 16) * ((1 / 2)^2 - (1 / 32)^2)
        - (3 / 16) * ((1 / 2)^3 - (1 / 32)^3) =
      1134307 / 524288 := by
  norm_num

/-- The gamma-conductor margin pays ALL THREE signed original
prime-power edges, not an invented positive graph source. -/
theorem original_source_narrow_collar_margin :
    (1 / 16 : ℚ) <
      (1134307 / 524288) - 6 / 5 - 9 / 10 := by
  norm_num

/-- Exact consumer on the original primitiveArithmeticValue type.
The full analytic source bounds are EXPLICIT inputs, not completed
Lean theorem statements about every narrow-collar admissible function.
The written proof above discharges them mathematically at stated
analytical scope, pending independent review and Lean elaboration. -/
theorem native_narrow_collar_positive_of_source_bounds
    (f : ℝ → ℝ)
    (_hadmissible : Admissible modThreeQuadratic 4 f)
    (_hsupport : NarrowCollarSupport f)
    (E gamma prime c : ℝ)
    (hE : 0 ≤ E)
    (hreturn : primitiveArithmeticValue modThreeQuadratic
       modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
       4 (liftReal f) = c * E + gamma + prime)
    (hc : -(6 / 5 : ℝ) ≤ c)
    (hgamma : (1134307 / 524288 : ℝ) * E ≤ gamma)
    (hprime : -(9 / 10 : ℝ) * E ≤ prime) :
    (1 / 16 : ℝ) * E ≤
       primitiveArithmeticValue modThreeQuadratic
         modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
         4 (liftReal f) := by
  have hconstMul : -(6 / 5 : ℝ) * E ≤ c * E :=
    mul_le_mul_of_nonneg_right hc hE
  have hfloor :
      (1 / 16 : ℝ) ≤
        (1134307 / 524288 : ℝ) - 6 / 5 - 9 / 10 := by
    norm_num
  have hfloorMul := mul_le_mul_of_nonneg_right hfloor hE
  rw [hreturn]
  nlinarith

/-- The TRUE source lower bound Q4(Ou)>=E(Ou)/16 on the narrow
finite-gamma shell transfers to the ORIGINAL half-line shifted edge
form convention m11=q4+||u||²/8, with E(Ou)=2||u||².
This theorem formalizes the scalar return, not the unformalized
analytic all-input support/gamma proof stated above. -/
theorem original_edge_shell_shift_margin (normSquared q : ℝ)
    (hQ : (1 / 16 : ℝ) * (2 * normSquared) ≤ 2 * q) :
    (3 / 16 : ℝ) * normSquared ≤ q + (1 / 8) * normSquared := by
  nlinarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourNarrowCollar
