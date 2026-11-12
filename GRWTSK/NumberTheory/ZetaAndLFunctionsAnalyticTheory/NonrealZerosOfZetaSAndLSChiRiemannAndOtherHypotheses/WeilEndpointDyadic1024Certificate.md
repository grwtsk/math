# Zeta Weil endpoint positivity through every prime-power activation up to 1024

By grwtsk contributors. Version 1, 2026-11-12 (America/Los_Angeles).

## Status, original source, mathematical consumer

This is an unconditional **written analytical result supported by a finite,
exact-integer interval certificate**. It extends the original zeta endpoint-span
certificate in [WeilEndpointDyadic64Certificate.md](WeilEndpointDyadic64Certificate.md)
from `log 64` to `log 1024`, including the entire intervening prime-power
inventory. The original arithmetic source is the pole-inclusive quadratic
form, NOT a positive replacement matrix or a zero-only model. A priori
spectral localization, RH and GRH are not assumed.

The mathematical consumer is the bounded-modulation head sign in
[WeilEndpointPairDefect.md](WeilEndpointPairDefect.md), and ultimately the
original universal Weil-positive premise of
[WeilNegativeWitness.lean](WeilNegativeWitness.lean).
This source supplies a genuine **restricted** sign inequality on a specified
finite support interval. It does not supply all-window or all-test positivity,
nor a full infinite-dimensional complement/coupling certificate.

The full source, for zero-extended functions on `I_L=(0,L)`, with inner
products conjugate-linear in the first variable, is

    Q_zeta,L(f) = c_zeta ||f||_2^2 + Gamma_(1/2)(f)
                         - <f,P_L f> + <f,R_L f>,
    c_zeta = -log(pi) + digamma(1/4)
           = -log(pi) - EulerGamma - pi/2 - 3 log(2),
    Gamma_b(f) = integral_(0,infinity) [e^(-bs)/(1-e^(-2s))]
                             ||f(.-s)-f||_2^2 ds,
    P_L = sum_(n>=2,log n<L) [Lambda(n)/sqrt(n)]
                                 (T_(log n)+T_(log n)^*),
    R_L(x,y) = exp((x-y)/2)+exp(-(x-y)/2).

The translation-energy integrand may equivalently be written using the
positive shift `f(.+s)` after zero extension. There are two pole orientations.
`Lambda(n)=log p` at *every* prime power `n=p^k`, not `log n` for `k>1`.
The fixed source is conductor-one zeta; no nonprincipal-character result
is inferred. The analytically continued zeta is used by the maintained
spectral source-return theorem, not a Dirichlet series at invalid arguments.

Local statement identifiers: **WED1024-v1-1--WED1024-v1-4**.
Original math inspection: main `c23965a54c7483fddc69c72cbe5f12f9aa1af760`,
complete tree `28902236e1ea5fe803e3119efb99e8f41a808089`.
Toolchain `leanprover/lean4:v4.34.1`; Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: `grwtsk/math#1801`. No existing declaration, imports,
pins or root workflow is modified. Mathematical authorship: grwtsk contributors.

## 1. WED1024-v1-1: exact finite-prime endpoint matrix

For `L>0`, with zero extension, put

    u_L(x)=exp(-x/2),      v_L(x)=exp(-(L-x)/2),
    t=exp(-L),            C(z,w)=|z|^2+|w|^2,
    D(L)=Q_zeta,L(u_L)=Q_zeta,L(v_L),
    B(L)=Q_zeta,L(u_L,v_L) in R.

Then the *actual source form* satisfies

    Q_zeta,L(z*u_L+w*v_L) = D(L)C(z,w)+2 B(L)Re(conj(z)*w).

For `1/1024<=t<=1/2`, use the classical positive-part notation
`x_+=max(x,0)` and put `L=-log t`,

    a=pi/2+log 2,   b=pi/2+3log 2,   c=pi/2+2log 2,
    h(t)=(1+t)log(1+t)-(1-t)log(1-t),
    G(t)=a+t(2L-b)+h(t),
    J(t)=sqrt(t)[c L-L^2/2+pi^2/6-Li_2(t)],
    PD(t)=2 sum_(2<=n<=1024) Lambda(n) (1/n-t)_+,
    PB(t)=sqrt(t) sum_(2<=n<=1024)
                    Lambda(n)(L-log n)_+ (1+1/n),
    RD(t)=2L(1-t),
    RB(t)=sqrt(t)(1/t-2+t+L^2).

**Exact identity:**

    D(t)=c_zeta(1-t)+G(t)-PD(t)+RD(t),
    B(t)=c_zeta L sqrt(t)+J(t)-PB(t)+RB(t).              (1)

These are precisely the WEGR-v1-1 unmodulated gamma terms and the literal
prime/pole pairings. `G` and `J` include the *entire* singular gamma kernel,
with compensation before integration. `RD` and `RB` retain BOTH zeta poles;
the pole operator is indefinite. All 198 von Mangoldt prime powers up to
1024 occur in the sums (the term at the strict upper activation is zero).
The exact pair identity does not assume the completed-zero divisor is real.

To justify the prime formulas directly, for `0<s<L` the endpoint
correlations are

    C_u(s)=e^(-s/2)-t e^(s/2),
    C_(u,v)(s)=sqrt(t) e^(s/2)(L-s),
    C_(v,u)(s)=sqrt(t) e^(-s/2)(L-s).

Insertion into the original two-sided shift and its adjoint yields `PD` and
`PB`, retaining the strict cutoff. The rank-two pole kernel gives `RD` and
`RB` by elementary integration. The same compensated endpoint correlations
inserted into the gamma integral give `G` and `J`. In particular the
`Li_2(t)` term comes from a convergent series with `0<t<=1/2`, rather
than an invalid continuation. This explains the complete return of (1) to
its original arithmetic source.

## 2. WED1024-v1-2: exact continuous interval certificate

The companion source-local
[WeilEndpointDyadic1024Certificate.py](WeilEndpointDyadic1024Certificate.py)
verifies the strict inequality

    ALL t in [1/1024,1/2]: D(t)-|B(t)| > 1/500.        (2)

This is **not** sampling an uncountable interval at finitely many points.
The program splits `[1/1024,1/2]` exactly into dyadic rational closed
cells `[a,b]`. Its integer fixed-point intervals (`2^80` scale) enclose
every operation in (1), with outward rounding. A cell is accepted only if

    lower(D([a,b])) - max(|lower(B([a,b]))|,
                           |upper(B([a,b]))|) > 1/500.

An unsuccessful check subdivides the cell. Failure at the finite depth
limit raises an exception. The final accepted cells form an exact covering
and prove the strict sign **simultaneously at every point of every cell**.

The complete finite enclosure has these checked mathematical suppliers:

- `pi = 16 arctan(1/5)-4 arctan(1/239)`; alternating series remainders
  are bounded by the first omitted term.
- For positive rational `x`, scale it exactly to `r in [1,2]` and apply
  `log r = 2 sum_(j>=0) y^(2j+1)/(2j+1)`,
  `y=(r-1)/(r+1)<=1/3`. The first 38 terms and the explicit geometric
  tail bound enclose all logs, including `log pi` by monotone endpoints.
- `EulerGamma` is enclosed by
  `H_100-log(100)-1/200` and that expression plus `1/80000`;
  this is the signed complete trapezoidal remainder for `1/x`.
- `Li_2(t) = sum_(k>=1)t^k/k^2` is enclosed by 62 terms plus
  `0 <= remainder <= t^63/[63^2(1-t)]` for `0<t<=1/2`.
- Rational positive square roots use integer `isqrt` with outward
  rounding; every division, multiplication and sign is decided in
  integers or exact `fractions.Fraction` arithmetic.
- Integer trial division enumerates all prime powers `p^k<=1024` and
  attaches `Lambda(p^k)=log p`, with the complete count 198 checked.

An optimization used to keep the exact test practical has a proof:
for a cell `[t0,t1]`, any `n*t0>=1` has
`(1/n-t)_+=0` and `(L-log n)_+=0` **throughout the cell**.
The script therefore may skip that prime power; it does not omit any
active contribution. Newly activated prime powers at `t=1/n` are included
continuously via positive-part intervals, not by testing either side only.
The sign bound is not inferred from the separate diagonal alone.

Executed command (`Python 3`, mathematical sign tests only in exact
integer arithmetic):

    python3 WeilEndpointDyadic1024Certificate.py

Observed exit `0` and output:

    PASS: every t in [1/1024,1/2] has D(t)-|B(t)| > 1/500
    prime-power terms: 198 prime modulation sum < 640: PASS
    mixed entry at log512 is strictly negative: PASS
    dyadic leaves: 8165 checked nodes: 16329 depth: 20
    min certified gap lower in millionths: 2000
    modulation consumer: |eta| <= 1/2200000 gives Q >= 1/1000 in coefficient norm

The integer `2000` is a diagnostic floor of the certified lower bound
times a million; the *strict* rational inequality (2), not this printed
floor, is the accepted-cell condition. At `L=log4`, the earlier WEL4
regression passes. At `L=log512`, the script also rigorously verifies
`B(log512)<0`; hence it does not assume all mixed entries are nonnegative.

The program checks the finite scalar consequences of (1); it does **not**
compile a Lean source-return theorem or prove the universal Weil inequality.

## 3. WED1024-v1-3: a full gamma, prime and pole modulation budget

Let `M_eta g(x)=exp(i eta x)g(x)`, with real `eta`, and set
`g=z*u_L+w*v_L`. The endpoint Gram matrix and the exact unmodulated
gamma estimates give, for all `L>0`,

    ||g||_2^2 < (7/4) C(z,w),
    Gamma_(1/2)(g) <= 2pi C(z,w) < (44/7) C(z,w).       (3)

Indeed `||u_L||^2=||v_L||^2=1-t`,
`<u_L,v_L>=L sqrt(t)<=2/e<3/4`, and each endpoint has
`Gamma_(1/2)(u_L)<=pi`, from the original correlation integral.
The zero extensions may jump, but belong to the logarithmic form domain;
we assign no fictitious finite whole-line `H^1` derivative energy.

Write

    Psi(eta)=2 integral_0^infinity k_(1/2)(s)(1-cos(eta s))ds.

The complete positive exponential expansion of `k_(1/2)` gives

    Psi(eta) <= eta^2 integral_0^infinity k_(1/2)(s)s^2 ds
             = 16 eta^2 sum_(j>=0)(4j+1)^(-3)
             < 18 eta^2.                                (4)

The last strict bound follows by comparing the `j>=1` tail to
`16 sum_(j>=1)(4j)^(-3) < 3/8`; no gamma cutoff is taken.
Modulation preserves the form domain; Cauchy--Schwarz on the two
translation increments implies

    |Gamma_(1/2)(M_eta*g)-Gamma_(1/2)(g)|
       <=2 sqrt(Gamma_(1/2)(g) Psi(eta)) ||g||
                              +Psi(eta)||g||^2.

For `|eta|<=1/2200000`, equations (3)--(4) make this
`<29 |eta| C(z,w)`, since `2 sqrt(198)<57/2`.

For each prime shift, the *actual phased identity* is

    M_eta^* T_(log n) M_eta = exp(i eta log n) T_(log n).

Consequently, for each support window in the stated interval,

    |<M_eta*g,P_L M_eta*g>-<g,P_Lg>|
       <= [2 sum_(n<=1024) Lambda(n) log n/sqrt(n)]
                                         |eta| ||g||^2.

The exact-integer certificate independently verifies that the displayed
complete finite coefficient is `<640`. It includes all 198 prime powers;
a zero threshold taper is allowed. By (3) the prime contribution is
therefore `<1120 |eta| C(z,w)`.

The **literal two-pole** `R_L` has eigenvalues
`L+2sinh(L/2)` and `L-2sinh(L/2)`, including a negative eigenvalue.
For `L<=log1024=10log2<7` one has
`||R_L||=L+2sinh(L/2)<7+32=39`. Moreover,
`||(M_eta-I)g||<=L|eta|||g||`, whence the change in its full signed
quadratic value is

    <2*39*7*(7/4)|eta| C(z,w)
    = (1911/2)|eta| C(z,w) < 956|eta| C(z,w).

The original scalar does not change under unitary modulation. Combining
all three actual-source contributions yields the uniform estimate

    |Q_zeta,L(M_eta*g)-Q_zeta,L(g)|
       < (29+1120+956)|eta| C(z,w)
       =2105 |eta| C(z,w) <2150 |eta| C(z,w).           (5)

This estimate is uniform over the stated *finite* support interval,
with no omission of gamma, pole or newly active prime-power terms.
No nonzero modulation is asserted for a conductor-q character without
retaining its actual `chi(n)` phases.

## 4. WED1024-v1-4: quantitative restricted arithmetic positivity

**Theorem (written, source-exact relative to the original Weil identities,
with an executed finite integer certificate).** For every

    log2 <= L <= log1024,   |eta| <= 1/2200000,
    z,w in C,

let `f= z M_eta u_L + w M_eta v_L` on `(0,L)`, zero-extended. Then

    Q_zeta,L(f) >= (|z|^2+|w|^2)/1000.                (6)

Proof. From (2), the unmodulated value is strictly greater than
`C(z,w)/500`. Estimate (5) deducts less than
`(2150/2200000)C(z,w)<C(z,w)/1000`. Thus

    Q_zeta,L(f) > [1/500-2150/2200000] C(z,w)
                  > C(z,w)/1000

when `C(z,w)>0`, and (6) holds trivially at zero. Using (3), the physical
L2 consequence is `Q_zeta,L(f)>=||f||_2^2/1750`.

This is a true arithmetic sign inequality on the whole *complex span* of
the modulated endpoints. It is not a sign inference from two separately
positive diagonal rays, a finite truncation of zeros, a new model form,
or a claim of positive self-adjoint realization. For each fixed pair
`L,eta`, suitable smooth compactly supported form-core approximations
retain a strict positive quadratic value, but that does not produce
positivity for *all* smooth tests.

## 5. Falsification, prior work, remaining premises, verification

- At every `t=1/p^k`, both prime tapers are zero, and exact interval
  arithmetic encloses both sides of the activation. This avoids a false
  jump sign, including `t=1/1024`.
- The strict mixed negative sign at `L=log512` was verified exactly;
  replacing `D-|B|` by `D-B` would fail as a valid general criterion.
- An off-line reflected zero pair is genuinely indefinite by WEPD-v1-1.
  This calculation concerns the entire arithmetic sum and does not
  replace it by positive absolute squares or a per-pair certificate.
- The denominator `g_L=1-t-L sqrt(t)>0` is not used as though it were
  uniform down to `L=0`. The present support range stays away from zero.
- The previous exterior-modulation WEMC estimate applies at any fixed
  support length, but its cutoff depends on that length. The current
  microscopic band cannot be extrapolated to arbitrary modulation.
- A finite support cutoff does **not** establish all-window positivity,
  universal finite certificate existence, RH, or primitive Dirichlet GRH.
  The all-test complement and mixed couplings remain unresolved.

Primary-source comparison: Bombieri (2000), *Remarks on Weil's quadratic
functional in the theory of prime numbers, I*, studies Weil's original
indefinite form and finite truncations, and proves positivity for
sufficiently small localization. Rump (2010), *Verification methods*,
explains rigorous outward enclosures; neither source supplies the
specific 1024 endpoint certificate or an all-window sign theorem.
The maintained WEGR/WEL4/WED64 sources provide the exact analytical
identities and predecessor enclosures. No originality claim is made:
**UNASSESSED**.

No new Lean declarations are supplied by these two files. The finite
integer interval check is **RUN / exit 0**; all source-to-canonical-target
analytic equivalences are **WRITTEN**, not newly kernel checked.
Lean elaboration, full dependency build, fresh kernel replay,
transitive axiom audit, certified independent source-return validation,
independent analytical review and repository-wide validation: **NOT_RUN**.
The canonical `grwtsk/noeaaeue/main` proof-automation skill was
inaccessible at revision `310b110367972b0211c0f80f5b9428710c63a5b6`
(HTTP 404), so no dependent proof automation or execution was dispatched.
Source-only authorization and reviewable publication do not supply
additional mathematical evidence. The source inputs remain literal,
and the targets for analytically continued zeta and each primitive
Dirichlet `L`-function are unchanged.

References: [WEGR](WeilEndpointGammaRelative.md),
[WEL4](WeilLogFourEndpointCertificate.md),
[WED64](WeilEndpointDyadic64Certificate.md),
[WEMC](WeilEndpointModulationCoercivity.md),
[WEPD](WeilEndpointPairDefect.md),
[Bombieri (2000)](https://www.bdim.eu/item?id=RLIN_2000_9_11_3_183_0),
[Rump (2010)](https://doi.org/10.1017/S096249291000005X).
