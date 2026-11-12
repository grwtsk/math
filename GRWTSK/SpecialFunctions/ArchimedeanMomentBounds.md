# Actual archimedean spectral integrals: a second-moment truncation bound

Author: grwtsk contributors. Date: 2026-11-11 America/Los_Angeles.
MSC2020: 33B15 (primary), 42A38, 11M06, 11M26.
Coordination: math#1801, scope comment 6815186343.

## Evidence boundary and exact scope

`ArchimedeanMomentBounds.lean` is a SOURCE_PROOF_CANDIDATE. Its authored
proofs have no placeholders or new research axioms. Elaboration, fresh kernel
replay, transitive axiom audit (including all imported local candidates),
independent mathematical review and numerical functional certification are
NOT_RUN. Source inspection, scalar arithmetic and publication do not establish
any of those outcomes. No novelty is claimed; originality is UNASSESSED.

The source consumes `CenteredDigammaSourceReturn.lean` rather than assuming a
series identity or defining a replacement positive multiplier. It derives
measurability, proves weighted integrability, and returns its enclosure to the
original uncentered digamma/conductor integral. The weight is allowed to be
complex-test spectral energy; it is not required to be even. Both parity
parameters and conductor-one zeta are retained as specializations.

The initial scope mentioned a fourth-moment frequency estimate. The completed
source uses the sharper finite-reciprocal cap below and needs only a finite
second moment (and a zeroth moment for the constant baseline). This is a
refinement within the same consumer, not a change to an existing claim.
No previous source or historical verification status is modified.

## 1. Objects and pointwise return

Let sigma>0 and q>=1. In the existing namespace write

    C(sigma,y) = Re psi(sigma+i*y) - Re psi(sigma),
    d(sigma,y) = y^2 / (sigma*(sigma^2+y^2)),
    S_N(sigma,y) = sum_(0<=n<N) d(sigma+n,y).

The canonical local source identifies C with its convergent positive series
through the actual Euler approximants for Gamma. We reuse its all-N estimate

    0 <= C(sigma,y)-S_N(sigma,y)
      <= y^2 * [(sigma+N)^(-3) + (1/2)*(sigma+N)^(-2)].        (1)

Define two explicit coefficients

    b(s) = (1/4)*[s^(-3) + (1/2)*s^(-2)],
    H_N(sigma) = sum_(0<=n<N) 1/(sigma+n).

The source calls them `momentCoefficient` and `reciprocalCap`. At the actual
spectral frequency y=t/2, equation (1) is exactly

    0 <= C(sigma,t/2)-S_N(sigma,t/2) <= b(sigma+N)*t^2.        (2)

Also, for s>0 and every real y,

    0 <= d(s,y) <= 1/s.

The upper bound follows by multiplying by s*(s^2+y^2)>0 and comparing y^2
with s^2+y^2. Summing gives the WHOLE-LINE bound

    0 <= S_N(sigma,t/2) <= H_N(sigma).                      (3)

This cap applies to the finite retained sum, not to C itself. C is unbounded
as the frequency tends to infinity; using H_N as its global cap would be false.

## 2. Measurability and integrability before subtraction

Let w:R->R be measurable and pointwise nonnegative. Assume that w(t)*t^2 is
Lebesgue integrable, and write

    mu2 = integral_R w(t)*t^2 dt.

Each rational partial sum is measurable, and its pointwise limit is the actual
centered C, by the source identity and previously proved summability.
The measurable-limit theorem therefore proves measurability of C. This avoids
assuming special-function measurability as an extra supplier premise.

Equation (2) at N=0 yields

    0 <= w(t)*C(sigma,t/2) <= b(sigma)*w(t)*t^2.             (4)

Integrable domination proves convergence of the centered weighted integral.
Since 0<=S_N<=C, every weighted partial sum is integrable as well. Consequently
integral subtraction and linearity are legitimate. Integrating (2) proves

    0 <= integral_R w*C - integral_R w*S_N
      <= b(sigma+N)*mu2.                                   (5)

This replaces a window-supremum estimate proportional to T^2*mu0 by a full
second-moment estimate. It does not assert that the replacement is numerically
sharper for every weight/window. It removes the artificial growth in T from
this integrated series-error component.

## 3. A finite-window bound using the same second moment

Fix T>0 and N>=0. Let I=[-T,T]. Split the pointwise error exactly as

    w*C - 1_I*w*S_N = w*(C-S_N) + 1_(R\I)*w*S_N.           (6)

Both terms are nonnegative. Outside I we have t^2>=T^2, and (3) implies

    1_(R\I)*w*S_N <= [H_N(sigma)/T^2]*w*t^2.                (7)

The indicator partial sum is integrable because its untruncated version is
integrable. Applying Bochner comparison to (6), with the actual integrability
proofs rather than totalized integrals, gives

    0 <= integral_R w*C - integral_I w*S_N
      <= [b(sigma+N)+H_N(sigma)/T^2]*mu2.                   (8)

No fourth moment, spectral quadrature, derivative-at-a-nondifferentiable-point
argument, logarithmic asymptotic, or sampled-window inference is needed.

An alternative route, useful for comparison but not added as another formal
module, bounds the omitted full centered multiplier by b(sigma)*t^2 and then
uses a fourth moment. It gives b(sigma+N)*mu2+b(sigma)*mu4/T^2. The present proof
instead bounds only the retained finite multiplier in the second summand of
(6); this is why the fourth-moment assumption can be dropped. Both arguments
share the actual-source series theorem and are not independent RH proofs.

## 4. Exact uncentered spectral consumer

Now also assume w is integrable and put mu0=integral_R w. Define the original
source, BEFORE recentering, by

    A(q,sigma,w) = integral_R w(t) *
      [log(q/pi)+Re psi(sigma+i*t/2)] dt.

The source code's `spectralFunctional` uses this exact definition. With
beta=log(q/pi)+Re psi(sigma), pointwise algebra gives

    A(q,sigma,w) = beta*mu0 + integral_R w(t)*C(sigma,t/2) dt. (9)

The proof first establishes integrability of the two summands using mu0 and
(4). The baseline beta is not assumed to have either sign.

Define

    A_(T,N)(q,sigma,w) = beta*mu0 + integral_[-T,T] w*S_N dt.

Combining (8) and (9) proves the source-exact enclosure

    0 <= A-A_(T,N) <= [b(sigma+N)+H_N(sigma)/T^2]*mu2.      (10)

The Lean statement is `spectral_finite_enclosure`. Its scalar algebra remains
valid for every natural q, including the totalized q=0 expression; arithmetic
applications use q>=1. No L-function at conductor zero is asserted.

For a supplied measurable spectrum F, `spectrumWeight F` is exactly

    w(t)=|F(t)|^2/(2*pi).

`squared_spectrum_finite_enclosure` applies (10) with explicit zeroth- and
second-moment integrability. It neither asserts that an arbitrary F is a test
Fourier transform nor assumes an RH-strength source identification.

For f in C_c^infinity and the PLUS transform

    F(t)=integral_R f(x)*exp(i*t*x) dx,

classical Plancherel and differentiation give mu0=||f||_2^2 and mu2=||f'||_2^2.
Thus the written Fourier consumer is

    0 <= A_chi(f)-A_(T,N)(f)
      <= [b(sigma_chi+N)+H_N(sigma_chi)/T^2]*||f'||_2^2.    (11)

Here sigma_chi=1/4+a_chi/2, a_chi in {0,1}, with the exact conductor baseline.
The pinned Mathlib Fourier convention is exp(-2*pi*i*x*xi). Its adapter must
therefore use xi=-t/(2*pi), not xi=t. Proving this adapter, Plancherel moment
identities and moment integrability for the canonical test domain is the next
formal supplier; (11) is written analysis, not an extra Lean declaration here.

The finite core is still an integral. Abstract measurability and moments do
not make it computable or give a certified quadrature rule. If an independently
sound core computation gives [l,u], and mu2<=M is proved, (10) gives

    l <= A <= u+[b(sigma+N)+H_N(sigma)/T^2]*M.

This is checker composition, not a report that such a computation ran.

## 5. Quantifiers, convergence, and hostile checks

Every theorem retains all real frequencies, every natural N (including zero),
every T>0 and every sigma>0. No estimate uniform through sigma=0 is claimed.
The nonnegative finite approximation is only the CENTERED increment; neither
A_(T,N) nor the complete Weil form is asserted nonnegative.

For fixed sigma and w, the bound admits arbitrarily small errors. Indeed
H_N<=N/sigma and, for N>=1, b(sigma+N)<=3/(8*N^2). Taking T=N gives the explicit
written majorant mu2*[3/(8*N^2)+1/(sigma*N)], tending to zero. This proves
analytic approximation existence, not effective certificate existence for an
arbitrary measurable weight and not positivity of the finite core. These two
auxiliary estimates and the diagonal limit are not separate Lean declarations
in this increment.

At N=0 the finite approximation is exactly beta*mu0, and (10) reduces to the
known quadratic majorant. For w=0 the difference and all error budgets vanish.
Dropping w>=0 invalidates the one-sided conclusion; dropping integrability
allows totalized integrals to hide divergence. Fixing N and increasing T does
not remove the series error. Fixing T and increasing N does not establish the
whole-line integral. Modulation raises mu2; no uniform bound over tests of fixed
support and L2 norm is inferred. No evenness/reality restriction is imposed.

At N=1 and T=8 the exact coefficient is 541/2000 for sigma=1/4 and 1783/16464
for sigma=3/4. `parity_spectral_enclosure_regression` concludes the actual-source
enclosures with those coefficients times mu2. It is not a True-valued example,
a Gaussian compact-support claim, or a numerical Weil positivity test.

The complete Weil consumer must still retain all prime powers, complex character
phases and the canonical inverse-character adapter, multiplicities, conductor,
parity, both zeta pole contributions and all-test/all-window quantifiers. None
of these is replaced by the positivity of the centered archimedean correction.
No RH/GRH conclusion or universal positivity certificate is claimed.

## 6. Primary provenance and verification obligations

Inspected math main: 21c3956913b469693e5acaf5bc6bf05c34c78196; complete root tree:
33cd45ffe4c33b92b497482cfb34c2c2b3b7fb87. Root AGENTS.md and CONTRIBUTING.md were
read. Scoped AGENTS.md paths for GRWTSK and SpecialFunctions returned 404.
Root/default imports, CI tree and dependency objects retain their inspected
identities; no changes to them are made. Lean is leanprover/lean4:v4.34.1;
mathlib is d13f23b723b8a846827a245b89c10fc7d3f11612.

Primary exact mathematical comparator: NIST DLMF 5.7.6,
https://dlmf.nist.gov/5.7.E6 (digamma partial fractions). DLMF 5.9.16,
https://dlmf.nist.gov/5.9.E16, supplies the classical integral comparator.
Compared 2026-11-11 America/Los_Angeles. These are classical local consequences,
not claims of newly discovered special-function identities. Limited repository
search returned no duplicate, which does not establish corpus-wide absence.

Exact formal dependencies, all at the pins above:

- Local CenteredDigammaSourceReturn.lean, source commit
  8a5273686660e5718328fed95a9f67dacde7ea11, blob
  58dafc88e12a30fbbbe796b6d4d88de4afc42a46: centered_eq_tsum,
  centered_bounds, centered_tail_enclosure. Attribution: grwtsk contributors.
- Local CenteredDigammaShift.lean, blob
  5867ff865be54a6db7645760bae78a1b94585486: term, partialSum,
  remainderBudget, summable_terms. Its evidence status is unchanged.
- Floris van Doorn, Mathlib/MeasureTheory/Constructions/BorelSpace/Metrizable.lean,
  blob 705fdfeb8301ccd0f6112654071aa74b010e13e3:
  measurable_of_tendsto_metrizable. Function-space convergence uses
  tendsto_pi_nhds and the already proved summable partial-sum limit.
- Zhouhang Zhou, Mathlib/MeasureTheory/Function/L1Space/Integrable.lean,
  blob 2ad180afca8fb23408d5408050a8965089375ae5: Integrable.mono',
  integrable domination with explicit AEStronglyMeasurable input.
- Zhouhang Zhou, Yury Kudryashov, Sebastien Gouezel and Remy Degenne,
  Mathlib/MeasureTheory/Integral/Bochner/Basic.lean, blob
  5abe07ae60e8bdfe5d99a7e68c681a5b052ef4f2: integral_sub, integral_add,
  integral_const_mul, integral_nonneg and integral_mono_ae.
- Zhouhang Zhou and Yury Kudryashov,
  Mathlib/MeasureTheory/Integral/Bochner/Set.lean, blob
  c2f23b4ffdeaafa6c1e4faf7407788f785400da8: integral_indicator and the set-integral API.
- David Loeffler, Mathlib/Analysis/Fourier/FourierTransform.lean, blob
  afb0c9ea45eb72c9c8a6b9db78f5deceb52a7193: inspected transform normalization.
  This file is a comparator for the pending adapter, not an implemented supplier.

Imported implementations retain their authorship and Apache-2.0 license.
Local statements, proofs and exposition are attributed to grwtsk contributors,
AI-assisted. No independent reviewer or mathematical novelty is asserted.
Individual public-declaration records are in ArchimedeanMomentBounds.provenance.

The source-bound command is:

    lake env lean GRWTSK/SpecialFunctions/ArchimedeanMomentBounds.lean

It is NOT_RUN, as are signature checks, transitive axiom audit and clean kernel
replay of this module and the three imported centered-digamma/Gamma candidates.
No local Lean/Lake or verified canonical skill checkout was present. The required
proof-automation skill returned 404 at Noe main
8b50d43323f27bb13bdcae9f2e2b4a81c9895827; dependent execution was not launched.
Ordinary source publication and elementary source-integrity checks do not
establish kernel acceptance or certified numerical functional evaluation.
