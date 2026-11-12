# Full-source short-window coercivity and a continuum endpoint bridge to log 1024

By grwtsk contributors. Version 1, 2026-11-12 (America/Los_Angeles).

## Scope, provenance, and evidence boundary

This is a source-local **written analytical argument** with one reproducible
**exact-integer interval certificate**. It establishes a full-test Weil lower
bound for every primitive Dirichlet character on `0 < L <= 1/12` (including
conductor-one zeta), plus an exact zeta endpoint-matrix sign on the complementary
finite support range down to `L = log(13/12)`. It consumes, without modifying,
the maintained pole-inclusive physical form and the previously published
[WeilEndpointDyadic1024Certificate.md](WeilEndpointDyadic1024Certificate.md).

The first result is **full-domain**, not merely an endpoint calculation. The
second result applies to the original complex two-dimensional exponential
endpoint span; it does not prove nonnegativity on the whole test domain for
larger supports. No RH or primitive Dirichlet GRH hypothesis is assumed.
No off-line zero location, zero count, imprimitive transfer, positive replacement
form, or numeric sample of infinitely many tests is used.

Statement identifiers: **WSWB-v1-1** through **WSWB-v1-5**.
Mathematical consumer: source-specific short-window `hpositive` instances and
the bounded-modulation zeta endpoint head within
[WeilEndpointPairDefect.md](WeilEndpointPairDefect.md). The untouched universal
`WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`
consumer still needs all supports, all tests and all primitive sources.

Initial inspected math main: `81e43f712fb5b763dd677a969a22edb926203b25`;
complete root tree `886b32af7581285d02c8ec21396c27ae57a8ef35`.
Pinned Lean `leanprover/lean4:v4.34.1`; pinned mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
At Noe main `95435bd5902a3fc7a428a52317419fbe34874459`, the canonical
`noe-proof-automation` and `noe-math-chat-bridge` skill paths returned 404;
no dependent proof automation is authorized or performed.

Formal Lean elaboration, complete dependency build, fresh kernel replay,
transitive axiom audit, certified source-to-explicit-formula formalization,
independent mathematical review, and repository-wide validation: **NOT_RUN**.
The interval computations are **RUN** with exact integer arithmetic, not Lean.
Originality: **UNASSESSED**. The all-window RH/GRH targets remain unresolved.

## 1. Literal form and primitive scope

For `L>0`, let `I_L=(0,L)` and zero-extend complex `f` outside `I_L`.
Inner products are conjugate-linear in the first argument. For primitive
`chi` of conductor `q>=1`, write `chi(-1)=(-1)^a`, with `a=0` or `1`, and
`b=a+1/2`. Set

    k_b(s) = exp(-b*s)/(1-exp(-2*s)),
    Gamma_b(f) = integral_(0,infty) k_b(s)||f(.+s)-f||_2^2 ds,
    V_(L,b) = {f in L2(0,L;C): Gamma_b(f)<infty},
    c_(q,a) = log(q/pi)+digamma(1/4+a/2),
    P_(chi,L) = sum_(n>=2,log n<L) Lambda(n)/sqrt(n)
                      (chi(n)T_(log n)+conj(chi(n))T_(log n)^*),
    R_L(x,y) = exp((x-y)/2)+exp(-(x-y)/2),
    delta_chi = 1 if q=1, otherwise 0.

The **unchanged physical arithmetic form** is

    Q_(chi,L)(f)=c_(q,a)||f||_2^2 + Gamma_b(f)
                         -<f,P_(chi,L)f> +delta_chi<f,R_L f>.   (1)

For `q=1`, `L(s,chi_1)=zeta(s)` is the analytically continued actual
Riemann zeta function, and the pole term has BOTH orientations. The
primitive arithmetic value's nonreal-character inverse adapter is
unchanged; its phases are merely inactive in the short windows below.
For `0<L<=1/12<log2`, **every prime-power term vanishes** in (1).

Set `K_b(r)=integral_r^infty k_b(s)ds`. The original zero-extension
identity (from the same gamma form, by Tonelli) is

    Gamma_b(f) = integral_(0<x<y<L)
                    k_b(y-x)|f(y)-f(x)|^2 dxdy
               + integral_0^L [K_b(x)+K_b(L-x)]|f(x)|^2 dx. (2)

All integrands are nonnegative. Since `K_b` decreases, the exact inequality

    Gamma_b(f) >= 2K_b(L)||f||_2^2                     (3)

holds for **every** `f in V_(L,b)`, without a fictitious `H1` hypothesis.
In particular it covers complex phases, boundary-jumping endpoints,
central-zero test directions and all smooth compact tests.

Direct substitution `z=exp(-s/2)` in the complete gamma tail gives

    K_(1/2)(L) = atanh(exp(-L/2))+atan(exp(-L/2)),
    K_(3/2)(L) = atanh(exp(-L/2))-atan(exp(-L/2)).      (4)

Here `atanh` is the real positive hyperbolic inverse tangent. The
classical exact digamma values, retaining the original scalar, are

    c_zeta= -log pi-EulerGamma-pi/2-3log 2,
    c_(q,0)=c_zeta+log q,
    c_(q,1)=c_zeta+log q+pi.                         (5)

The sign of the pole operator is not replaced by positivity. Direct
rank-two integration shows that its two nonzero eigenvalues are

    L+2sinh(L/2),   L-2sinh(L/2),                    (6)

with eigenvectors `u_L+v_L` and `u_L-v_L`, respectively, where
`u_L(x)=exp(-x/2)`, `v_L(x)=exp(-(L-x)/2)`. The second eigenvalue is
negative for every `L>0`.

## 2. WSWB-v1-1: all-test zeta coercivity on 0<L<=1/12

**Theorem.** For every `0<L<=1/12` and every `f in V_(L,1/2)`, 

    Q_(zeta,L)(f) >= (1/200)||f||_2^2.               (7)

**Proof.** Put `z=exp(-L/2)`. Since `exp(-u)>=1-u`,

    z>=1-L/2>=23/24.

By monotonicity and the exact real identity
`atan z = pi/4-atan((1-z)/(1+z))` for `0<z<1`, together with
`atan y<=y` for `y>=0`, equation (4) yields

    2K_(1/2)(L)=log((1+z)/(1-z))+2atan z
                  >=log 47+pi/2-2/47.             (8)

Write `h=L/2<=1/24`. The positive series for hyperbolic sine and
`(2j+1)!>=3!` for all `j>=1` give

    0<2sinh(L/2)-L
       =2 sum_(j>=1) h^(2j+1)/(2j+1)!
       <= L^3/[24(1-L^2/4)]
       < L^3/20 <= 1/34560.                         (9)

Equations (2)--(9), with `P_L=0`, imply

    Q_(zeta,L)(f) >= A_short ||f||_2^2,
    A_short = log 47-log pi-EulerGamma-3log 2
                   -2/47-1/34560.                  (10)

The `pi/2` in (8) cancels exactly the `-pi/2` in the original
`c_zeta`. The complete negative pole eigenvalue is paid by (9).
The adjacent executable uses outward-rounded rational series for
`log47`, `logpi`, `log2` and `EulerGamma` and proves the **strict**
exact rational inequality `A_short>1/200`.
This proves (7) on the full local form domain. QED.

## 3. WSWB-v1-2: all-test primitive Dirichlet coercivity, both parities

**Theorem.** For every primitive character `chi` of conductor `q>1`,
with its actual parity `a`, and every `0<L<=1/12`, `f in V_(L,a+1/2)`,

    Q_(chi,L)(f) >= (2/3)||f||_2^2.                 (11)

**Proof.** The full prime sum is again exactly zero. For even parity,
(3)--(5) and (8) give

    Q_(chi,L)(f) >= [A0+log q]||f||_2^2,
    A0=log47-logpi-EulerGamma-3log2-2/47.            (12)

For odd parity, use `2atan z<=pi/2` in (4), obtaining
`2K_(3/2)(L)>=log47-pi/2`. The parity scalar `c_(q,1)`
then gives

    Q_(chi,L)(f) >= [A0+2/47+log q]||f||_2^2.      (13)

Both cases retain conductor and parity. Since `q>=2`, `log q>=log2>2/3`.
The exact rational check from (10) supplies `A0>1/200+1/34560>0`.
Thus both (12) and (13) are **strictly greater than** `(2/3)||f||_2^2`,
which implies (11). No character phase, ramification, real exceptional
zero, or dual-character equation is discarded: none enters the empty
prime operator, and the original arithmetic source remains (1). QED.

This is a uniform **small-support** result, not a fixed-character
all-window positivity bound and not a GRH proof.

## 4. WSWB-v1-3: exact, continuum zeta endpoint sign on [log(13/12),log2]

For `log(13/12)<=L<=log2`, define `t=exp(-L)`; equivalently
`1/2<=t<=12/13`. We retain both zeta poles and the negative scalar.
At `L=log2`, the prime `n=2` taper is zero. For the whole interval
`L<=log2`, the prime operator is exactly zero. Define

    alpha=pi/2+log2, beta=pi/2+3log2, gamma0=pi/2+2log2,
    h(t)=(1+t)log(1+t)-(1-t)log(1-t),
    G(t)=alpha+t(2L-beta)+h(t),
    J(t)=sqrt(t)[gamma0 L-L^2/2+Li_2(1-t)-L log(1-t)],
    R_D(t)=2L(1-t), R_B(t)=sqrt(t)(1/t-2+t+L^2),
    D(t)=c_zeta(1-t)+G(t)+R_D(t),
    B(t)=c_zeta L sqrt(t)+J(t)+R_B(t).                 (14)

This is the **literal** unmodulated endpoint matrix of (1), not the
sum of absolute squares over zeros. All terms are finite and continuous
at each point of this compact subinterval. The use of `Li_2(1-t)` is
justified by **Spence's exact identity**

    Li_2(t)+Li_2(1-t)=pi^2/6-log(t)log(1-t),

which follows by differentiating both sides and using the value at
t=0. This converts the published full-gamma term
`sqrt(t)[gamma0 L-L^2/2+pi^2/6-Li_2(t)]` to (14),
allowing rapidly convergent rigorous series because `1-t<=1/2`.
No gamma tail or subtracted correction is omitted.

**Executed finite result:**

    forall t in [1/2,12/13], D(t)-|B(t)| > 1/50000. (15)

The companion [WeilShortWindowBridgeCertificate.py](WeilShortWindowBridgeCertificate.py)
imports the exact existing arithmetic interval engine from
`WeilEndpointDyadic1024Certificate.py` and pins its SHA-256. This is
**reuse**, not a stale independent copy. Every interval operation is
outward rounded at the exact `2^80` fixed-point scale. `log` uses a
38-term positive atanh series and explicit tail; `Li_2(1-t)` uses its
62-term positive series and exact rational tail; `sqrt`, `pi`, and
`EulerGamma` are enclosed by the original integer certificates.
An adaptive binary tree covers the ENTIRE closed rational interval
`[1/2,12/13]`. A cell is accepted only when an interval enclosure for
`D-|B|` has lower endpoint **strictly greater** than `1/50000`.
The union of accepted cells is exactly the original closed range.
This is **not** point sampling or a finite-height zero check.

The executed run checked 54,335 nodes, accepted 27,168 cells, and
reached maximal depth 18. It also compared the endpoint `t=1/2` with
the unchanged previously published matrix at the prime activation.
The exact result (15) has no positive lower bound uniform as `L->0`:
the certificate deliberately stops at `L=log(13/12)>0`.

## 5. WSWB-v1-4: continuous endpoint coverage through log1024

For the actual zeta endpoint span

    u_(L,eta)(x)=exp(-x/2)exp(i*eta*x),
    v_(L,eta)(x)=exp(-(L-x)/2)exp(i*eta*x),
    H_(L,eta)=span_C{u_(L,eta),v_(L,eta)},

(7) gives strict positivity on **all of V_(L,1/2)** for `0<L<=1/12`,
independently of modulation. The new continuum certificate (15) gives
`D(L)-|B(L)|>1/50000` on `log(13/12)<=L<=log2`.
The maintained source certificate **WED1024-v1-2**, verified with its
independently executed script, gives `D(L)-|B(L)|>1/500` on
`log2<=L<=log1024` and retains **all 198 von Mangoldt prime powers**.
There is no support gap because `log(13/12)<1/12`.
Consequently, for all `1/12<=L<=log1024`,

    Q_(zeta,L)(z*u_L+w*v_L)
        > (1/50000)(|z|^2+|w|^2)                 (16)

for every complex `z,w`. The stronger bound `1/500` from WED1024
is used in its original range; (16) is a shared, conservative margin.

**WSWB-v1-5 (restricted modulation).** The previous exact
full-gamma/prime/two-pole modulation comparison WED1024-v1-3 is uniform
on `0<L<=log1024`, with bound

    |Q_(zeta,L)(M_eta*g)-Q_(zeta,L)(g)|
      < 2150*|eta|*(|z|^2+|w|^2), g=z*u_L+w*v_L.    (17)

For `|eta|<=1/250000000`, the exact rational strict comparison

    1/50000-2150/250000000 > 1/100000

combines (16) and (17) to give

    Q_(zeta,L)(z*u_(L,eta)+w*v_(L,eta))
       >= (1/100000)(|z|^2+|w|^2)
       for 1/12<=L<=log1024, |eta|<=1/250000000.  (18)

For `0<L<=1/12`, inequality (7) applies to **all** supported tests and
therefore also to these modulated endpoints for every real `eta`.
It follows that the full complex endpoint span has strictly positive
original arithmetic form for **all `0<L<=log1024`**, whenever
`|eta|<=1/250000000`. No uniform coefficient-norm positive gap is
claimed as `L->0`; the physical Gram matrix degenerates there.

## 6. Reproduction, falsification and scope

Run, with the already published sibling file unchanged:

    python3 WeilShortWindowBridgeCertificate.py

At the inspected base, the sibling's Git blob is
`d39cc1c0abcffb8a6380117aab646d93f7f61678` and its
SHA-256 is
`a95000dce5389c7d33b672e9dc2dff8261ac31fb04fbe02b58d90e9654f63581`.
Its complete finite arithmetic source (198 prime-power inventory, both
poles, gamma, normalization) remains in the owning canonical tree.
The new script checks the sibling hash at run time, the rational
full-test constant, the `t=1/2` endpoint regression, the exact continuous
cover, and the modulation-margin arithmetic. No binary floating point
sign decisions are performed. No zero sampling, interval Gaussian
elimination, or inverse of an ill-conditioned matrix is needed.

The following hostile checks are retained:

- The negative pole eigenvalue is **not** discarded in zeta (9); using
  only the positive pole orientation would be invalid.
- In short windows `P=0` for **every** primitive character, but the
  conductor and gamma parity remain and were treated separately.
- At `L=log2`, the newly active `n=2` overlap is exactly zero;
  the continuum certificate and WED1024 agree there.
- The endpoints are in the logarithmic form domain even though their
  zero extensions have boundary jumps. No global `H^1` membership
  is needed by (7) or (15).
- For `L->0`, the endpoint antisymmetric Gram eigenvalue tends to zero;
  no coefficient-gap bound uniform down to zero is inferred from (7).
- At `L=log512`, the prior certificate finds the actual **negative**
  mixed entry `B(L)<0`; no assumption `B>=0` was used in (15)--(18).
- The conductor-one pole and possible real exceptional Dirichlet zero
  are not represented by artificial positive spectral squares.
- A finite support interval, however many exact continuum cells it has,
  cannot supply positivity for all `L>0`. The complete
  infinite-dimensional complement for larger windows remains unresolved.

**Prior art:** Yoshida's local Weil-positivity studies and Bombieri,
*Remarks on Weil's quadratic functional in the theory of prime numbers, I*,
Rend. Lincei (2000), §§1--3, establish the classical small-window direction.
[WeilGammaPhaseCoercivity.md](WeilGammaPhaseCoercivity.md) provides the
source-local gamma-domain and boundary split, while WED1024 supplies the
full arithmetic endpoint formulas and the prior finite certificate.
The exact constants `1/12`, `1/200`, `2/3` and the interval bridging
`[log(13/12),log2]` are local explicit consequences; novelty is NOT claimed.

The RH/primitive GRH target is unchanged:

    zeta(rho)=0, 0<Re(rho)<1 => Re(rho)=1/2,
    forall primitive chi, L(rho,chi)=0, 0<Re(rho)<1 => Re(rho)=1/2.

The unresolved premises are the **all-window** signed arithmetic lower
bound for each character, the zeta mixed endpoint sign past the certified
finite region, the entire form-domain complement and its couplings,
and the exact formal `hpositive` supplier to the canonical target.
Source publication, decimal output or a passing finite certificate does
not discharge those premises. Formal checks and independent review remain
NOT_RUN; originality remains UNASSESSED.
