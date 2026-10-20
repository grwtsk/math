# Checked rational zeta value and slope at one exact center

Parent: `4f7f2d95c20c9439bb23fac13fd3376e50e34b8f` (PR #320).
Research date: 2026-10-20. Issues: #189 / #261; program #257.
Status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.

This increment implements typed, pure rational recomputation of the joint
center packet and supplies its complete analytic interpretation by source
proof drafts. No Lean/Lake invocation, compilation, code-generation check,
kernel audit, replay, actual-zero packet or strict prime margin is represented.
New and inherited scripts can require elaboration repairs. This is classical
finite-error analysis, not a new prime-distribution result.

## 1. Fix the source before choosing precision

The input center `c : QComplex` and prefix length `N` are external to `Plan N`.
A plan contains exactly N prefix power schedules, one terminal power schedule,
a rational positive Cauchy radius, and separate value/slope rounding bits.
There are no purported intermediate values, analytic error proofs or supplied
zeta values. Prefix bases are computed as i+1 for i in Fin N; the terminal
base is L=N+1. Every exponent is computed from the SAME center as -c.

The checker retains all endpoint admissibility guards and verifies

    0 < r <= Re(c),       normSqQ(c-1) > 0.

The squared norm check excludes the actual pole. The Cauchy disk may contain
one: the inherited estimate applies Cauchy to the analytic omitted tail,
not to raw zeta. A zero radius is rejected before its totalized division can
be interpreted as a certificate. The new route uses Re(c)>0; it does not
extend the old joint-tail domain. N=0 is permitted, but its terminal power,
terminal coefficients and complete tails remain present.

A typed finite function supplies schedules. This is NOT a byte encoding,
wire-format validator or resource-bounded service. A parser/refinement layer
would still have to bind its records to exactly this finite domain.

## 2. Compute both finite expressions and their errors

Reuse the existing endpoint computation. At base t and exponent -c it produces
V_t,e_t and rational logarithm data lambda_t,eta_t. Define

    W_t = -lambda_t * V_t,
    g_t = (abs(lambda_t)+eta_t)*e_t + rect(V_t)*eta_t,
    rect(z) = abs(Re(z))+abs(Im(z)).

The negative logarithmic factor and the logarithm uncertainty are both
retained. Exact refinement to the historical logValue/logError and its actual
power theorem supplies the interpretation of this pair.

Compute rational complex coefficients

    H = L/(c-1) + 1/2 + c/(12L),
    J = -L/(c-1)^2 + 1/(12L).

Exact rational division, casting, finite summation and coefficient identities
identify these with the maintained finite complex formulas. No finite
difference is used for the slope. The joint calculation is

    V_F = sum_(k=1..N) V_k + H*V_L,
    V_D = sum_(k=1..N) W_k + J*V_L + H*W_L,
    E_F = sum_(k=1..N) e_k + rect(H)*e_L,
    E_D = sum_(k=1..N) g_k + rect(J)*e_L + rect(H)*g_L.

`finite_sound` derives both finite-expression enclosures; neither is a caller
hypothesis. It reuses the existing log-product and coefficient error lemmas.
It does not infer convergence of an uncorrected Dirichlet sum in the critical
strip. The underlying Euler--Maclaurin representation is classical; a public
reference is NIST DLMF 25.2.10, https://dlmf.nist.gov/25.2.E10 . Exact supplier
identities in this increment remain pinned to the repository parent.

## 3. Add complete tails, then independently round both outputs

The inherited rational disk budget is

    B_N(c,r) = [rect(c)+r][rect(c+1)+r][rect(c+2)+r] / [96(N+1)^2].

Form the complete pre-rounding bounds

    E_value = B_N(c,0) + E_F,
    E_slope = B_N(c,r)/r + E_D.

The slope bound retains its own Cauchy radius and division by r. No derivative
is taken of a pointwise magnitude inequality. Both complete analytic tails
are charged once. The previous analytic source identification remains an
audited dependency, not an assertion verified by the rational arithmetic.

Each pair (value,error) is passed separately to the unchanged initialState:

    finalValue = componentwise_floor_grid(value),
    finalError = upward_grid(error + 2/grid).

Thus quotient/coefficient and summation arithmetic is exact rational arithmetic
until these two final roundings. Endpoint rounding was already charged in e_t.
The final value bits and slope bits may differ. A sequential floating-point
implementation would require another refinement proof and error allowance.
Stored final denominators are dyadic; intermediate rational sizes remain
unbounded by this work.

## 4. Acceptance is about all six returned rational fields

`evaluate` first requires the complete finite guard predicate. It returns data
only if BOTH final error budgets meet their respective rational tolerances.
`verify` additionally checks exact recomputation of all four complex
coordinates and both errors. A small asserted error is never trusted.

The source draft `verify_sound` gives

    |zeta(c)-value| <= returnedValueError <= valueTolerance,
    |zeta'(c)-slope| <= returnedSlopeError <= slopeTolerance.

Failure means invalid guards OR an excessive computed value budget OR an
excessive computed slope budget. It does not establish actual inaccuracy,
nonexistence of a better schedule, zero absence or a prime-distribution fact.
Equality is accepted for numerical tolerances, but no prime-margin convention
has been changed. Raw totalized compute output outside the guards is not
certified.

## 5. Newton integration without a supplied center enclosure

`newtonData` constructs the existing Newton Data from the externally fixed
center, a separately proposed Newton radius/inverse, and the verified joint
output. Its errors are exactly the returned errors: no smaller allocation or
unverified copied value is accepted in their place.

`verifyZero` requires joint center verification AND the unchanged rational
Newton test. `exists_zero_of_verify` derives an actual canonical ZeroPoint in
the proposed Newton disk, nonzero derivative and local uniqueness. The proof
uses the existing whole-disk curvature and fixed-point arguments; it does not
assume an actual-zeta enclosure, local zero or derivative oracle.

This is a theorem about successful checks, NOT a constructed passing zero
packet. The diagnostic center 2 is not a zero. The cutoff N for finite zeta
summation, the signed-chart stage, the Cauchy radius and Newton radius are
independent parameters. No critical-line status is inferred from a midpoint.
The inherited global height count, count saturation, complete head identity,
actual multiplicities, scaled omitted-zero tail and strict prime margins are
unchanged. Local zero certification does not count other zeros.

## 6. Evidence and unperformed verification

The companion exact-rational diagnostics completed 417 assertions over 18 joint
models, including nine independent integer-zeta value/slope reference pairs.
The reference intervals use convergent Dirichlet series and independent
positive-Mercator logarithm enclosures, with complete integral-test tails;
they do not reuse the candidate's Euler--Maclaurin coefficient formula to
identify the infinite source. Python does not prove their analytic identities.
No floating-point arithmetic is used.

A directed example uses c=2, N=4, r=1/2, 40 value bits and 42 slope bits. Both
targets 1/50 and 1/20 pass. Altering each of the six returned fields is rejected
in the directed tests. Additional tests cover invalid prefix or terminal
schedules, zero/oversized radii, the pole, negative tolerances, empty prefixes,
and independent target failure. Complex models of both height signs exercise
arithmetic/refinement controls, not actual zero existence.

All diagnostic scripts and execution records stay outside this pure-math
repository. Limited lexical/hash/manifest checks are not parsing, exact-type
checking, compilation, or an inherited trust audit. Source status remains
NOT_RUN / NOT_KERNEL_AUDITED. The next numerical milestone is a concrete
passing local zero packet with adequate precision or sharper tails. A sharp
complete count at the same packet height and all-interval strict margins are
independent requirements. No execution hold or issue disposition is changed.
