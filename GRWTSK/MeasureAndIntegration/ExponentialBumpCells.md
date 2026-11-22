# Actual exponential-bump cell certificates

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 26D10; secondary 65D30, 42A38.
Source: [ExponentialBumpCells.lean](ExponentialBumpCells.lean).
Consumer: [WeilExponentialBumpEvaluation](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilExponentialBumpEvaluation.lean).
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801),
[iteration 6 scope](https://github.com/grwtsk/math/issues/1801#issuecomment-6988414250).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty UNASSESSED. No new exponential inequality or determining test family
is claimed. All formal execution, certified computation and independent review
listed below are NOT_RUN. The literal rational example is a written calculation
and a source proof candidate, not a recorded executed certificate.

## Exact test, domain and removed premises

For T>0 use the SAME actual real function

    f_T(t) = t Phi(T^2-t^2),
    Phi(s) = exp(-1/s) for s>0, and 0 for s<=0.

Here Phi is pinned mathlib's `expNegInvGlue`, including its flat value at zero.
It is NOT the totalized expression exp(-(T^2-t^2)^(-1)) at the endpoints.
The latter would take the value 1 there, whereas Phi(0)=0. Our f_T is smooth,
odd, and supported in [-T,T]. It is nonzero: f_T(T/2)>0, since T>0 and
T^2-(T/2)^2=3T^2/4>0. This nontriviality assertion is written here; it is not
a separately named Lean declaration in this increment.

The consumer previously required bounds for the derivative at EVERY cell point
and for the error of every midpoint sample. For f_T both are now consequences
of its actual formula and finite geometric/order checks. No smoothness,
derivative-range, derivative-formula or exponential-sample oracle is introduced.
The existing arithmetic domain's gamma integrability component is retained
separately in the arithmetic consumer. This family is not asserted dense or
sufficient for testing Weil positivity.

## EBC-1 and EBC-2: rational exponential enclosures with precision control

For y>=0 and a positive integer n with y<=n, set

    L_n(y)=(1-y/n)^n,
    U_n(y)=(1+y/n)^(-n).

Both expressions use only finite arithmetic, powers and inversion; for rational
y they are rational. The denominators n and 1+y/n are strictly positive.
The candidate proves

    L_n(y) <= exp(-y) <= U_n(y),
    0 <= U_n(y)-L_n(y) <= y^2/n.

The first lower inequality is the EXISTING pinned
`Real.one_sub_div_pow_le_exp_neg`. Apply that same theorem at -y to obtain
(1+y/n)^n<=exp(y). Inverting positive quantities and using exp(-y)=1/exp(y)
gives the upper inequality. Nonnegative width follows from the two inequalities.

Here is a separate finite-algebra check of the width. Let u=y/n, a=1-u and
b=1/(1+u). Then 0<=a<=b<=1 and

    b-a = u^2/(1+u) <= u^2.

For every natural n, b^n-a^n<=n(b-a). One proof factors the difference of
powers into (b-a) times a sum of n terms, each at most 1. The source uses
induction instead: the next difference is b(b^n-a^n)+(b-a)a^n. These are
equivalent elementary routes, not independent mathematical review.
Consequently U_n-L_n<=n*u^2=y^2/n. Thus the method is not confined to a
fixed tolerance: its width tends to zero for each fixed finite y as n grows.

The Lean definitions are over the reals, as required by the analytic consumer.
Their rational specialization does not by itself install an executable rational
checker, prove a serialization parser, or certify a hardware floating-point run.

## EBC-3 through EBC-9: smoothness and actual endpoint-safe derivative

Pinned `expNegInvGlue.contDiff` proves smoothness of Phi. Composition with the
polynomial T^2-t^2 and multiplication by t prove smoothness of f_T. The square
is even, so f_T(-t)=-f_T(t). If |t|>=T>=0 then T^2-t^2<=0 and f_T(t)=0.
Closure of the support is therefore contained in the compact interval [-T,T].
This proves compact support without replacing the formula by an indicator.

Specialize pinned `expNegInvGlue.hasDerivAt_polynomial_eval_inv_mul` to the
constant polynomial 1. It gives, at ALL real s, including s=0,

    Phi'(s) = s^(-2) Phi(s).

For s<=0 both sides vanish. For s>0 put y=1/s. The elementary exponential
series inequality y^2/2<=exp(y), supplied by the pinned
`Real.pow_div_factorial_le_exp` with n=2, gives

    0 <= s^(-2) Phi(s) <= 2,     0 <= Phi(s) <= 1.

The product and chain rules therefore give the actual all-real derivative

    f_T'(t) = Phi(T^2-t^2)
      -2t^2 (T^2-t^2)^(-2) Phi(T^2-t^2).

At t=+/-T the displayed formula equals zero, in agreement with smooth gluing.
For |t|<=T, triangle inequality gives

    |f_T'(t)| <= 1+4t^2 <= K_T := 1+4T^2.

No inverse distance to a support endpoint remains in K_T. The derivative of the
canonical complex inclusion is the inclusion of this real derivative because
`Complex.ofRealCLM` is continuous linear. Its complex norm is the same absolute
value. Thus the bound applies to the actual complex lift used by quadrature
and the Weil consumer, not merely to a real surrogate.

## EBC-10 through EBC-12 and EBC-14: actual samples and whole cells

For an interior sample |q|<T, let y=(T^2-q^2)^(-1)>0. Choose n>0, y<=n and set

    w(T,q,n) = q (L_n(y)+U_n(y))/2,
    s(T,q,n) = |q| (U_n(y)-L_n(y))/2.

The enclosure for exp(-y) gives the complex inclusion bound

    0<=s(T,q,n),
    |f_T(q)-w(T,q,n)| <= s(T,q,n)
      <= |q| y^2/(2n).

Absolute value on q is essential. Negative midpoints have negative centers,
not negative radii. If q=0 then the center and error radius are both zero.

Take any FINITE strict covering partition -T=x_0<...<x_N=T and let
h_j=x_(j+1)-x_j, q_j=(x_j+x_(j+1))/2. Each q_j is strictly inside [-T,T],
although both endpoints of every cell are INCLUDED in the derivative bound.
Choose positive integers p_j >= (T^2-q_j^2)^(-1), for each j<N.
The definitions `bumpCellSamples` and `bumpCellErrors` use exactly w and s above.
The theorem `oddExpBump_cell_inputs` derives all three old supplier premises:
nonnegative sample radii, actual midpoint errors, and derivatives bounded at
every point of every closed cell. Strictness is a method-specific restriction
on the partition, not a weakening of the arithmetic test or zero domain.

### Literal written sample table

At T=1, take the two cells [-1,0] and [0,1], with p_0=p_1=2.
Both midpoint exponents are y=4/3. Exact arithmetic gives

    L_2(4/3)=1/9,  U_2(4/3)=9/25,
    w(1,-1/2,2)=-53/450,  w(1,1/2,2)=53/450,
    s(1,-1/2,2)=s(1,1/2,2)=14/225,  K_1=5.

`unit_half_sample_pair` states the two resulting actual complex sample bounds.
Its proof body invokes EBC-10 and uses `norm_num` on the rational expressions;
that body has NOT been executed. The derivative part is all-cell analysis,
not an inference from these two samples.

## EBC-13: return to original moments and both L1 integrals

Use the EXISTING definitions in RawMomentQuadrature and put

    epsilon_j=K_T h_j/2+s_j,
    E=sum_j epsilon_j h_j,
    B0=sum_j (|w_j|+epsilon_j)h_j,
    B1=sum_j K_T h_j.

The actual complex lift g_T(t)=f_T(t) in C is C1 with compact support. EBC-12
supplies all cell inputs to the unchanged DCB-3 theorem. Therefore, for EVERY
natural k,

    |rawMoment(g_T,k)-quadratureMoment(x,w,N,k)| <= T^k E,
    integral |g_T| <= B0,
    integral |g_T'| <= B1.

This is the explicit source return: the same g_T, its moments, and its norms,
not those of the sampled step function. Integrability is established by the
smooth compact-support argument before the integrals are used. The step
function occurs only inside the quadrature approximation.

For the two-cell example the finite budgets are, by written rational algebra,
E=1153/225, B0=134/25, B1=10. These deliberately coarse values illustrate
soundness, not a useful arithmetic sign. They are not additional executed or
separately named numerical theorems in this increment.

### Quantified local accuracy: written consequence, no extra Lean declaration

Fix T>0. For the uniform N-cell partition, N>=1, h=2T/N and
|q_j|<=T(1-1/N). Thus T^2-q_j^2>=T^2/N and y_j<=N/T^2.
Choose a COMMON positive integer p>=max(N/T^2,N^3/T^2). The proven sample
radius bound gives s_j<=N^2/(2T^3 p). Consequently

    E <= 2 K_T T^2/N + N^2/(T^2 p)
      <= (2 K_T T^2+1)/N.

For any fixed raw moment k and accuracy eta>0, an integer
N>(2 K_T T^2+1)T^k/eta makes its quadrature error less than eta.
The constants depend on T and k; this is NOT uniform in an unbounded moment
order or support window. Choosing p after N is finite and explicit by an
integer ceiling. This proves local table availability for this formula in
writing, not zero/count certificates, an efficient algorithm, all-test density,
a universal arithmetic sign or a new Lean theorem about that convergence.

## Individual declaration/provenance records

All EBC declarations have prefix
`GRWTSK.MeasureAndIntegration.ExponentialBumpCells`.
All are local consequences/applications, not direct new paper formalizations.
The exact source pin and upstream links are below. Each inherits the stated
SOURCE_PROOF_CANDIDATE / NOT_RUN evidence, not upstream execution evidence.

- EBC-1 `expNegBinomial_enclosure`: domain y>=0, 0<n, y<=n; provider
  Real.one_sub_div_pow_le_exp_neg at y and -y, plus inversion of positive reals.
  Consumer EBC-10; no exponential evaluation premise.
- EBC-2 `expNegBinomial_width_le`: same domain; local difference-of-powers
  induction and rational identity b-a=u^2/(1+u). Consumer EBC-11.
- EBC-3 `oddExpBump_contDiff`: every real T; provider
  expNegInvGlue.contDiff plus polynomial composition/product. Consumer EBC-13/WEB-1.
- EBC-4 `oddExpBump_odd`: every real T; local square parity and multiplication.
  Consumer WEB-1; no even-sector or pole-neutral claim.
- EBC-5 `oddExpBump_zero_of_le_abs`: T>=0, T<=|t|; provider
  expNegInvGlue.zero_of_nonpos. Consumers EBC-6, EBC-13 and WEB-1.
- EBC-6 `oddExpBump_hasCompactSupport`: T>=0; EBC-5 and closure in compact Icc.
  Consumers EBC-13 and WEB-1.
- EBC-7 `hasDerivAt_oddExpBump`: every real T,t; provider
  expNegInvGlue.hasDerivAt_polynomial_eval_inv_mul at p=1 and chain/product rules.
  Consumer EBC-8/9; endpoint differentiability is supplied, not assumed.
- EBC-8 `abs_deriv_oddExpBump_le`: T>=0, |t|<=T; EBC-7,
  Real.pow_div_factorial_le_exp at degree 2, triangle inequality. Consumer EBC-9.
- EBC-9 `norm_deriv_complex_oddExpBump_le`: same domain; EBC-8 and
  Complex.ofRealCLM.hasFDerivAt composed with EBC-7. Consumer EBC-12.
- EBC-10 `oddExpBump_sample_error`: |t|<T, n>0, (T^2-t^2)^(-1)<=n;
  EBC-1 and midpoint enclosure algebra with |t|. Consumers EBC-12 and EBC-14.
- EBC-11 `bumpSampleRadius_le`: same domain; EBC-2 times |t|/2.
  Consumer the explicit local-accuracy calculation above; NOT a universal sign.
- EBC-12 `oddExpBump_cell_inputs`: T>0, finite strict cells inside [-T,T],
  positive certified orders; EBC-9/10 plus finite geometry. Consumers EBC-13/WEB-2.
- EBC-13 `oddExpBump_moment_norm_bounds`: additionally x_0=-T,x_N=T;
  EBC-3/5/6/12 and DCB-3, at the SAME actual function. Arithmetic consumer WEB-2
  uses the same DCB chain through WFN-5.
- EBC-14 `unit_half_sample_pair`: no hypotheses, the two explicit T=1 samples;
  EBC-10 with n=2 and rational normalization. Consumer concrete sample-table
  inspection above; no certificate for a full Weil value.

### Pinned primary sources and dated comparison

Inspection/authoring base: math `8575a7d64b2b1ddc5b67618b9b55c950a2861fbb`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

- Mathlib contributors; SmoothTransition source by Sebastien Gouezel and Yury
  Kudryashov, [pinned SmoothTransition.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/SmoothTransition.lean).
  Blob `cd24266ad8eb620150d7dd302ea1d6932745c14b`.
  Exact providers: expNegInvGlue definition, zero_of_nonpos, nonneg,
  hasDerivAt_polynomial_eval_inv_mul, contDiff. Imported dependency, not copied source.
- Mathlib contributors, [pinned Exponential.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/Exponential.lean).
  Blob `33157375f0b14cae92abf333dadef21ebbfce756`.
  Exact providers: pow_div_factorial_le_exp, exp_neg, exp_le_one_iff,
  one_sub_div_pow_le_exp_neg. In particular the binomial lower bound is already upstream.
- grwtsk contributors, [DCB-3 at the exact base](https://github.com/grwtsk/math/blob/8575a7d64b2b1ddc5b67618b9b55c950a2861fbb/GRWTSK/MeasureAndIntegration/DerivativeCellBounds.lean),
  `moment_l1_deriv_bounds_of_deriv_cells`, blob
  `5410f2f4b0c21ba0ed8bf7eaee511f6b376f0363`.
  Its hypotheses are actually supplied for this formula, rather than restated.

Comparison dated 2026-11-18: inspected these exact providers and WFN-5, and
searched the canonical repository for expNegInvGlue. Code-search output was
empty/incomplete and is NOT evidence of absence elsewhere. This is an elementary
source-specific supplier; no literature-wide absence or novelty is asserted.

## Hostile checks and limits

1. Endpoints: substituting the totalized inverse into exp gives the WRONG value
   at T^2-t^2=0. All differentiability/support work uses the flat glue instead.
2. Order: omitting y<=n is unsound. At y=3,n=2 the proposed lower value is 1/4,
   but exp(-3)<1/4, since exp(3)>=1+3+9/2>4. n=0 is also excluded.
3. Sign of a sample: a negative q must not make the radius negative. The source
   keeps |q| and separately tests both signs in EBC-14.
4. Samples alone do not bound derivatives. EBC-7/8 are genuine all-point proofs.
   A discontinuous jump with a totalized derivative cannot replace this test.
5. A fixed sample width does not vanish by mesh refinement alone. EBC-2/11 and
   the written mesh/order schedule explicitly pay that width as the mesh changes.
6. The resulting norm majorants may be very loose; no arithmetic lower sign,
   pole-neutral equivalence, zero-list completeness or spectral identity follows.

These are internal analytical checks. Independent review is NOT_RUN.

## Verification and source-authoring boundary

Parsing, elaboration, exact exported types, targeted/full builds, fresh kernel
replay, transitive axiom audit, certified arithmetic execution and independent
mathematical review: NOT_RUN. No check receipt from a dependency is promoted.
Novelty: UNASSESSED. Source-only text/identity checks and publication hashes are
recorded in issue #1801, not presented as a formal-proof execution receipt.

The canonical Noe proof-execution skill returned 404 at main revision
`7a0139525137109a68534a0c3f28f6e77b7bc7f7`; no verified local skill checkout
or Lean/lake executable was found. Dependent execution was not dispatched.
Ordinary source publication is separate. Imports/pins and older evidence are
unchanged. Required exact-pin future checks include this module and WEB-2,
followed by statement comparison and transitive axiom auditing. None is claimed run.
