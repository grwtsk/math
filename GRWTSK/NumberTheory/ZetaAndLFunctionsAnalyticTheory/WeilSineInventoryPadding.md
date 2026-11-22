# Support-safe integer inventories and exact-source sample return

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Owner: [WeilSineInventoryPadding.lean](WeilSineInventoryPadding.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.SineInventoryPadding`.
Primary MSC2020: 11M06; supporting 42A38, 65G20.
Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837).
Consumer: original `FiniteSineSpatialResidual` and `FiniteSineSignedEnergy`
scalar observations, retaining the original gamma-output error separately.

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty/prior-art completeness UNASSESSED; no novelty claimed. Lean parsing,
elaboration, exact types, builds, fresh kernel replay, transitive axiom audit,
and independent review NOT_RUN. No complete numerical sample table or matrix
sign is supplied. This is real odd conductor-one zeta, not Dirichlet GRH.

## SIP-1. The original output, not a truncated Euler-product model

For T>0, the original physical prime output of a function f is

    P_T f(t) = sum_(q in activePrimePowers T)
        w_q [f(t+log q)+f(t-log q)],
    w_q = vonMangoldt(q)/sqrt(q).

The complete source SUBTRACTS P_T, and retains the gamma terms and both pole
orientations (the negative rank-one term in the real odd sector). Nothing in
this module changes that source form, its domain, its metric or its shift.

The numerical obstacle addressed is deciding the original real cutoff. The
companion admits exact lists at radii 1,2,3 and an integer upper list for every
integer radius. A positive operator or a sign for a prime-truncated substitute
plays no role.

For finite sine trials

    f_c(t) = sum_i c_i zeroExtendedSine(T,i+1,t),

both endpoint values are exactly zero: the phase at T is (i+1)*pi and at -T
its negative. The source definition is zero outside [-T,T]. Thus

    t<=-T or T<=t  implies  f_c(t)=0.                 (SIP-1)

This is a pointwise assertion about the specified representatives, not a
statement that endpoint evaluation exists on the whole logarithmic form domain.

## SIP-2. Proving that extra exact labels vanish

Let f satisfy the endpoint-and-exterior condition (SIP-1), and let t lie in
[-T,T]. For r>=2T,

    t+r >= T,       t-r <= -T,
    f(t+r)+f(t-r)=0.                                 (SIP-2)

Suppose B is a natural with exp(2T)<=B. The companion proves containment of
all active source labels in Icc 2 B. Any extra label q in that integer interval
satisfies q>=exp(2T), so log q>=2T. Equation (SIP-2) makes BOTH exact translates
zero, and hence their weighted summand zero. Finite-sum extension therefore
proves

    P_T f(t) = sum_(2<=q<=B) w_q[f(t+log q)+f(t-log q)] (SIP-3)

for EVERY physical-window point t. There is no missing tail in this finite
arithmetic identity. It is NOT asserted for all spatial t outside the window.
Nor is `activePrimePowers T = Icc 2 B` asserted under an upper bound alone.

Apply the companion inequality exp(2n)<=9^n and (SIP-1). For every integer
n>=1, the original finite-sine output admits B=9^n with no unevaluated inventory
hypothesis. This includes n=j+1 for the dyadic stages. The margin and sign of
the Schur form are not part of this all-n statement.

For an EXACT admitted inventory S=Icc 2 B, rather than an upper padding,
source sum equality holds for any f and every t. `primeOutput_eq_of_inventory`
provides this simpler return using the companion radius-one/two/three results.

## SIP-3. Why rounded extra labels must still be paid

The exact zero in (SIP-2) does not imply a rounded shift is zero. A rounded
logarithm can move a point across the support boundary. Dropping the extra
labels after rounding without a new enclosure would be unsound.

Use the preceding generated rational lag centers ell_q and radii rho_q,
upper logarithm bounds U_q, weight centers omega_q, and weight radii sigma_q
on EVERY label q in Icc 2 B. The same exact prime-power classification is used:
log(minFac q), not log q, appears in a prime-power weight; non-prime-powers
have exact zero weight intervals. Both orientations are retained.

For a globally K-Lipschitz input and |f|<=A, define

    Pnum_B f(t) = sum_(2<=q<=B) omega_q [f(t+ell_q)+f(t-ell_q)],
    B_lag = 2 sum_(2<=q<=B) U_q rho_q,
    B_weight = 2 sum_(2<=q<=B) sigma_q.

The latter two expressions reuse `PrimeLagSampling.budgetFor` and
`PrimeWeightSampling.weightBudget` on an ordinary integer finite set. In
particular they no longer require evaluating ceil(exp(2T)) or its real filter.

For each q, pass through the intermediate exact-weight, rounded-lag term:

    w_q pair(log q) - omega_q pair(ell_q)
      = w_q [pair(log q)-pair(ell_q)]
        + (w_q-omega_q) pair(ell_q).

The first difference is at most 2*K*rho_q in absolute value. Since
0<=w_q<=log q<=U_q, the first weighted error is at most 2*K*U_q*rho_q.
The second is at most 2*A*sigma_q. All signs of the source itself remain;
absolute values majorize only the error. Summation gives

    |P_B f(t)-Pnum_B f(t)| <= K*B_lag + A*B_weight     (SIP-4)

at EVERY t. Here P_B is the exact integer-list expression. Combine (SIP-3)
and (SIP-4) on the physical window to recover the original source output.
No independence between scalar errors is assumed. The intermediate expression
prevents omission of a coefficient-times-displacement cross error.

For fixed B, the sum has finitely many labels and scalar precision can be
increased for each one. This does not give a uniform rate as B=9^n grows,
nor does it establish an arithmetic cancellation or sign theorem.

## SIP-4. Return to the existing spatialColumn

`integerSpatialColumn` replaces only the prime part of the existing numerical
spatial column by Pnum_B. The following are retained unchanged:

* original middle gamma function and separated complete tail;
* original constant gamma term and physical beta shift;
* original minimizing pole port -2 integral f_c(t)*sinh(t/2) dt;
* original subtracted finite sine head f_d and normalization.

On [-T,T] the exact algebraic difference is

    spatialColumn - integerSpatialColumn = Pnum_B f_c - P_T f_c.

The prime sign is negative in the source, which explains this orientation.
If a numerical observation satisfies

    |integerSpatialColumn(t)-p| <= e,

then `integer_sample_transfer` proves

    |spatialColumn(t)-p|
      <= e + sineLipschitz(T,c)*B_lag
             + amplitude(T,c)*B_weight.              (SIP-5)

Here `amplitude` and `sineLipschitz` are the prior derived bounds on the
ORIGINAL finite sine, not new assumed regularity. Rational upper bounds
Ahat,Khat give the rational radius e+Khat*B_lag+Ahat*B_weight by monotonicity
of the nonnegative existing budgets. That last scalar inflation is a written
consequence, not an additional new Lean endpoint in this increment.

For integer n>=1 choose T=n and B=9^n; `integer_exp_le_nine_pow` supplies hB.
For the smaller exact inventories at T=1,2,3, (SIP-3) can instead be replaced
by exact set equality before performing the same finite-sum proof. No support
padding error is then needed, and prior sample returns can be rewritten with
the smaller lists. In either case the complete source samples feed BOTH
existing signed-energy lower and complete residual-Gram upper matrices.

Sine/pi/normalization values, gamma constants and panel/tail scalar enclosures,
pole moments, and all remaining evaluation errors still need valid data.
A valid inventory does not discharge those premises. The independent gamma
OUTPUT approximation error must still be added when moving from spatial
samples to the original operator and form.

## Hostile controls and sharp boundaries

1. Endpoint vanishing is necessary for pointwise padding at the equality case.
   With f=1_[-1,1], t=-1 and r=2, the paired sum is 1, not 0. At T=log(2)/2,
   the q=2 cutoff equality gives the same failure for the interval indicator.
   The existing sine representatives have zero endpoints, so this counterexample
   does not apply to them. No claim about arbitrary L2 point values is made.
2. Rounded padding cannot be dropped for free. With the tent function
   f(t)=max(0,1-|t|), t=-1, the r=2 pair is zero, while r=2-h has value h
   for 0<h<1. This example has the genuine global Lipschitz property and
   shows why padded labels occur in BOTH error sums in (SIP-4).
3. Both orientations are required: the scalar f(t)=|t| at t=0 attains the
   paired sensitivity 2|r-s|. This is a sensitivity check, not an admissible
   compact Weil test or independent review.
4. No identity outside the physical window is asserted. At t=-log q an
   inactive shift can reach the center of a supported function.
5. Padding makes the source exact but may be numerically expensive. The
   larger lag-error sum can worsen the estimate. Exact admitted inventories
   remain preferable where their boundary certificates are available.
6. The bounded sample approximation does not replace the genuine unbounded
   gamma form in the high-complement coercivity theorem.

Executed controls checked (SIP-2) for a rational endpoint-zero tent on 21
spatial points and three r>=2 values. The endpoint indicator negative control
was also executed. These finite controls supplement the full written argument;
they do not prove a universal mathematical inequality by sampling.

## Individual declaration correspondence

Names are qualified by the namespace printed above.

| Declaration | Primary argument / immediate supplier / consumer |
|---|---|
| `finiteSine_zero_outside_open` | SIP-1, literal zero extension and sin(n*pi)=0; pointwise cutoff boundary. |
| `paired_shift_zero` | SIP-2, two endpoint inequalities; extra exact prime labels. |
| `primeOutput_eq_of_inventory` | Rewrite the canonical active set using its proved equality; smaller certified inventories. |
| `primeOutput_eq_padded` | SIP-3, companion containment, log monotonicity, finite-sum extension by zero; exact original physical output. |
| `integer_radius_output` | SIP-1--3 and exp(2n)<=9^n; every positive integer source radius. |
| `integer_output_error` | SIP-4, original generated lag/weight intervals, modulus and amplitude; complete padded rounding surcharge. |
| `integer_sample_transfer` | SIP-5 and exact signed cancellation of all unchanged terms; both existing scalar table consumers. |

The private `paired_lag_bound` is the elementary triangle/Lipschitz calculation
used in SIP-3. The previous module's corresponding helper is private, so this
local proof does not introduce a competing public API.

## Exact sources and verification

Math inspection pin: `83b37724b351e1fb04abbad1cf45b746160517ee`.
Lean `leanprover/lean4:v4.34.1`, mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612` unchanged.

* [WeilOddPrimePoleOutput.lean](WeilOddPrimePoleOutput.lean), blob
  `15e472b9fa1e7ad7c9d56de19cc4bdc2333cf235`: exact signed prime output.
* [WeilOddGammaOutput.lean](WeilOddGammaOutput.lean), blob
  `b8513ef86ef6b18f7f4247967fd6ace194a0af36`: original whole-line sine regularity.
* [WeilFiniteSineSpatialResidual.lean](WeilFiniteSineSpatialResidual.lean), blob
  `f5cee6ab161db1e56e8d13e08483a9b42a694edd`: spatialColumn, including the actual
  gamma weights, pole port, physical beta and arbitrary retained head.
* [WeilFiniteSineGammaQuadrature.lean](WeilFiniteSineGammaQuadrature.lean), blob
  `4c0038754542e9ad2e0b33b55add264d074320db`: finiteSine_lipschitz.
* [WeilPrimeLagSampling.lean](WeilPrimeLagSampling.lean), blob
  `9fb7a279288aae458c84676043097c6c0bc55dc7`: original lag intervals and budget.
* [WeilPrimeWeightSampling.lean](WeilPrimeWeightSampling.lean), blob
  `89bb6a5b8775976f6b3aa23bd47cc40ffffdbf4e`: amplitude and weight budget.
* [WeilRationalPrimeWeights.lean](WeilRationalPrimeWeights.lean), blob
  `973510bc0ec6a01a8db3c2c1e2f6c870559476c8`: genuine coefficient intervals.

This is source-specific deterministic finite arithmetic and support analysis,
not a new Weil criterion or a claimed new interval method. No additional paper
theorem is formalized. The paired source convention is inherited from the
specified original declarations; their evidence status is not promoted.

Exact rational examples and source-text checks are separate from proof checking.
Lean parsing, elaboration, exact types, kernel replay, transitive axiom audit,
complete numerical samples, signed Schur evaluation and independent review
remain NOT_RUN. Canonical Noe proof skill was inaccessible at revision
`b0be41adc8b0bf76f9735b3c2793faf7f80862c3`; no dependent execution was dispatched.

Build target, NOT_RUN:

    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSineInventoryPadding

The true high floor, low-coordinate reconstruction, successful complete signed
Schur certificates and their cofinal existence remain OPEN. Uniform existence
of finite source label lists is NOT uniform existence of accepted certificates.
