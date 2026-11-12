# Euler approximation and the actual centered-digamma source return

Author: grwtsk contributors. Date: 2026-11-11 America/Los_Angeles (2026-11-12 UTC).
MSC2020: 33B15 (primary), 30B40, 11M06, 11M26. Coordination: math#1801.

## Evidence and scope

`GammaEulerLimit.lean` and `CenteredDigammaSourceReturn.lean` are
SOURCE_PROOF_CANDIDATE modules. Their authored proofs have no placeholder
proofs or custom research axioms. Elaboration, fresh kernel replay, transitive
axiom audit, independent mathematical review and numerical certification are
NOT_RUN. Source inspection and Git readback cannot establish those outcomes.
No mathematical novelty is claimed; originality is UNASSESSED.

This increment supplies a candidate for the actual special-function bridge
left open by `CenteredDigammaShift.lean`: its shifted-source limit is zero.
It does not assume that limit, a digamma series identity, or a digamma integral
identity. It uses the canonical Euler approximants for the actual Gamma
function, establishes locally uniform convergence, and applies the canonical
holomorphic logarithmic-derivative limit theorem. The old module and its
historical evidence are not rewritten or retrospectively promoted.

The source is `Complex.Gamma`, `Complex.GammaSeq`, and `Complex.digamma`; the
last is `logDeriv Complex.Gamma`. No positive model replaces these objects.
All right-half-plane, nonzero-denominator, summability and holomorphy
hypotheses are supplied explicitly. No RH/GRH hypothesis is used.

## 1. The analytical argument

For n>=1, let

    G_n(z)=n^z n! / product_{j=0}^n (z+j).

The imported Euler identity, for Re(z)>0, gives

    G_n(z)=integral_0^n (1-x/n)^n x^(z-1) dx,
    G_n(z) -> Gamma(z).

Use principal complex powers of positive real x throughout. Define

    w_n(x)=1_(0,n](x) (1-x/n)^n,
    e_n(x)=exp(-x)-w_n(x),       x>0.

The elementary inequality `(1-x/n)^n <= exp(-x)` on 0<x<=n gives

    0 <= e_n(x) <= exp(-x).

Euler-integral convergence and finite-interval power integrability establish
integrability before any integral is split. Consequently

    Gamma(z)-G_n(z)=integral_0^infinity e_n(x) x^(z-1) dx.       (1)

Fix 0<alpha<=beta. If alpha<=Re(z)<=beta, then

    x^(Re(z)-1) <= x^(alpha-1)+x^(beta-1),                     (2)

using the first endpoint for 0<x<=1 and the second for x>=1.
Since e_n is nonnegative, (1), (2) and the norm-integral inequality imply

    |Gamma(z)-G_n(z)|
      <= Re(Gamma(alpha)-G_n(alpha))
           + Re(Gamma(beta)-G_n(beta)).                       (3)

The right side is independent of Im(z) and is nonnegative. Both endpoint
errors tend to zero by the existing actual-source Euler limit. Thus G_n
converges uniformly on the ENTIRE closed vertical strip, not just on sampled
points or a bounded-imaginary segment. Taking alpha=Re(z0)/2 and
beta=Re(z0)+1 gives a neighborhood of each point z0 in the right half-plane.
Therefore convergence is locally uniform there.

For n>=1, every factor z+j is nonzero on Re(z)>0. The numerator n^z is
holomorphic, so G_n is holomorphic there. Gamma is nonzero there by the
canonical nonvanishing theorem. Cauchy's theorem for locally uniform
holomorphic limits therefore gives

    logDeriv(G_n)(z) -> logDeriv(Gamma)(z)=psi(z).              (4)

This step cannot be inferred from pointwise convergence alone. The strip
bound (3) is its supplied analytic premise.

Finite differentiation of the actual product gives

    logDeriv(G_n)(z)=log(n)-sum_{j=0}^n 1/(z+j).               (5)

For real sigma>0 and real y, subtract the real parts of (5) at sigma+iy and
sigma. The log(n) terms cancel. The remaining summand is exactly

    1/(sigma+j)-(sigma+j)/((sigma+j)^2+y^2)
      = y^2/((sigma+j)*((sigma+j)^2+y^2)).                    (6)

Use the existing definitions from CenteredDigammaShift:

    C(sigma,y)=Re psi(sigma+iy)-Re psi(sigma),
    d(sigma,y)=y^2/[sigma*(sigma^2+y^2)],
    S_N(sigma,y)=sum_{j<N}d(sigma+j,y),
    B(sigma,y)=y^2/sigma^3+y^2/(2*sigma^2).

The preceding source increment already supplies summability of d and

    0<=sum_{j>=N}d(sigma+j,y)<=B(sigma+N,y).

Taking the limit in (6), using (4) and that proved summability, yields

    C(sigma,y)=sum_{j>=0}d(sigma+j,y).                        (7)

This is source return, not a definition by a positive series. The earlier
finite identity C(sigma,y)-C(sigma+N,y)=S_N(sigma,y) now gives

    0 <= C(sigma,y)-S_N(sigma,y) <= B(sigma+N,y),
    C(sigma+N,y) -> 0.                                      (8)

For |y|<=Y, Y>=0, the same proof gives the actual-source bound

    0 <= C(sigma+N,y) <= B(sigma+N,Y),                       (9)

which has O_Y(N^-2) decay at fixed positive sigma. There is no claim of
uniformity through sigma=0.

## 2. Arithmetic consumer and limits of the result

The consumer uses y=t/2 and sigma=1/4 or 3/4. Equation (7) supplies exactly
the centered multiplier needed in CenteredDigammaShift.md equations (9)-(12).
Together with the previously WRITTEN Fourier arguments it yields the
one-sided finite-frequency/finite-series error budget there. This new code
does not itself prove Plancherel normalization, the weighted Fourier
integrability, the logarithmic frequency-tail bound, finite-core quadrature,
or rational enclosures for the conductor/baseline constants.

The two parity regressions now enclose ACTUAL centered values at t=2:

    64/17 <= C(1/4,1) <= 9768/2125,
    64/75 <= C(3/4,1) <= 30952/25725.

They follow from N=1 in (8), with exact rational arithmetic. They are not
numerical special-function evaluations or whole-Weil positivity tests.

The full pole-inclusive Weil form must still retain every prime power,
complex character phases and the existing inverse-character adapter,
conductor/parity data, both zeta poles, and the actual signed zero pairing.
Archimedean centered positivity alone is not positivity of the full form.
Neither all-test/all-window positivity nor universal certificate existence
has been supplied by this increment. No RH/GRH conclusion is claimed.

## 3. Primary sources, comparison and source identities

The inspected canonical math base is
`d980f553aca7f636c267d022b4604e487f40b424`, root tree
`4428452d49668a9e714df0a4ef25f9248f8fa25e`. The root AGENTS.md, CONTRIBUTING.md,
root imports, CI subtree and dependency objects have the same identities as
the previously read publication base. Direct scoped AGENTS.md reads for
GRWTSK/ and GRWTSK/SpecialFunctions/ returned 404. No policy, root import,
workflow or dependency change is part of this increment.

Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Primary formal sources, all at that mathlib pin:

- David Loeffler, Gamma/Beta Euler limit and integral:
  `Mathlib/Analysis/SpecialFunctions/Gamma/Beta.lean`, blob
  `612bc27a5af0f7c696a7ed1a4a84f67b3d91979e`.
  Exact declarations: `Complex.GammaSeq`,
  `Complex.GammaSeq_eq_approx_Gamma_integral`,
  `Complex.GammaSeq_tendsto_Gamma`, `Complex.Gamma_ne_zero`.
- Gamma-integral convergence and differentiation are imported from the
  canonical Gamma modules, not asserted by new axioms.
- `Mathlib/Analysis/Complex/LocallyUniformLimit.lean`, blob
  `b4a9947620884b5c98eb2aefbbf1a9e39f34244a`:
  `Complex.logDeriv_tendsto`. The holomorphic-limit proof is imported;
  the new strip bound supplies its convergence hypotheses.
- Chris Birkbeck, `Mathlib/Analysis/Calculus/LogDeriv.lean`, blob
  `08d54d356bcb2fd5e1aa24bde02529f2ec10e4c9`:
  `logDeriv_fun_div`, `logDeriv_mul_const`, `logDeriv_fun_prod`.
- Thomas Browning, `Mathlib/Analysis/SpecialFunctions/Gamma/Digamma.lean`,
  blob `7a13afbf72c57f912beea85d5325ca7da3e66ed1`: `Complex.digamma_def`.
- Bochner continuous-linear-map integration, blob
  `24b8ad83aa2cb2a2cb5ce54ac6ce84dbad84bb7f`: `integral_re`.
- Local `CenteredDigammaShift.lean`, blob
  `5867ff865be54a6db7645760bae78a1b94585486`, source commit
  `5dd12bd1891abbcd5fa06a7eb8ca190b48550ff6`: exact finite shifts,
  summability, all-series bounds and the unevaluated source limit.

All upstream implementations retain their authorship and Apache-2.0
licenses through imports. The local source is attributed to grwtsk
contributors and is AI-assisted. No independent reviewer is identified.
Individual records state each declaration's exact upstream/local consumer.

Classical mathematical comparators, read for this increment:

- NIST DLMF 5.7.6, https://dlmf.nist.gov/5.7.E6: the actual digamma
  partial-fraction series. Subtracting its real parts gives (7).
- NIST DLMF 5.9.16, https://dlmf.nist.gov/5.9.E16: the digamma integral,
  whose centered form gives an alternative written proof of (7)-(9).
- Euler's Gamma limit is implemented by the pinned primary Mathlib source
  identified above, with its full principal-power and convergence hypotheses.

The new source does not import DLMF statements as axioms. It derives the
needed specialization from Euler convergence. This is a classical argument;
no priority, novelty or exhaustive absence claim is made.

## 4. Hostile checks and verification obligations

The recurrence-only periodic-perturbation counterexample in
CenteredDigammaShift.md still applies to a proof using only recurrence.
The new proof excludes it by returning to actual GammaSeq and Gamma, not by
assuming the residual vanishes. The real scalar error in (3) is nonnegative;
changing the cutoff sign or omitting one endpoint would destroy the supplied
comparison. The n=0 approximant is excluded where the imported integral and
finite log-derivative formulas require n!=0; eventual convergence is unchanged.
All statements retain sigma>0 and avoid the poles. At y=0 the centered source
and every rational term vanish. No zero-location information enters the proof.

Proof-source inspection is not elaboration. The first source-bound commands,
recorded as obligations and NOT_RUN, are:

    lake env lean GRWTSK/SpecialFunctions/GammaEulerLimit.lean
    lake env lean GRWTSK/SpecialFunctions/CenteredDigammaSourceReturn.lean

Audit transitive axioms of every public declaration, including the imported
CenteredDigammaShift source. Check proof signatures, real/complex coercions,
set-integral restrictions, uniform-convergence APIs and finite-product
logarithmic differentiation at the exact pin. Do not count the absence of
placeholder tokens in these two files as an axiom audit.

No verified local ~/.agents/skills or ~/.codex/skills checkout, Lean or Lake
was available. The required canonical proof-automation skill returned 404 at
Noe main `31fb509105d39ad557a0f9816a34e6a748071539`; dependent execution was
not launched. Ordinary authenticated source publication does not establish
kernel acceptance or grant any execution authority.
